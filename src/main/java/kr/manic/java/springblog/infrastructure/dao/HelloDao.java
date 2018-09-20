package kr.manic.java.springblog.infrastructure.dao;

import kr.manic.java.springblog.domain.model.entity.Hello;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HelloDao extends JpaRepository <Hello, Integer> {
}