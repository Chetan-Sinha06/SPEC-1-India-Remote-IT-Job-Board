# SPEC-1-India-Remote-IT-Job-Board

## Project Structure
```
SPEC-1-India-Remote-IT-Job-Board
│
├── README.md
├── pom.xml
├── .gitignore
│
├── docs/
│   └── technical-documentation.md
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── remotejobs/
│   │   │           ├── RemoteJobsApplication.java
│   │   │           │
│   │   │           ├── config/
│   │   │           │   └── SecurityConfig.java
│   │   │           │
│   │   │           ├── controller/
│   │   │           │   ├── JobController.java
│   │   │           │   ├── EmployerController.java
│   │   │           │   └── AdminController.java
│   │   │           │
│   │   │           ├── service/
│   │   │           │   └── JobService.java
│   │   │           │
│   │   │           ├── repository/
│   │   │           │   ├── JobRepository.java
│   │   │           │   ├── JobCategoryRepository.java
│   │   │           │   ├── TechStackRepository.java
│   │   │           │   └── AdminUserRepository.java
│   │   │           │
│   │   │           ├── model/
│   │   │           │   ├── Job.java
│   │   │           │   ├── JobCategory.java
│   │   │           │   ├── TechStack.java
│   │   │           │   └── AdminUser.java
│   │   │           │
│   │   │           ├── enums/
│   │   │           │   ├── ExperienceLevel.java
│   │   │           │   ├── RemoteType.java
│   │   │           │   └── JobStatus.java
│   │   │           │
│   │   │           └── util/
│   │   │               └── SlugUtil.java
│   │   │
│   │   └── resources/
│   │       ├── application.yml
│   │       │
│   │       ├── db/
│   │       │   └── migration/
│   │       │       ├── V1__init_schema.sql
│   │       │       └── V2__seed_categories.sql
│   │       │
│   │       ├── templates/
│   │       │   ├── jobs/
│   │       │   │   ├── list.html
│   │       │   │   ├── detail.html
│   │       │   │   └── submit.html
│   │       │   │
│   │       │   └── admin/
│   │       │       └── dashboard.html
│   │       │
│   │       └── static/
│   │           ├── css/
│   │           │   └── styles.css
│   │           │
│   │           ├── js/
│   │           │   └── main.js
│   │           │
│   │           └── images/
│   │
│   └── test/
│       └── java/
│           └── com/
│               └── remotejobs/
│                   └── RemoteJobsApplicationTests.java
│
└── target/
```

