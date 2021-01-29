package com.propinh.myservice;


import com.propinh.mylib.MyLibPropertyConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.util.ResourceUtils;

@SpringBootApplication
@PropertySource(ResourceUtils.CLASSPATH_URL_PREFIX + "mylib.shared.properties")
@Import({MyLibPropertyConfiguration.class})
class PropertyInheritanceApplication {

  public static void main(String[] args) {
    ConfigurableApplicationContext context = SpringApplication.run(PropertyInheritanceApplication.class, args);
  }

}