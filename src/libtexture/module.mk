# Template for the makefile for an individual src/* directory.
# Fill in the blanks below.

# License and copyright goes here

# Name of the binary or library whose source is in this directory.
# Do NOT include .exe or any other suffix.
local_name := libtexture

# Name of all source files in this directory
local_src := imagecache.cpp texoptions.cpp texturesys.cpp

# Extra static libs needed to compile this binary (leave blank if this
# module is not for a binary executable)
local_libs := 

# Extra objects from other libs we need to compile this library 
local_extra_objs := 

# Extra shared libs needed to compile this binary (leave blank if this
# module is not for a binary executable)
local_shlibs := libOpenImageIO

# ld flags needed for this library
ifeq (${platform},macosx)
# Only OSX appears to need to link a dynamic lib against static libs
# that they will call
local_ldflags := ${LINK_ILMBASE} ${LINK_BOOST}
endif


## Include ONE of the includes below, depending on whether this module
## constructs a binary executable, a static library, or a shared library
## (DLL).

#include ${src_make_dir}/bin.mk
#include ${src_make_dir}/lib.mk
include ${src_make_dir}/shlib.mk
