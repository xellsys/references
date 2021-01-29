package com.propinh.mylib;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.PropertySource;
import org.springframework.util.ResourceUtils;

@PropertySource(ResourceUtils.CLASSPATH_URL_PREFIX + "mylib.configuration.properties")
@Configurable
public class MyLibPropertyConfiguration {

}
