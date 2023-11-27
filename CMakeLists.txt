cmake_minimum_required(VERSION 3.27)
project(ttt5)

set(CMAKE_CXX_STANDARD 14)

set(Boost_INCLUDE_DIR /workspace/boost/include)
set(Boost_LIBRARY_DIR /workspace/boost/lib)
set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package(Boost 1.83.0 COMPONENTS) 

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS}) 
    add_executable(ttt5
        beast/app/http_server_sync.cpp) 
    target_link_libraries(ttt5 ${Boost_LIBRARIES})
endif()