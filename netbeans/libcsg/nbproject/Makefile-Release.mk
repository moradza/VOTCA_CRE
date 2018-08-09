#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile_nb

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/484457853/beadlist.o \
	${OBJECTDIR}/_ext/484457853/boundarycondition.o \
	${OBJECTDIR}/_ext/484457853/cgengine.o \
	${OBJECTDIR}/_ext/484457853/cgmoleculedef.o \
	${OBJECTDIR}/_ext/484457853/csgapplication.o \
	${OBJECTDIR}/_ext/484457853/exclusionlist.o \
	${OBJECTDIR}/_ext/484457853/imcio.o \
	${OBJECTDIR}/_ext/484457853/map.o \
	${OBJECTDIR}/_ext/1332856960/esptopologyreader.o \
	${OBJECTDIR}/_ext/1332856960/esptrajectoryreader.o \
	${OBJECTDIR}/_ext/1332856960/gmx_print_version.o \
	${OBJECTDIR}/_ext/1332856960/gmx_version_check.o \
	${OBJECTDIR}/_ext/1332856960/gmx_version_nb.o \
	${OBJECTDIR}/_ext/1332856960/gmxtopologyreader.o \
	${OBJECTDIR}/_ext/1332856960/gmxtrajectoryreader.o \
	${OBJECTDIR}/_ext/1332856960/gmxtrajectorywriter.o \
	${OBJECTDIR}/_ext/1332856960/grotopologyreader.o \
	${OBJECTDIR}/_ext/1332856960/growriter.o \
	${OBJECTDIR}/_ext/1332856960/lammpsreader.o \
	${OBJECTDIR}/_ext/1332856960/pdbtopologyreader.o \
	${OBJECTDIR}/_ext/1332856960/pdbwriter.o \
	${OBJECTDIR}/_ext/1332856960/xmltopologyreader.o \
	${OBJECTDIR}/_ext/1332856960/xyzreader.o \
	${OBJECTDIR}/_ext/1332856960/xyzwriter.o \
	${OBJECTDIR}/_ext/484457853/molecule.o \
	${OBJECTDIR}/_ext/484457853/nblist.o \
	${OBJECTDIR}/_ext/484457853/nblistgrid.o \
	${OBJECTDIR}/_ext/484457853/nematicorder.o \
	${OBJECTDIR}/_ext/484457853/openbox.o \
	${OBJECTDIR}/_ext/484457853/orthorhombicbox.o \
	${OBJECTDIR}/_ext/484457853/topology.o \
	${OBJECTDIR}/_ext/484457853/topologymap.o \
	${OBJECTDIR}/_ext/484457853/topologyreader.o \
	${OBJECTDIR}/_ext/484457853/trajectoryreader.o \
	${OBJECTDIR}/_ext/484457853/trajectorywriter.o \
	${OBJECTDIR}/_ext/484457853/triclinicbox.o \
	${OBJECTDIR}/_ext/484457853/version_nb.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/libcsg.a

../../src/libcsg/libcsg.a: ${OBJECTFILES}
	${MKDIR} -p ../../src/libcsg
	${RM} ../../src/libcsg/libcsg.a
	${AR} -rv ../../src/libcsg/libcsg.a ${OBJECTFILES} 
	$(RANLIB) ../../src/libcsg/libcsg.a

${OBJECTDIR}/_ext/484457853/beadlist.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/beadlist.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/beadlist.o ../../src/libcsg/beadlist.cc

${OBJECTDIR}/_ext/484457853/boundarycondition.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/boundarycondition.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/boundarycondition.o ../../src/libcsg/boundarycondition.cc

${OBJECTDIR}/_ext/484457853/cgengine.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/cgengine.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/cgengine.o ../../src/libcsg/cgengine.cc

${OBJECTDIR}/_ext/484457853/cgmoleculedef.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/cgmoleculedef.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/cgmoleculedef.o ../../src/libcsg/cgmoleculedef.cc

${OBJECTDIR}/_ext/484457853/csgapplication.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/csgapplication.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/csgapplication.o ../../src/libcsg/csgapplication.cc

${OBJECTDIR}/_ext/484457853/exclusionlist.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/exclusionlist.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/exclusionlist.o ../../src/libcsg/exclusionlist.cc

${OBJECTDIR}/_ext/484457853/imcio.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/imcio.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/imcio.o ../../src/libcsg/imcio.cc

${OBJECTDIR}/_ext/484457853/map.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/map.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/map.o ../../src/libcsg/map.cc

${OBJECTDIR}/_ext/1332856960/esptopologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/esptopologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/esptopologyreader.o ../../src/libcsg/modules/io/esptopologyreader.cc

${OBJECTDIR}/_ext/1332856960/esptrajectoryreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/esptrajectoryreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/esptrajectoryreader.o ../../src/libcsg/modules/io/esptrajectoryreader.cc

${OBJECTDIR}/_ext/1332856960/gmx_print_version.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmx_print_version.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmx_print_version.o ../../src/libcsg/modules/io/gmx_print_version.cc

${OBJECTDIR}/_ext/1332856960/gmx_version_check.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmx_version_check.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmx_version_check.o ../../src/libcsg/modules/io/gmx_version_check.cc

${OBJECTDIR}/_ext/1332856960/gmx_version_nb.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmx_version_nb.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmx_version_nb.o ../../src/libcsg/modules/io/gmx_version_nb.cc

${OBJECTDIR}/_ext/1332856960/gmxtopologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmxtopologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmxtopologyreader.o ../../src/libcsg/modules/io/gmxtopologyreader.cc

${OBJECTDIR}/_ext/1332856960/gmxtrajectoryreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmxtrajectoryreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmxtrajectoryreader.o ../../src/libcsg/modules/io/gmxtrajectoryreader.cc

${OBJECTDIR}/_ext/1332856960/gmxtrajectorywriter.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/gmxtrajectorywriter.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/gmxtrajectorywriter.o ../../src/libcsg/modules/io/gmxtrajectorywriter.cc

${OBJECTDIR}/_ext/1332856960/grotopologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/grotopologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/grotopologyreader.o ../../src/libcsg/modules/io/grotopologyreader.cc

${OBJECTDIR}/_ext/1332856960/growriter.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/growriter.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/growriter.o ../../src/libcsg/modules/io/growriter.cc

${OBJECTDIR}/_ext/1332856960/lammpsreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/lammpsreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/lammpsreader.o ../../src/libcsg/modules/io/lammpsreader.cc

${OBJECTDIR}/_ext/1332856960/pdbtopologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/pdbtopologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/pdbtopologyreader.o ../../src/libcsg/modules/io/pdbtopologyreader.cc

${OBJECTDIR}/_ext/1332856960/pdbwriter.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/pdbwriter.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/pdbwriter.o ../../src/libcsg/modules/io/pdbwriter.cc

${OBJECTDIR}/_ext/1332856960/xmltopologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/xmltopologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/xmltopologyreader.o ../../src/libcsg/modules/io/xmltopologyreader.cc

${OBJECTDIR}/_ext/1332856960/xyzreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/xyzreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/xyzreader.o ../../src/libcsg/modules/io/xyzreader.cc

${OBJECTDIR}/_ext/1332856960/xyzwriter.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/modules/io/xyzwriter.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/1332856960
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1332856960/xyzwriter.o ../../src/libcsg/modules/io/xyzwriter.cc

${OBJECTDIR}/_ext/484457853/molecule.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/molecule.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/molecule.o ../../src/libcsg/molecule.cc

${OBJECTDIR}/_ext/484457853/nblist.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/nblist.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/nblist.o ../../src/libcsg/nblist.cc

${OBJECTDIR}/_ext/484457853/nblistgrid.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/nblistgrid.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/nblistgrid.o ../../src/libcsg/nblistgrid.cc

${OBJECTDIR}/_ext/484457853/nematicorder.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/nematicorder.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/nematicorder.o ../../src/libcsg/nematicorder.cc

${OBJECTDIR}/_ext/484457853/openbox.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/openbox.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/openbox.o ../../src/libcsg/openbox.cc

${OBJECTDIR}/_ext/484457853/orthorhombicbox.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/orthorhombicbox.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/orthorhombicbox.o ../../src/libcsg/orthorhombicbox.cc

${OBJECTDIR}/_ext/484457853/topology.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/topology.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/topology.o ../../src/libcsg/topology.cc

${OBJECTDIR}/_ext/484457853/topologymap.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/topologymap.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/topologymap.o ../../src/libcsg/topologymap.cc

${OBJECTDIR}/_ext/484457853/topologyreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/topologyreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/topologyreader.o ../../src/libcsg/topologyreader.cc

${OBJECTDIR}/_ext/484457853/trajectoryreader.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/trajectoryreader.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/trajectoryreader.o ../../src/libcsg/trajectoryreader.cc

${OBJECTDIR}/_ext/484457853/trajectorywriter.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/trajectorywriter.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/trajectorywriter.o ../../src/libcsg/trajectorywriter.cc

${OBJECTDIR}/_ext/484457853/triclinicbox.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/triclinicbox.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/triclinicbox.o ../../src/libcsg/triclinicbox.cc

${OBJECTDIR}/_ext/484457853/version_nb.o: nbproject/Makefile-${CND_CONF}.mk ../../src/libcsg/version_nb.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/484457853
	${RM} $@.d
	$(COMPILE.cc) -O3 -I../../include -I../../../include -I/usr/include/libxml2 -I../../../../../ruehle/gmx/include/gromacs -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/484457853/version_nb.o ../../src/libcsg/version_nb.cc

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ../../src/libcsg/libcsg.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
