package Assignment_Java_5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	 @Autowired
	 AuthenInterceptor authen;
	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(authen).addPathPatterns("/user/**").excludePathPatterns("/user/dangky").excludePathPatterns("/user/dangnhap")
	        .excludePathPatterns("/user/login").excludePathPatterns("/user/dangky").excludePathPatterns("/user/dangxuat").addPathPatterns("/sanpham/giohang")
	                ;

	        WebMvcConfigurer.super.addInterceptors(registry);
	    }
	}
