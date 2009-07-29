# -*- python -*-
# $Id: SConscript,v 1.11 2009/07/16 00:33:41 glastrm Exp $
# Authors: James Chiang <jchiang@slac.stanford.edu>
# Version: pgwave-01-02-00

Import('baseEnv')
Import('listFiles')
progEnv = baseEnv.Clone()
libEnv = baseEnv.Clone()

libEnv.Tool('pgwaveLib', depsOnly = 1)
pgwaveLib = libEnv.StaticLibrary('pgwave', listFiles(['src/*.cpp']))

progEnv.Tool('pgwaveLib')
pgwave2D = progEnv.Program('pgwave2D', listFiles(['src/app/*.cpp']))

progEnv.Tool('registerTargets', package = 'pgwave',
             staticLibraryCxts = [[pgwaveLib, libEnv]],
             testAppCxts = [[pgwave2D, progEnv]],
             includes = listFiles(['pgwave/*.h']),
             data = listFiles(['data/*'], recursive = True))