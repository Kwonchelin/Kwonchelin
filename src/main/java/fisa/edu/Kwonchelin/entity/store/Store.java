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

    @Column
    private float rating;

    @Column
    private int dibsCount;

    @Column
    private int reviewCount;

    @Column
    private String operationHours;

    @Column
    private String closedDays;

    @CreatedDate
    @Column(nullable = false)
    private Date createDate;

    @LastModifiedDate
    @Column(nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;


}
