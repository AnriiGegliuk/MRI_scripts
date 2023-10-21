if [ "$#" -ne 1 ]; then
    echo "Usage: ./dynamic_rsync.sh [SOURCE_PATH]"
    exit 1
fi

SOURCE_PATH=$1

rsync -avP $SOURCE_PATH guest@neurohost:/mnt/data/andrii
