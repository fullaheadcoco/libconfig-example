#include <stdio.h>
#include <stdlib.h>
#include <libconfig.h> // libconfig 헤더 포함

int main() {
    config_t cfg;
    config_setting_t *setting;
    const char *hostname = NULL;
    int port = 0;

    // libconfig 초기화
    config_init(&cfg);

    // 설정 파일 읽기
    // ./build 디렉토리에서 실행될 것이므로, CMakeLists.txt에서 복사된 경로를 사용
    if (!config_read_file(&cfg, "example.cfg")) {
        fprintf(stderr, "Error reading config file '%s' at line %d: %s\n",
                config_error_file(&cfg) ? config_error_file(&cfg) : "NULL",
                config_error_line(&cfg),
                config_error_text(&cfg));
        config_destroy(&cfg);
        return EXIT_FAILURE;
    }

    // "server.hostname" 설정값 읽기 (문자열)
    if (config_lookup_string(&cfg, "server.hostname", &hostname)) {
        printf("Server Hostname: %s\n", hostname);
    } else {
        fprintf(stderr, "No 'hostname' setting in configuration file.\n");
    }

    // "server.port" 설정값 읽기 (정수)
    if (config_lookup_int(&cfg, "server.port", &port)) {
        printf("Server Port: %d\n", port);
    } else {
        fprintf(stderr, "No 'port' setting in configuration file.\n");
    }

    // 설정 객체 해제
    config_destroy(&cfg);

    return EXIT_SUCCESS;
}

