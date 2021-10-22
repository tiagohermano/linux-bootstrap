#/bin/bash
sudo apt update
sudo apt upgrade -y

# Enable Visual Studio Code to watch large projects for changes
sudo echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sudo sysctl -p

# Install aditional spotify media libraries
echo "Installing spotify aditional media libraries..."
cd ${HOME}
git clone https://github.com/ramedeiros/spotify_libraries.git
cd spotify_libraries
sudo cp lib* /usr/lib/x86_64-linux-gnu/
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavutil.so.52.6.100 /usr/lib/x86_64-linux-gnu/libavutil.so.52
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavformat.so.54.36.100 /usr/lib/x86_64-linux-gnu/libavformat.so.54
sudo ln -frs /usr/lib/x86_64-linux-gnu/libavcodec.so.54.71.100 /usr/lib/x86_64-linux-gnu/libavcodec.so.54
sudo ldconfig
cd ..
rm -rf spotify_libraries

# Fix delay when changing screen brightness or system volume through fn shortkeys
# TODO: script to comment line: modifier_map Mod3 { Scroll_Lock } in /usr/share/X11/xkb/symbols/br;
