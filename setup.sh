#! /usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

readarray mappings < <(yq e -o=j -I=0 '.[]' mappings.yaml)

for mapping in "${mappings[@]}"; do
    SRC=$SCRIPT_DIR/$(echo $mapping | yq e '.src')
    DEST=$HOME/$(echo $mapping | yq e '.dest')
    echo "Creating symlink from '${SRC}' to '${DEST}'"
    ln -sf $SRC $DEST
done
 
