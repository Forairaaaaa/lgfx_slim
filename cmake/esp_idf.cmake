# Src files
file(GLOB_RECURSE LGFX_SLIM_SRCS
    ${LGFX_SLIM_ROOT_DIR}/src/*.c
    ${LGFX_SLIM_ROOT_DIR}/src/*.cc
    ${LGFX_SLIM_ROOT_DIR}/src/*.cpp
)
# Include
set(LGFX_SLIM_INCS
    ${LGFX_SLIM_ROOT_DIR}/src/
    ${LGFX_SLIM_ROOT_DIR}/src/lgfx/v1/
)

# Public component requirement
set(LGFX_SLIM_REQUIRES
)

# Private component requirement
set(LGFX_SLIM_PRIV_REQUIRES
)

# Register component
idf_component_register(
    SRCS ${LGFX_SLIM_SRCS}
    INCLUDE_DIRS ${LGFX_SLIM_INCS}
    REQUIRES ${LGFX_SLIM_REQUIRES}
    PRIV_REQUIRES ${LGFX_SLIM_PRIV_REQUIRES}
)
