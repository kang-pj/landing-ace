#!/bin/bash

ftp -n shesy11.cafe24.com <<EOF
user shesy11 Rkdwnl24((
binary
cd www
put target/ROOT.war
bye
EOF

echo "ROOT.war 업로드 완료!"
