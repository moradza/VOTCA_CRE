#! /bin/bash
#
# Copyright 2009-2011 The VOTCA Development Team (http://www.votca.org)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if [[ $1 = "--help" ]]; then
cat <<EOF
${0##*/}, version %version%
This script implements the pressure update

Usage: ${0##*/} infile outfile
EOF
   exit 0
fi

[[ -z $1 || -z $2 ]] && die "${0##*/}: Missing arguments"

[[ -f $2 ]] && die "${0##*/}: $2 is already there"

step_nr="$(get_current_step_nr)"
sim_prog="$(csg_get_property cg.inverse.program)"
[[ $sim_prog != gromacs ]] && die "${0##*/}: pressure correction for ${sim_prog} is not implemented yet!"

name=$(csg_get_interaction_property name)
min=$(csg_get_interaction_property min)
max=$(csg_get_interaction_property max)
step=$(csg_get_interaction_property step)

p_file="${name}.pressure"
do_external pressure "$sim_prog" "$p_file"
p_now="$(sed -n 's/^Pressure=\(.*\)/\1/p' "$p_file")" || die "${0##*/}: sed of Pressure failed"
[[ -z $p_now ]] && die "${0##*/}: Could not get pressure from simulation"
echo "New pressure $p_now"

ptype="$(csg_get_interaction_property inverse.post_update_options.pressure.type)"
pscheme=( $(csg_get_interaction_property inverse.post_update_options.pressure.do) )
pscheme_nr=$(( ( $step_nr - 1 ) % ${#pscheme[@]} ))

if [[ ${pscheme[$pscheme_nr]} = 1 ]]; then
   echo "Apply ${ptype} pressure correction for interaction ${name}"
   # wjk needs rdf
   if [[ ! -f ${name}.dist.new && $ptype = wjk ]]; then
     do_external rdf $(csg_get_property cg.inverse.program)
   fi
   do_external pressure_cor $ptype $p_now ${name}.pressure_correction
   comment="$(get_table_comment ${name}.pressure_correction)"
   tmpfile=$(critical mktemp ${name}.pressure_correction_cut.XXX)
   critical csg_resample --in ${name}.pressure_correction --out ${tmpfile} --grid $min:$step:$max --comment "$comment"
   do_external table add "$1" ${tmpfile} "$2"
else
   echo "NO pressure correction for interaction ${name}"
   do_external postupd dummy "$1" "$2"
fi
