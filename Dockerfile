# Pull base image
FROM resin/rpi-raspbian:stretch

WORKDIR /usr/local/bin/
COPY ser2sock .
RUN chmod 755 /usr/local/bin/ser2sock

EXPOSE 10001

# Proper Entrypoint
ENTRYPOINT ["/usr/local/bin/ser2sock","-p10001","-s","/dev/serial0","-b","9600"]

# Debugging Entrypoint
# ENTRYPOINT ["bash"]
