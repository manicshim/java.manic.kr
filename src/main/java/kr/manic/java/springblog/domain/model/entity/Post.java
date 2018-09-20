package kr.manic.java.springblog.domain.model.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Getter
@Entity
@Setter
public class Post {
    @Id
    @GeneratedValue
    int id;

    String title;

    String subtitle;

    @Column(length = 100000000)
    String content;

    Date regDate;

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", subtitle='" + subtitle + '\'' +
                ", content='" + content + '\'' +
                ", regDate=" + regDate +
                '}';
    }
}
