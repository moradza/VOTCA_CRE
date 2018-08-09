# Install script for directory: /u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/u/sciteam/moradzad/bin/votca")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/votca/scripts/inverse" TYPE FILE FILES
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/csg_table"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/CsgFunctions.pm"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/CsgSimplex.pm"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/linsolve.m"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/imcdata_from_blocks.octave"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/linsolve.octave"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/votca/scripts/inverse" TYPE PROGRAM FILES
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/add_pot_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/calc_density_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/calc_kbint.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/calc_pressure_gromacs.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/calc_rdf_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/calc_target_rdf_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/clean_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/convergence_check_default.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/dummy.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/functions_common.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/functions_dlpoly.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/functions_genericsim.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/functions_gromacs.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/imc_purify.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/imc_stat_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/initialize_step_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/initialize_step_genericsim.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/initialize_step_optimizer.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/initialize_step_re.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/inverse.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_parameters_to_potential.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_prepare_state.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_state_to_mapping.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_state_to_potentials.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_target_density.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_target_pressure.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/optimizer_target_rdf.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/post_add.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/post_add_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/post_update_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/post_update_generic_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/post_update_re_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_acc_convergence.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_average.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_compress.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_convergence.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_copyback.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_dummy.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_overwrite.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_plot.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postadd_shift.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_addlj.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_cibi_correction.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_extrapolate.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_kbibi_correction.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_pressure.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_scale.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_smooth.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/postupd_splinesmooth.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_extrapolate.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_to_dlpoly.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_to_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_to_gromacs.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_to_lammps.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potentials_to_dlpoly.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potentials_to_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/pre_update_re.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_generic.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_generic_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_ibm.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_imc.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_optimizer.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_optimizer_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/prepare_re.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/resample_target.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/run_genericsim.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/run_gromacs.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/skeleton.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/solve_matlab.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/solve_numpy.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/solve_octave.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/start_framework.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_average.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_change_flag.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_dummy.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_functional.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/tag_file.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_ibi.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_ibi_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_ibm.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_imc.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_optimizer.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_optimizer_single.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_re.sh"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/add_POT.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/dist_adjust.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/dist_boltzmann_invert.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/dpot_crop.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/kbibi_ramp_correction.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/lj_126.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/merge_tables.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/potential_shift.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/pressure_cor_simple.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/pressure_cor_wjk.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/simplex_downhill_processor.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/skeleton.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_combine.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_extrapolate.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_get_value.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_integrate.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_linearop.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_scale.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_smooth.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_switch_border.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_to_tab.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_to_xvg.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/tables_jackknife.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/update_ibi_pot.pl"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/cma.py"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/cma_processor.py"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/configuration_compare.py"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/linsolve.py"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_getsubset.py"
    "/u/sciteam/moradzad/bin/votca/src/csg/share/scripts/inverse/table_smooth_borders.py"
    )
endif()

