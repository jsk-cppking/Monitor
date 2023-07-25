#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

QT5_PREFIX="/usr/local/qt5"
PKG_NAME="Qt-5.12.9-linux-arm64.bin.tar.gz"
VERSION="5.12.9"

tar xzf "${PKG_NAME}" -C /usr/local
ln -sfnv "Qt-${VERSION}" "${QT5_PREFIX}"

echo "${QT5_PREFIX}/lib" > /etc/ld.so.conf.d/qt.conf
ldconfig

__mytext="""
export QT5_PATH=\"${QT5_PREFIX}\"
export QT_QPA_PLATFORM_PLUGIN_PATH=\"\${QT5_PATH}/plugins\"
add_to_path \"\${QT5_PATH}/bin\"
"""

# monitor
# sudo apt-get update
# sudo apt-get install ubuntu-desktop
# ssh-keygen -t rsa -C "jiangsikaii@163.com"
# git clone git@github.com:superxiaobai-1/private-node.git
# curl -fsSL https://test.docker.com -o test-docker.sh
# sudo sh test-docker.sh
# sudo apt-get install build-essential
# sudo apt-get install cmake
# sudo add-apt-repository ppa:ubuntu-toolchain-r/test
# sudo apt-get install gcc-11 g++-11
# cd /usr/bin/
# ls -l gcc*
# sudo rm gcc
# sudo ln -s /usr/bin/gcc-11 gcc

# https://security.feishu.cn/link/safety?target=https%3A%2F%2Fdownload.qt.io%2Farchive%2Fqt%2F5.12%2F5.12.9%2Fqt-opensource-linux-x64-5.12.9.run&scene=ccm&logParams=%7B%22location%22%3A%22ccm_default%22%7D&lang=zh-CN
