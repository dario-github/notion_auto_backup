MYDIR=`dirname $0`
cd $MYDIR
export PYTHONPATH=$MYDIR
GFOLDID='1l-VJt0Yj8rZDmZqY1ZED0isuBj3A1rxv'

/usr/bin/python3.8 -m poetry run python main.py --config .config_file.json && \
mv build/*.zip .notion_backup/notion_backup_lastest.zip && \
/root/go/bin/gdrive files upload --parent $GFOLDID .notion_backup && \
rm -rf build/*
