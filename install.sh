#!/bin/sh
#
# File: install.sh
#

install_ipopt() {
  mkdir -p "$1"
  cd "$1"
  wget --quiet https://github.com/JuliaOpt/IpoptBuilder/releases/download/v3.12.10-1-static/IpoptBuilder.v3.12.10.x86_64-linux-gnu-gcc7.tar.gz
  tar xf IpoptBuilder.v3.12.10.x86_64-linux-gnu-gcc7.tar.gz
  wget --quiet https://github.com/JuliaOpt/ASLBuilder/releases/download/v3.1.0-gcc/ASLBuilder.v3.1.0.x86_64-linux-gnu-gcc7.tar.gz
  tar xf ASLBuilder.v3.1.0.x86_64-linux-gnu-gcc7.tar.gz
  wget https://github.com/JuliaOpt/COINBLASBuilder/releases/download/v1.4.6-1/COINBLASBuilder.v1.4.6.x86_64-linux-gnu-gcc7.tar.gz
  tar xf COINBLASBuilder.v1.4.6.x86_64-linux-gnu-gcc7.tar.gz
  wget https://github.com/JuliaOpt/COINLapackBuilder/releases/download/v1.5.6-1/COINLapackBuilder.v1.5.6.x86_64-linux-gnu-gcc7.tar.gz
  tar xf COINLapackBuilder.v1.5.6.x86_64-linux-gnu-gcc7.tar.gz
  wget https://github.com/JuliaOpt/COINMetisBuilder/releases/download/v1.3.5-1/COINMetisBuilder.v1.3.5.x86_64-linux-gnu.tar.gz
  tar xf COINMetisBuilder.v1.3.5.x86_64-linux-gnu.tar.gz
  wget https://github.com/JuliaOpt/COINMumpsBuilder/releases/download/v1.6.0-1-static/COINMumpsBuilder.v1.6.0.x86_64-linux-gnu-gcc7.tar.gz
  tar xf COINMumpsBuilder.v1.6.0.x86_64-linux-gnu-gcc7.tar.gz
  rm "./*.tar.gz"
  cd -
}

install_ipopt "$HOME/local/ipopt/"

echo "Ensure to update your LD_LIBRARY_PATH"
