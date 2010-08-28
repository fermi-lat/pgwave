# -*- python -*-
# $Id: SConscript,v 1.5 2010/02/22 23:09:02 jrb Exp $
# Authors: James Chiang <jchiang@slac.stanford.edu>
# Version: pgwave-01-02-02

Import('baseEnv')
Import('listFiles')
progEnv = baseEnv.Clone()
libEnv = baseEnv.Clone()

pgwaveLib = libEnv.StaticLibrary('pgwave', listFiles(['src/*.cpp']))

progEnv.Tool('pgwaveLib')
pgwave2D = progEnv.Program('pgwave2D', listFiles(['src/app/*.cpp']))

progEnv.Tool('registerTargets', package = 'pgwave',
             staticLibraryCxts = [[pgwaveLib, libEnv]],
             binaryCxts = [[pgwave2D, progEnv]],
             includes = listFiles(['pgwave/*.h']),
             data = listFiles(['data/*'], recursive = True),
             pfiles = ['pfiles/pgwave2D.par'])
