rem if via FTP/WinSCP from Windows, then files are always created in windows-1251. 
rem You can recode them using this command executed in the SSH console:

cd ~/http && for FN in `find . -type f`; do NEW_FN=`echo $FN | iconv -f cp1251 -t utf8`; if [ "${FN}" != "${NEW_FN}" ]; then mv ${FN} ${NEW_FN}; fi; done