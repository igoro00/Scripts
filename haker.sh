sudo apt install git cmake libncurses5-dev -y
git clone https://github.com/igoro00/cmatrix /tmp/cmatrix/
mkdir -p /tmp/cmatrix/build
cd /tmp/cmatrix/build
cmake ..
make
mv cmatrix ~/cmatrix
~/cmatrix -M "Hacking in Progress" -L
