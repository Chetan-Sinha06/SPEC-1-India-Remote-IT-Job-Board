package com.remotejobs.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "job_categories")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class JobCategory {
    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false, unique = true)
    private String name;

    @Column(nullable = false, unique = true)
    private String slug;

    @Column(name = "created_at",nullable = false)
    private LocalDateTime createdAt;
}