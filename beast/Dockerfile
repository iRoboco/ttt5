FROM ubuntu:latest AS build

# Install tools required for the project
RUN apt-get -q update \
    && apt-get -q install gcc -y \
    && apt-get -q install g++ -y \
    && apt-get -q install cmake -y \
    && apt-get -q install wget -y 

# Install Boost
RUN cd /home \
    && wget http://downloads.sourceforge.net/project/boost/boost/1.83.0/boost_1_83_0.tar.gz \
    && tar xfz boost_1_83_0.tar.gz \
    && rm boost_1_83_0.tar.gz \
    && cd boost_1_83_0 \
    && ./bootstrap.sh --with-libraries=system -s \
    && ./b2 install -sS 

# Copy the entire project and build it
COPY ./beast/app /cpp/src/project/ 
WORKDIR /cpp/src/project/

RUN g++ http_server_sync.cpp -o http_server_sync -lpthread

FROM ubuntu:latest
COPY --from=build /cpp/src/project /app/

# Defining the PORT environment variable
ENV PORT=8080
EXPOSE $PORT

# Starting service on $PORT
CMD ["/app/http_server_sync", "0.0.0.0", "${PORT}", "/app"]
