# echo "Setting pgwave v0r0p0 in /afs/slac.stanford.edu/u/gl/tosti"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/slac.stanford.edu/g/glast/applications/CMT/v1r16p20040701; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh

tempfile=`${CMTROOT}/mgr/cmt build temporary_name -quiet`
if test ! $? = 0 ; then tempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt -quiet setup -sh -pack=pgwave -version=v0r0p0 -path=/afs/slac.stanford.edu/u/gl/tosti  $* >${tempfile}; . ${tempfile}
/bin/rm -f ${tempfile}

