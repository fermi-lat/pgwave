#$Id: pgwaveLib.py,v 1.3 2008/02/26 03:15:14 glastrm Exp $
def generate(env, **kw):
    if not kw.get('depsOnly',0):
        env.Tool('addLibrary', library=['pgwave'])
    env.Tool('astroLib')
    env.Tool('st_appLib')
    env.Tool('hoopsLib')
    env.Tool('addLibrary', library=env['cfitsioLibs'])
    env.Tool('addLibrary', library=env['fftwLibs'])

def exists(env):
    return 1;
