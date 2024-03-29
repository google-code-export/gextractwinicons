#!/bin/bash
for file in *.po;
do (
  filemo=$(basename $file .po)
  if [ -d $filemo ];
    then rm -r $filemo
  fi
  mkdir -p $filemo/LC_MESSAGES
  msgfmt --output-file=$filemo/LC_MESSAGES/gextractwinicons.mo $file
)
done
