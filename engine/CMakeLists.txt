add_library(engine
    src/test.c
)

target_compile_definitions(engine PUBLIC "KH_EXPORT")