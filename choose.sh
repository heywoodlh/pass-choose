#!/usr/bin/env bash

if [[ -z $PASSWORD_STORE_DIR ]]
then
    PASSWORD_STORE_DIR="~/.password-store"
fi
cd $PASSWORD_STORE_DIR 

if [[ $1 == 'totp' ]]
then
    type="totp"
else
    type="password"
fi

selection="$(find -L . -name '*.gpg' | sed -e 's/.\///' -e 's/.gpg//' | choose)"

if [ ${type} == "totp" ]
then
    echo -n $(pass otp ${selection}) | pbcopy
else
    echo -n $(pass ${selection} | head -1) | pbcopy
fi
