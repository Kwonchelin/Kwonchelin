package fisa.edu.Kwonchelin.entity.dibs;

import fisa.edu.Kwonchelin.entity.store.Store;
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
public class Dibs {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @JoinColumn(name = "store_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Store storeId;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
