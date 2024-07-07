#!/bin/bash

# Đường dẫn tới file ~/.bash_profile
BASH_PROFILE="$HOME/.bash_profile"

# Tạo một bản sao lưu của ~/.bash_profile trước khi chỉnh sửa
cp "$BASH_PROFILE" "${BASH_PROFILE}.backup"

# Các biến môi trường cần xóa
VARS_TO_REMOVE=(
    "ENR_ADDRESS"
    "BLOCKCHAIN_RPC_ENDPOINT"
    "LOG_CONTRACT_ADDRESS"
    "MINE_CONTRACT_ADDRESS"
    "ZGS_LOG_SYNC_BLOCK"
    "NETWORK_BOOT_NODES"
    "ZGS_HOM"
)

# Xóa các dòng liên quan đến các biến môi trường từ ~/.bash_profile
for VAR in "${VARS_TO_REMOVE[@]}"; do
    sed -i "/export $VAR/d" "$B
