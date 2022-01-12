MYDIR=`dirname $0`
cd $MYDIR
export PYTHONPATH=$MYDIR
GFOLDID='1l-VJt0Yj8rZDmZqY1ZED0isuBj3A1rxv'

python -m poetry run python main.py --config .config_file.json && \
mv build/*.zip .notion_backup/notion_backup_lastest.zip && \
/root/go/bin/gdrive sync upload .notion_backup $GFOLDID && \
rm -rf build/*