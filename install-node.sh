# Install latest node
git clone https://github.com/tj/n ${HOME}/sources/tj/n
cd ${HOME}/sources/tj/n
PREFIX=${HOME}/apps/n make install

echo "Installing latest Node.js..."
export N_PREFIX="${HOME}/apps/n"
export PATH="$PATH:$N_PREFIX/bin"
n latest