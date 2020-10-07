#!/bin/bash

TARGET_DIR=ubuntu

./$TARGET_DIR/linkDotFiles.sh
./$TARGET_DIR/updateVim.sh
./$TARGET_DIR/installZsh.sh
./$TARGET_DIR/installNvm.sh
./$TARGET_DIR/installPlug.sh
