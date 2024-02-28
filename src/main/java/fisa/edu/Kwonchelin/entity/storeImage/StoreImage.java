package fisa.edu.Kwonchelin.entity.storeImage;

import fisa.edu.Kwonchelin.entity.store.Store;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.web.JsonPath;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Entity
public class StoreImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "store_image_id")
    private Long storeImageId;

    @JoinColumn(name = "store_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Long storeId;

    @Column(name = "store_picture_url")
    private String storePictureUrl;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
