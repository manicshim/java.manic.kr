package kr.manic.java.springblog.infrastructure.dao;

import kr.manic.java.springblog.domain.model.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostDao extends JpaRepository<Post, Integer> {
}
