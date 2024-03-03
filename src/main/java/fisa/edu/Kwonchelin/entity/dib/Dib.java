package fisa.edu.Kwonchelin.entity.dib;

import fisa.edu.Kwonchelin.entity.member.Member;
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
@Entity(name = "dib")
public class Dib {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dib_id")
    private Long dibId;

    @JoinColumn(name = "member_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Member member;

    @JoinColumn(name = "store_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Store store;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
