zipcode=$1
curl http://zip.cgis.biz/xml/zip.php?zn=${zipcode} | nkf -wLu | hxselect value -s '\n' 
