# default debian based toolbox base image
FROM quay.io/toolbx-images/debian-toolbox

RUN apt-get update 
# these req packages for sonic pi, i get the list from the sonic pi documentation
RUN apt-get install -y build-essential git libssl-dev ruby-dev elixir erlang-dev erlang-xmerl qt6-tools-dev qt6-tools-dev-tools libqt6svg6-dev libqt6opengl6-dev supercollider-server sc3-plugins-server alsa-utils  libasound2-dev cmake ninja-build pipewire-jack libspa-0.2-jack qt6-wayland libwayland-dev libxkbcommon-dev libegl1-mesa-dev libx11-dev libxft-dev libxext-dev qpwgraph compton m4 libaubio-dev libpng-dev libboost-all-dev librtmidi-dev libaubio-dev libpng-dev

RUN apt-get install -y git && git clone https://github.com/sonic-pi-net/sonic-pi.git
RUN /sonic-pi/app/linux-build-all.sh
