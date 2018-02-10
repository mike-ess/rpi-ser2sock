# rpi-ser2sock

## Introduction

A Docker image, intended for running **ser2sock** utility on a Raspberry Pi. The **ser2sock** utility allows sharing of a serial device over a TCP/IP network. 

## About This Image

This is part of a set of images, intended for running software on a Raspberry Pi, to control a C-Bus home automation system.

Please refer to the [main README](https://github.com/mike-ess/rpi-clipsal-cbus-main/blob/master/README.md), for more information and instructions on how to deploy.

The Docker image may be found at <https://hub.docker.com/r/mikeess/rpi-ser2sock/>. This image is built automatically from this GitHub repository.

## What You Need To Know

Currently this contains a binary for ser2sock that was built in February 2018 on a Raspberry Pi Model 3B running Raspbian Stretch. Code for the ser2sock build was downloaded from <https://github.com/nutechsoftware/ser2sock>.

Look in the Dockerfile for details of (a) what port number is used and (b) what device is used to connect to the serial interface on the Raspberry Pi.

## Authors

* **Nu Tech Software Solutions, Inc.** - *Created ser2sock software* - [nutechsoftware/ser2sock](https://github.com/nutechsoftware/ser2sock)
* **Mike Ess** - *Created code for creating a Docker Image* - Get the built image at https://hub.docker.com/r/mikeess/rpi-ser2sock/

## Acknowledgments

Thank you to Tech Software Solutions, Inc. for creating this software. This is hugely useful for those who have Clipsal C-Bus with only a serial interface available.