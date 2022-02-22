#!/bin/sh
# Author: deimo

cd ..

if [ -d 'deploy/' ]; then
    echo "Error: Directory 'deploy/' is exists."
    exit 1
fi

cp -r deploy.template deploy
cd deploy/
rm -rf genconf.sh
mv template.supervisor.conf yn12348_server.conf
mv template.uwsgi.ini uwsgi.ini
mv template_async_tasks.conf yn12348_async_tasks.conf

exit 0

