#!/bin/bash

# this will sync my saved changes back to the server (where docker will detect the changes)
gsyncpush() {
    # if my .gsync file exists, lets load it
    if  [ -f ./.gsync ]; then
        export $(grep -v '^#' .gsync | xargs)
    else
        return 1;
    fi

    currentdir=${PWD##*/}

    # check that its set
    if [ -z "$SYNC_REMOTE_HOST" ]; then
        return 1
    fi
    if [ -z "$SYNC_REMOTE_DIR" ]; then
        return 1
    fi
    if [ -z "$SYNC_REMOTE_PATH" ]; then
        return 1
    fi

    # check that our current dir matches the remote
    if [ $currentdir = $SYNC_REMOTE_DIR ]; then
        fullpath="$SYNC_REMOTE_HOST:$SYNC_REMOTE_PATH/$SYNC_REMOTE_DIR/"
        echo "about to sync to: $fullpath"
        echo " "

        # -c - use checksum instead of size/time
        # -a - archive (preserve attrributes?)
        # -z - compress (zip?)
        # -P - (same as --partial --progress), keep partial files / show progress
        rsync -cazP \
            --exclude '.gsync' \
            --exclude '.DS_Store' \
            --exclude 'node_modules/' \
            --exclude '.next/' \
            --exclude 'tmp/' \
            --exclude 'public/' \
            --exclude '.git/' \
            --exclude '.vscode/' \
            --exclude 'vendor/' \
            --exclude 'storage/' \
            ./ $fullpath

        if [ $? -eq 0 ]; then
            echo " "
            echo "rsync completed successfully!"
        else
            echo " "
            echo "rsync failed, retrying!"
            gsyncpush
        fi
    else
        echo "$currentdir and $SYNC_REMOTE_DIR dont match...";
    fi

}


if  [ -f ./.gsync ]; then
    # Monitor the ./app directory for changes
    echo "monitoring $PWD for changes..."
    fswatch -o ./ | while read; do
        gsyncpush
    done
else
    echo "no .gsync file found, exiting..."
    return 1;
fi
