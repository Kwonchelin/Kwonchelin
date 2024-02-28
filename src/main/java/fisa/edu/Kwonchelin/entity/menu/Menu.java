package fisa.edu.Kwonchelin.entity.menu;

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
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "menu_id")
    private Long menuId;

    @JoinColumn(name = "store_id")
    @ManyToOne(targetEntity = Store.class, fetch = FetchType.LAZY)
    private Store storeId;

    @Column
    private String category;

    @Column
    private String name;

    @Column
    private int price;

    @Column(name = "menu_picture_url")
    private String menuPictureUrl;

    @Column
    private int popularity;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
