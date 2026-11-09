경매 구현 연습용 레포

<추가한 의존성>
1. Flyway Migration	데이터베이스 스키마 변경 이력을 관리하고 SQL 마이그레이션을 자동 실행
2. Lombok	Getter, Setter, 생성자 등 반복적인 Java 코드를 어노테이션으로 자동 생성
3. MySQL Driver	Spring Boot 애플리케이션과 MySQL 데이터베이스를 연결하는 JDBC 드라이버
4. Spring Boot Actuator	애플리케이션 상태, 헬스 체크, 메트릭 등 운영 및 모니터링 정보 제공
5. Spring Boot DevTools	개발 중 코드 변경 시 자동 재시작 등 개발 편의 기능 제공
6. Spring Data JPA	JPA 기반 엔티티 매핑 및 Repository를 통한 데이터베이스 CRUD 지원
7. Spring Web	REST API 개발을 위한 HTTP 요청 처리, Controller, Spring MVC 제공
8. Testcontainers	Docker 컨테이너를 이용해 실제 MySQL 환경에서 통합 테스트 실행
9. Validation	@NotNull, @NotBlank, @Min 등으로 요청 데이터의 유효성 검증

<파일별 역할>
.env.dev	개발 환경에서 사용할 변수와 값
.env.prod	운영 환경에서 사용할 변수와 값
compose.yaml	Docker 컨테이너 구성과 실행 방법
application.yaml	Spring Boot 공통 설정
application-dev.yaml	개발 환경 전용 Spring 설정
application-prod.yaml	운영 환경 전용 Spring 설정
