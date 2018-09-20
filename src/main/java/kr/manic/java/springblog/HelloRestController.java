package kr.manic.java.springblog;

import java.util.List;

import kr.manic.java.springblog.domain.model.entity.Hello;
import kr.manic.java.springblog.infrastructure.dao.HelloDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloRestController {

    @Autowired
    private HelloDao helloDao;

    @RequestMapping("/add")
    public Hello add(Hello hello) {
        helloDao.save(hello);
        return hello;
    }

    @RequestMapping("/list")
    public List<Hello> list(Model model) {
        List<Hello> helloList = helloDao.findAll();
        return helloList;
    }

    @RequestMapping("/")
    public String index() {
        return "helloworld!";
    }
}
