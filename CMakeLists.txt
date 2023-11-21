cmake_minimum_required(VERSION 3.22.1)
project(ttt5)

set(CMAKE_CXX_STANDARD 14)

add_executable(ttt5
        beast/app/http_server_sync.cpp)
