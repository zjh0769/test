package zjh.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
	@RequestMapping("/hello")
	public String index() {
		return "Hello World1~";
	}

	@RequestMapping("/call")
	public void call() {
		try {
			while (true) {
				HttpRequest.sendGet("http://server2:8080/hello2", null);
				Thread.sleep(5000);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}