package fisa.edu.Kwonchelin.entity.review;

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
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reviewId;

    @Column
    @ManyToOne
    private Long userId;

    @Column
    @ManyToOne
    private Long storeId;

    @Column
    @ManyToOne
    private Long menuId;

    @Column(nullable = false)
    private Integer rating;

    @Column
    private String content;

    @Column
    private String reviewPictureUrl;

    @CreatedDate
    @Column(nullable = false)
    private Date createDate;

    @LastModifiedDate
    @Column(nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
