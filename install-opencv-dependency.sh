#!/bin/sh 
#put this file in folder "build" opencv
#tested using opencv 4.1 and ubuntu 16.04
sudo apt-add-repository universe
sudo add-apt-repository ppa:jonathonf/ffmpeg-4
sudo apt-get update
sudo apt-get install -y libavcodec-dev libavformat-dev libavutil-dev libeigen3-dev libglew-dev libgtk2.0-dev libgtk-3-dev libjasper-dev libjpeg-dev libpng12-dev libpostproc-dev libswscale-dev libtbb-dev libtiff5-dev libv4l-dev libxvidcore-dev libx264-dev qt5-default zlib1g-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev ffmpeg python-dev python-pip python-py python3-pip  python3-dev  python3-py pkg-config

sudo pip install numpy
sudo pip3 install numpy

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D ENABLE_FAST_MATH=ON -D WITH_LIBV4L=ON -D WITH_GSTREAMER=ON -D WITH_GSTREAMER_0_10=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_EXAMPLES=OFF -D BUILD_TESTS=OFF -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_opencv_world=ON -D BUILD_opencv_python3=ON -D HAVE_opencv_python3=ON -D BUILD_opencv_python2=ON -D HAVE_opencv_python2=ON ..

make -j4
sudo make install
