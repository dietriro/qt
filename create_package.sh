#!/bin/sh

chmod -R 755 install/DEBIAN
dpkg-deb -b install .
