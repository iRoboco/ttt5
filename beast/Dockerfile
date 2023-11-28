FROM ubuntu:latest AS build

# Install tools required for the project
RUN apt-get -qq update \
    && apt-get -qq install gcc -y \
    && apt-get -qq install g++ -y \
    && apt-get -qq install cmake -y \
    && apt-get -qq install wget -y 

# Install Boost
RUN cd /home \
    && wget -q https://github.com/boostorg/boost/releases/download/boost-1.83.0/boost-1.83.0.tar.gz \
    && tar xfz boost-1.83.0.tar.gz \
    && rm boost-1.83.0.tar.gz \
    && cd boost-1.83.0 \
    && ./bootstrap.sh --with-libraries=system \
    && ./b2 install > /dev/null
    
# Copy the entire project and build it
COPY ./app /cpp/src/project/ 
WORKDIR /cpp/src/project/

RUN g++ http_server_sync.cpp -o http_server_sync -lpthread

FROM ubuntu:latest
COPY --from=build /cpp/src/project /app/

##############################################################################
# The following construction is intended for transferring the PORT environment
# variable to the container by Yandex Cloud services

# Defining the PORT environment variable
# ENV PORT=8080
# EXPOSE $PORT

# Starting service on $PORT
CMD ["/app/http_server_sync", "0.0.0.0", "${PORT}", "/app"]
