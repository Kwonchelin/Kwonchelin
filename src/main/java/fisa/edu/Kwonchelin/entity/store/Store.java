package fisa.edu.Kwonchelin.entity.store;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Entity
public class Store {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long storeId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String category;

    @Column(nullable = false)
    private String address;

    @Column
    private String storePictureUrl;

    @Column(nullable = false)
    private String phone;

    @Column(nullable = false)
    private String content;

    @Column(name = "rating_aver")
    private float ratingAver;

    @Column(name = "dibs_count")
    private int dibsCount;

    @Column(name = "review_count")
    private int reviewCount;

    @Column(name = "operation_hours")
    private String operationHours;

    @Column(name = "closed_days")
    private String closedDays;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
