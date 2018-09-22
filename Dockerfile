# Pull base image
FROM resin/rpi-raspbian:stretch

WORKDIR /usr/local/bin/
COPY ser2sock .
RUN chmod 755 /usr/local/bin/ser2sock

EXPOSE 10001

ENTRYPOINT ["/usr/local/bin/ser2sock","-p10001","-s","/dev/serial0","-b","9600"]

# To run interactive:
# docker run --name=ser2sock -i -t -p 127.0.0.1:10001:10001 --expose 10001 --device=/dev/serial0 mikeess/rpi-ser2sock

# To run as daemon:
# docker run --name=ser2sock -d -p 127.0.0.1:10001:10001 --expose 10001 --device=/dev/serial0 mikeess/rpi-ser2sock
