if [ "$#" -ne 1 ]; then
    echo "Usage: ./rsync_data.sh [SOURCE_PATH]"
    exit 1
fi

SOURCE_PATH=$1

rsync -avP $SOURCE_PATH guest@neurohost:/mnt/data/andrii
