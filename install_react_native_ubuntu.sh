apt-get update

# /* Install Packages START */

# Install c++ compiler if not exist
apt-get install build-essential libssl-dev

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# reload bash
source ~/.bashrc

# install latest node
nvm install node

# set default node version for nvm
nvm alias default node

# Install Java
sudo apt install openjdk-8-jre openjdk-8-jdk

# Install snap
sudo apt install snapd

# Install android-studio with snap
sudo snap install android-studio

# /* Install Packages END */

# /* Edit nano ~/.bashrc START */

# Android Variables
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Set alias to shorten command to run emulator
alias run-android="emulator -avd Nexus_5X"

# Refresh ~/.bashrc
source ~/.bashrc

# /* Edit nano ~/.bashrc END */

# /* Configure AVD START */
#/**
#  Note:
#  - In order to make `avdmanager` command to work, you should
#    start android-studio and complete installation first.
#  - Also system-images should be installed Type below command to 
#    install the system image.
#    * sdkmanager --install "system-images;android-27;google_apis;x86"
# **/
sdkmanager --install "system-images;android-27;google_apis;x86"
avdmanager create avd -n Nexus_5X -k "system-images;android-27;google_apis;x86" --device 'Nexus 5X'

# fix emulator (No Jala)
# cp $ANDROID_HOME/emulator/emulator64-x86 $ANDROID_HOME/emulator/emulator-x86

# install kvm
apt install qemu-kvm
# add user kvm 
adduser userName kvm

# No se para que es esta pitada
sudo apt-get install libcanberra-gtk-module:i386

# /* Configure AVD END */

# /* Install dependences START */
npm install -g react-native-cli
# /* Install dependences END */