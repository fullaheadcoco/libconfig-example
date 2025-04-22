#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "libconfig::config" for configuration ""
set_property(TARGET libconfig::config APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(libconfig::config PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libconfig.1.7.4.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libconfig.1.dylib"
  )

list(APPEND _cmake_import_check_targets libconfig::config )
list(APPEND _cmake_import_check_files_for_libconfig::config "${_IMPORT_PREFIX}/lib/libconfig.1.7.4.dylib" )

# Import target "libconfig::config++" for configuration ""
set_property(TARGET libconfig::config++ APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(libconfig::config++ PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libconfig++.1.7.4.dylib"
  IMPORTED_SONAME_NOCONFIG "@rpath/libconfig++.1.dylib"
  )

list(APPEND _cmake_import_check_targets libconfig::config++ )
list(APPEND _cmake_import_check_files_for_libconfig::config++ "${_IMPORT_PREFIX}/lib/libconfig++.1.7.4.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
