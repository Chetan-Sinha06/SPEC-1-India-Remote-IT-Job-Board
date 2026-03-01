CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE job_categories (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
);

CREATE TABLE tech_stacks(
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
)

CREATE TABLE jobs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL UNIQUE,
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category_id UUID NOT NULL,
    experience_level VARCHAR(50) NOT NULL,
    remote_type VARCHAR(50) NOT NULL,
    salary_min INTEGER,
    salary_max INTEGER,
    application_url TEXT NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT fk_category
        FOREIGN KEY(category_id) 
        REFERENCES job_categories(id)
        ON DELETE RESTRICT
);

CREATE TABLE job_tech_stacks (
    job_id UUID NOT NULL,
    tech_stack_id UUID NOT NULL,
    PRIMARY KEY (job_id, tech_stack_id),
    CONSTRAINT fk_job
        FOREIGN KEY(job_id) 
        REFERENCES jobs(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_tech_stack
        FOREIGN KEY(tech_stack_id) 
        REFERENCES tech_stacks(id)
        ON DELETE CASCADE
);

CREATE TABLE admin_users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    role VARCHAR(50) NOT NULL,
);