package fisa.edu.Kwonchelin.entity.menuImage;

import fisa.edu.Kwonchelin.entity.menu.Menu;
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
public class MenuImage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "menu_image_id")
    private Long menuImageId;

    @JoinColumn(name = "menu_id")
    @ManyToOne(targetEntity = Menu.class, fetch = FetchType.LAZY)
    private Menu menuId;

    @Column(name = "menu_picture_url")
    private String menuPictureUrl;

    @CreatedDate
    @Column(name = "created_date", nullable = false)
    private Date createdDate;

    @LastModifiedDate
    @Column(name = "modified_date", nullable = false)
    private Date modifiedDate;

    @Column(nullable = false)
    private String status;
}
