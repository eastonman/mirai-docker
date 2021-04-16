#!/bin/bash

# Read MIRAI_QQ_ACCOUNT and MIRAI_QQ_PASSWORD MIRAI_PASSWORD_KIND
if [ -z ${MIRAI_PASSWORD_KIND} ]; then
    echo "autoLogin add ${MIRAI_QQ_ACCOUNT} ${MIRAI_QQ_PASSWORD}\nautoLogin setConfig ${MIRAI_QQ_ACCOUNT} protocol ${MIRAI_PASSWORD_KIND} " | ./mcl
else
    echo "autoLogin add ${MIRAI_QQ_ACCOUNT} ${MIRAI_QQ_PASSWORD}" | ./mcl
fi