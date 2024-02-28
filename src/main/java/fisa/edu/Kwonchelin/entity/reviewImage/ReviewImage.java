package fisa.edu.Kwonchelin.entity.reviewImage;

import fisa.edu.Kwonchelin.entity.review.Review;
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
public class ReviewImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "menu_image_id")
    private Long reviewImageId;

    @JoinColumn(name = "review_id")
    @ManyToOne(targetEntity = Review.class, fetch = FetchType.LAZY)
    private Review reviewId;

    @Column(name = "review_picture_url")
    private String reviewPictureUrl;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
