#!/bin/bash

SRC=/home/sanish/AESD/final-project/assignment-8-sanishkharade/buildroot/output/images/

DESTINATION=/media/sf_Virtual_Box_Shared_Folder/sdcard/

FILE_TO_COPY=sdcard.img

echo -e "Deleting existing image at ${DESTINATION} \n"

rm ${DESTINATION}${FILE_TO_COPY}

echo -e "Copying ${FILE_TO_COPY} from ${SRC} to ${DESTINATION} \n"
cp ${SRC}${FILE_TO_COPY} ${DESTINATION}


#echo "cp ${SRC}${FILE_TO_COPY} ${DESTINATION}"

echo -e "Contents of ${DESTINATION} \n"
ls -l --full-time ${DESTINATION}