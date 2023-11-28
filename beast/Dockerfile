FROM ubuntu:latest AS build

# Install tools required for the project
RUN apt-get -qq update \
    && apt-get -qq install gcc -y \
    && apt-get -qq install g++ -y \
    && apt-get -qq install cmake -y \
    && apt-get -qq install wget -y 

# Install Boost
RUN cd /home \
    && wget -q http://downloads.sourceforge.net/project/boost/boost/1.83.0/boost_1_83_0.tar.gz \
    && tar xfz boost_1_83_0.tar.gz \
    && rm boost_1_83_0.tar.gz \
    && cd boost_1_83_0 \
    && ./bootstrap.sh --with-libraries=system --quiet \
    && ./b2 install -q 

# Copy the entire project and build it
COPY ./app /cpp/src/project/ 
WORKDIR /cpp/src/project/

RUN g++ http_server_sync.cpp -o http_server_sync -lpthread

FROM ubuntu:latest
COPY --from=build /cpp/src/project /app/

# Defining the PORT environment variable
ENV PORT=8080
EXPOSE $PORT

# Starting service on $PORT
CMD ["/app/http_server_sync", "0.0.0.0", "${PORT}", "/app"]
