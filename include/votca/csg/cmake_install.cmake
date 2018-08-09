# Install script for directory: /u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/votca/csg" TYPE FILE FILES
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/bead.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/beadlist.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/beadpair.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/beadtriple.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/beadtype.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/boundarycondition.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/cgengine.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/cgmoleculedef.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/cgobserver.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/csgapplication.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/exclusionlist.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/fileformatfactory.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/imcio.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/interaction.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/map.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/molecule.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/nblist.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/nblistgrid.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/nematicorder.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/openbox.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/orthorhombicbox.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/pairlist.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunction.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctioncbspl.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctionlj126.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctionljg.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/residue.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/topology.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/topologyitem.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/topologymap.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/topologyreader.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/trajectoryreader.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/trajectorywriter.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/triclinicbox.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/triplelist.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/version.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunction.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctioncbspl.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctionlj126.h"
    "/u/sciteam/moradzad/bin/votca/src/csg/include/votca/csg/potentialfunctions/potentialfunctionljg.h"
    )
endif()

