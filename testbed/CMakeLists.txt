add_executable(testbed
    src/main.c
)

target_link_libraries(testbed PUBLIC engine)

target_include_directories(
    testbed 
    PUBLIC ${PROJECT_BINARY_DIR}
    PUBLIC ${PROJECT_SOURCE_DIR}/engine/src
)