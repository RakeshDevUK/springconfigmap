package virgin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class RestSpring extends SpringBootServletInitializer {
	
	private static Logger LOGGER = LoggerFactory.getLogger(RestSpring.class);

    @RequestMapping("/hello")
    public String handler() {
    	LOGGER.info("Hello Logger Paul");
    	LOGGER.debug("Debug Logger Paul");
    	return "sam cru 1234567890 xxxxxxxx";
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(RestSpring.class, args);
    }

}
