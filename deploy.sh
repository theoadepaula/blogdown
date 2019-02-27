#!/bin/sh
# deploy.sh
set -e

# deploy fazendo upload via ftp, utilizando o git-ftp para isso
lftp -c "set net:timeout 5; set ftp:ssl-allow no; open ftp://$FTP_USER:$FTP_PASS@$FTP_HOST:21; mirror -Rv public .; quit;"
