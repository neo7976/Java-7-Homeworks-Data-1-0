package sobinda.java7homeworksdata10;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import java.util.HashMap;

@SpringBootApplication
public class CommandLineApp implements CommandLineRunner {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(CommandLineApp.class);
        app.setBannerMode(Banner.Mode.OFF);
        app.run(args);
    }

    @Override
    public void run(String... args) throws Exception {
        var arguments = new HashMap<String, String>();
        arguments.put("id", "1");
        arguments.put("name", "BMW");
//        var result = namedParameterJdbcTemplate.queryForObject("select id, name from netology.cars where id=:id and name = :name;",
//                arguments,
//                (rs, rowNum) -> new Car(rs.getInt(1), rs.getString(2)));
        var result = namedParameterJdbcTemplate.queryForObject("select id, name from netology.cars where id=:id and name = :name;",
                arguments,
                (rs, rowNum) -> new Car(rs.getInt("id"), rs.getString("name")));
        System.out.println(result);
    }

    static class Car {
        private int id;
        private String name;

        public Car(int id, String name) {
            this.id = id;
            this.name = name;
        }

        @Override
        public String toString() {
            return "Car{" +
                    "id='" + id + '\'' +
                    ", name='" + name + '\'' +
                    '}';
        }
    }

}
