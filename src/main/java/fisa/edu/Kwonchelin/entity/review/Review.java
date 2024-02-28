package fisa.edu.Kwonchelin.entity.review;

import fisa.edu.Kwonchelin.entity.member.Member;
import fisa.edu.Kwonchelin.entity.menu.Menu;
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
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "review_id")
    private Long reviewId;

    @JoinColumn(name = "member_id")
    @ManyToOne(targetEntity = Member.class, fetch = FetchType.LAZY)
    private Member memberId;

    @JoinColumn(name = "store_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Store storeId;

    @JoinColumn(name = "menu_id")
    @ManyToOne(targetEntity = Menu.class, fetch = FetchType.LAZY)
    private Menu menuId;

    @Column(nullable = false)
    private Integer rating;

    @Column
    private String content;

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
