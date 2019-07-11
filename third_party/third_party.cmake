set(MACEKIT_THIRD_PARTY_DIR "${PROJECT_BINARY_DIR}/third_party" CACHE STRING "Third party libraries download & build directories.")

# Forwarding the cross compile flags
set(THIRD_PARTY_EXTRA_CMAKE_ARGS
        -DCMAKE_C_FLAGS=${MACE_CC_FLAGS}
        -DCMAKE_CXX_FLAGS=${MACE_CC_FLAGS}
        )

if(CMAKE_TOOLCHAIN_FILE)
    set(THIRD_PARTY_EXTRA_CMAKE_ARGS
            ${THIRD_PARTY_EXTRA_CMAKE_ARGS}
            -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}
            )
endif(CMAKE_TOOLCHAIN_FILE)

if(CROSSTOOL_ROOT)
    set(THIRD_PARTY_EXTRA_CMAKE_ARGS
            ${THIRD_PARTY_EXTRA_CMAKE_ARGS}
            -DCROSSTOOL_ROOT=${CROSSTOOL_ROOT}
            )
endif(CROSSTOOL_ROOT)

if(ANDROID_ABI)
    set(THIRD_PARTY_EXTRA_CMAKE_ARGS
            ${THIRD_PARTY_EXTRA_CMAKE_ARGS}
            -DANDROID_ABI=${ANDROID_ABI}
            )
endif(ANDROID_ABI)

if(ANDROID_NATIVE_API_LEVEL)
    set(THIRD_PARTY_EXTRA_CMAKE_ARGS
            ${THIRD_PARTY_EXTRA_CMAKE_ARGS}
            -DANDROID_NATIVE_API_LEVEL=${ANDROID_NATIVE_API_LEVEL}
            )
endif(ANDROID_NATIVE_API_LEVEL)

if(PLATFORM)
    set(THIRD_PARTY_EXTRA_CMAKE_ARGS
            ${THIRD_PARTY_EXTRA_CMAKE_ARGS}
            -DPLATFORM=${PLATFORM}
            )
endif(PLATFORM)

include(${PROJECT_SOURCE_DIR}/third_party/gflags/gflags.cmake)
include(${PROJECT_SOURCE_DIR}/third_party/googletest/googletest.cmake)
include(${PROJECT_SOURCE_DIR}/third_party/protobuf/protobuf.cmake)
include(${PROJECT_SOURCE_DIR}/third_party/mace/mace_local.cmake)
