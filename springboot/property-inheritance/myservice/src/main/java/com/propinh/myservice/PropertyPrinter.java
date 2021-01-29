package com.propinh.myservice;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class PropertyPrinter {

  public PropertyPrinter(
      @Value("${app.donotinheritme:setDefaultInConstr}") String donotinheritme,
      @Value("${app.shared.inheritme:setDefaultByConstr}") String inheritmeShared,
      @Value("${app.shared.overrideme:setDefaultByConstr}") String overridemeShared,
      @Value("${app.configuration.inheritme:setDefaultByConstr}") String inheritmeConfig,
      @Value("${app.configuration.overrideme:setDefaultByConstr}") String overridemeConfig) {
    System.out.println("app.donotinheritme:           " + donotinheritme);
    System.out.println("app.shared.inheritme:         " + inheritmeShared);
    System.out.println("app.shared.overrideme:        " + overridemeShared);
    System.out.println("app.configuration.inheritme:  " + inheritmeConfig);
    System.out.println("app.configuration.overrideme: " + overridemeConfig);
  }
}
