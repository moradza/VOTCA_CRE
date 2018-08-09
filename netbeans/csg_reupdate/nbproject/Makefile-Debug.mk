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
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/715944016/csg_reupdate.o \
	${OBJECTDIR}/_ext/312014500/potentialfunctioncbspl.o \
	${OBJECTDIR}/_ext/312014500/potentialfunction.o \
	${OBJECTDIR}/_ext/312014500/potentialfunctionlj126.o \
	${OBJECTDIR}/_ext/312014500/potentialfunctionljg.o


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
LDLIBSOPTIONS=../libcsg/../../src/libcsg/libcsg.a ../../../tools/netbeans/libtools/../../src/libtools/libtools.a -lboost_program_options -lgmx -lexpat -lgsl -lgslcblas -lm -lpthread

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate: ../libcsg/../../src/libcsg/libcsg.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate: ../../../tools/netbeans/libtools/../../src/libtools/libtools.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/715944016/csg_reupdate.o: ../../src/tools/csg_reupdate.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/715944016
	${RM} $@.d
	$(COMPILE.cc) -g -I../../include -I../../../tools/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/715944016/csg_reupdate.o ../../src/tools/csg_reupdate.cc

${OBJECTDIR}/_ext/312014500/potentialfunctioncbspl.o: ../../src/tools/potentialfunctions/potentialfunctioncbspl.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/312014500
	${RM} $@.d
	$(COMPILE.cc) -g -I../../include -I../../../tools/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/312014500/potentialfunctioncbspl.o ../../src/tools/potentialfunctions/potentialfunctioncbspl.cc

${OBJECTDIR}/_ext/312014500/potentialfunction.o: ../../src/tools/potentialfunctions/potentialfunction.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/312014500
	${RM} $@.d
	$(COMPILE.cc) -g -I../../include -I../../../tools/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/312014500/potentialfunction.o ../../src/tools/potentialfunctions/potentialfunction.cc

${OBJECTDIR}/_ext/312014500/potentialfunctionlj126.o: ../../src/tools/potentialfunctions/potentialfunctionlj126.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/312014500
	${RM} $@.d
	$(COMPILE.cc) -g -I../../include -I../../../tools/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/312014500/potentialfunctionlj126.o ../../src/tools/potentialfunctions/potentialfunctionlj126.cc

${OBJECTDIR}/_ext/312014500/potentialfunctionljg.o: ../../src/tools/potentialfunctions/potentialfunctionljg.cc 
	${MKDIR} -p ${OBJECTDIR}/_ext/312014500
	${RM} $@.d
	$(COMPILE.cc) -g -I../../include -I../../../tools/include -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/312014500/potentialfunctionljg.o ../../src/tools/potentialfunctions/potentialfunctionljg.cc

# Subprojects
.build-subprojects:
	cd ../libcsg && ${MAKE}  -f Makefile_nb CONF=Debug
	cd ../../../tools/netbeans/libtools && ${MAKE}  -f Makefile_nb CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/csg_reupdate

# Subprojects
.clean-subprojects:
	cd ../libcsg && ${MAKE}  -f Makefile_nb CONF=Debug clean
	cd ../../../tools/netbeans/libtools && ${MAKE}  -f Makefile_nb CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
