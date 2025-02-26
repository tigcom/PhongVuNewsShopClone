package Assignment_Java_5;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;
@EnableScheduling
@EnableTransactionManagement
@SpringBootApplication
public class AssignmentJava5Application {

	public static void main(String[] args) {
		SpringApplication.run(AssignmentJava5Application.class, args);
	}

}
