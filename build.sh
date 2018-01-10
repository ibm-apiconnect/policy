#!/bin/bash

# Copyright 2018  IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function die {
    echo  $1, BUILD FAILED.
    exit 1
}

SRC=$(dirname "$1")
BUILD="build"

rm -rf $SRC/$BUILD
mkdir -p $SRC/$BUILD/implementation \
    || die "Output directory structure could not be created"

cp $SRC/$SRC.yaml $SRC/$BUILD/ \
    || die "Missing definitions file called \"$SRC.yaml\""

( cd $SRC/implementation \
    && zip -r ../$BUILD/implementation/$SRC-main.zip * \
    || die "Hit an unexpected problem creating the implementation zip file" )

( cd $SRC/$BUILD \
    && zip -r ../$SRC.zip * || die "An error occured during compression" )

rm -rf $SRC/$BUILD
echo "Successfully built $SRC.zip"
