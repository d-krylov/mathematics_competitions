cmake_minimum_required(VERSION 3.25)

project(MathematicalProblems NONE)

set(TEX_DIRS
  competitions
)

set(TEX_FILES)

foreach(DIR ${TEX_DIRS})
  file(GLOB_RECURSE DIR_TEX
    RELATIVE ${CMAKE_SOURCE_DIR}
    ${DIR}/*.tex
  )
  list(APPEND TEX_FILES ${DIR_TEX})
endforeach()

foreach(TEX_FILE ${TEX_FILES})

  get_filename_component(TEX_NAME ${TEX_FILE} NAME_WE)
  get_filename_component(TEX_PATH ${TEX_FILE} PATH)

  set(OUTPUT_DIR ${CMAKE_BINARY_DIR}/build/${TEX_PATH})
  file(MAKE_DIRECTORY ${OUTPUT_DIR})

  set(AUX_DIR ${CMAKE_BINARY_DIR}/aux/${TEX_PATH})
  file(MAKE_DIRECTORY ${AUX_DIR})

  add_custom_command(
    OUTPUT ${OUTPUT_DIR}/${TEX_NAME}.pdf
    COMMAND latexmk
            -pdf
            -interaction=nonstopmode
            -outdir=${OUTPUT_DIR}
            -auxdir=${AUX_DIR}
            ${CMAKE_SOURCE_DIR}/${TEX_FILE}
    DEPENDS ${CMAKE_SOURCE_DIR}/${TEX_FILE}
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
  )

  list(APPEND ALL_PDFS ${OUTPUT_DIR}/${TEX_NAME}.pdf)

endforeach()

add_custom_target(all_pdfs ALL DEPENDS ${ALL_PDFS})