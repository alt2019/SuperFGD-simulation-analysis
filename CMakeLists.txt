cmake_minimum_required(VERSION 3.10)

# set the project name
project(analisys)

message("Default CXX standard: " ${CMAKE_CXX_STANDARD})

message("CMAKE_CXX_FLAGS: " ${CMAKE_CXX_FLAGS})

message("CMAKE_BINARY_DIR: " ${CMAKE_BINARY_DIR})
message("CMAKE_CURRENT_BINARY_DIR: " ${CMAKE_CURRENT_BINARY_DIR})

set(SRC_DIR src)
set(INC_DIR include)
set(ND280UPEVENT_SHARED_LIB_DIR /t2k/users/shvartsman/HEP-soft/t2k-nd280-upgrade-git/src/app/nd280UpEvent)

# set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -std=c++2a -pthread -fopenmp")
# set (CMAKE_CXX_FLAGS "-eDR")

find_package(OpenMP REQUIRED)
# find_package(TBB)

find_package(ROOT 6.23 CONFIG REQUIRED)
include("${ROOT_USE_FILE}")

add_library(TND280UpHit_cc SHARED IMPORTED)
set_target_properties( TND280UpHit_cc PROPERTIES 
	IMPORTED_LOCATION ${ND280UPEVENT_SHARED_LIB_DIR}/TND280UpHit_cc.so 
	CXX_STANDARD 14)

add_library(TND280UpTrackPoint_cc SHARED IMPORTED)
set_target_properties( TND280UpTrackPoint_cc PROPERTIES 
	IMPORTED_LOCATION ${ND280UPEVENT_SHARED_LIB_DIR}/TND280UpTrackPoint_cc.so 
	CXX_STANDARD 14)

add_library(TND280UpTrack_cc SHARED IMPORTED)
set_target_properties( TND280UpTrack_cc PROPERTIES 
	IMPORTED_LOCATION ${ND280UPEVENT_SHARED_LIB_DIR}/TND280UpTrack_cc.so 
	CXX_STANDARD 14)

add_library(TND280UpVertex_cc SHARED IMPORTED)
set_target_properties( TND280UpVertex_cc PROPERTIES 
	IMPORTED_LOCATION ${ND280UPEVENT_SHARED_LIB_DIR}/TND280UpVertex_cc.so 
	CXX_STANDARD 14)

add_library(TND280UpEvent_cc SHARED IMPORTED)
set_target_properties( TND280UpEvent_cc PROPERTIES 
	IMPORTED_LOCATION ${ND280UPEVENT_SHARED_LIB_DIR}/TND280UpEvent_cc.so 
	CXX_STANDARD 14)

add_executable(analisys ${SRC_DIR}/DR.C)
# add_executable(main_analisys ${SRC_DIR}/DR.C)

target_include_directories (analisys PUBLIC ${INC_DIR}	${ND280UPEVENT_SHARED_LIB_DIR})
target_link_libraries(analisys PUBLIC ${ROOT_LIBRARIES})
target_link_libraries(analisys PUBLIC TND280UpHit_cc TND280UpTrackPoint_cc TND280UpTrack_cc TND280UpVertex_cc TND280UpEvent_cc)


### doesnot work
# add_library(analisys_interface INTERFACE)
# set_target_properties(analisys_interface PROPERTIES CXX_STANDARD 14)
# target_include_directories(analisys_interface INTERFACE ${ND280UPEVENT_SHARED_LIB_DIR})
# target_link_libraries(analisys_interface INTERFACE ${ROOT_LIBRARIES})
# target_link_libraries(analisys_interface INTERFACE TND280UpEvent_cc)

# add_library(analisys_additional SHARED)
# # add_library(analisys_additional INTERFACE)
# set_target_properties(analisys_additional PROPERTIES CXX_STANDARD 14)
# target_include_directories(analisys_additional PUBLIC ${ND280UPEVENT_SHARED_LIB_DIR})
# target_link_libraries(analisys_additional PUBLIC ${ROOT_LIBRARIES})
# target_link_libraries(analisys_additional PUBLIC TND280UpEvent_cc)

# add_library(analisys_interface INTERFACE)
# target_include_directories (analisys_interface INTERFACE ${ND280UPEVENT_SHARED_LIB_DIR})
# target_link_libraries(analisys_interface INTERFACE ${ROOT_LIBRARIES} TND280UpEvent_cc)

# target_include_directories (analisys PUBLIC ${INC_DIR})
# set_target_properties(analisys PROPERTIES CXX_STANDARD 17)
# # target_link_libraries(analisys PUBLIC analisys_additional)
# target_link_libraries(analisys PUBLIC analisys_interface)
