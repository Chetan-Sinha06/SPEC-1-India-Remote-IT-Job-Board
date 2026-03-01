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

## Domain Enums
Enums are used instead of raw strings to:
* Prevent invalid values
* Improve type safety
* Make business logic clearer
* Avoid magic strings

### ExperienceLevel
Defined allowed job experience categories

### RemoteType
Defines allowed remote job types

### JobStatus
Controls moderation workflow
* PENDING &rarr; Awaiting approval
* APPROVED &rarr; Publicly visible
* REJECTED &rarr; Not visible \
Enums improve long-term maintainablity

## Entity Layer
The entity layer represents database tables using JPA annotations

#### Key Design Decisions
* UUID used for all primary keys (safer than sequential IDs).
* Enum fields stored as STRING (not ordinal) to avoid corruption if enum order changes.
* Many-to-Many relationship between Job and TechStack.
* LAZY loading used for category to avoid unnecessary joins.

#### Why Builder Pattern
Lombok ```@Builder``` improves object construction readability and reduces constructor clutter.