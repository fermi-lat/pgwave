if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/slac/g/glast/applications/CMT/v1r18p20061003
endif
source ${CMTROOT}/mgr/setup.csh
set tempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set tempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt cleanup -csh -pack=pgwave -version=v1 -path=/a/sulky36/g.glast.u33/tosti/myPgwave $* >${tempfile}; source ${tempfile}
/bin/rm -f ${tempfile}
