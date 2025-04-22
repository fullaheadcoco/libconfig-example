cmake_minimum_required(VERSION 3.10) # 최소 CMake 버전 설정
project(LibconfigSubmoduleExample C)   # 프로젝트 이름과 언어 설정

# libconfig 서브모듈 디렉토리를 빌드에 추가
# CMake는 external/libconfig 디렉토리 내의 CMakeLists.txt를 찾아 libconfig를 빌드합니다.
# 경로가 실제 서브모듈 위치와 일치해야 합니다.
add_subdirectory(external/libconfig)

# 메인 실행 파일 정의 (main.c로부터 my_app 생성)
add_executable(my_app main.c)

# 실행 파일이 libconfig 라이브러리를 사용하도록 링크 설정
# libconfig의 CMake 스크립트는 'config'라는 이름의 C 라이브러리 타겟을 정의합니다.
target_link_libraries(my_app PRIVATE config)

# 빌드 시 example.cfg 파일을 빌드 디렉토리로 복사하여 실행 시 찾을 수 있도록 함
configure_file(example.cfg ${CMAKE_CURRENT_BINARY_DIR}/example.cfg COPYONLY)

