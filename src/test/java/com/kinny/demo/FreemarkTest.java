package com.kinny.demo;

import static org.junit.Assert.*;

import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreemarkTest {

	
	@Test
	public void testGenericHtml() throws Exception {
		
		// 1 获取配置对象
		Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
		// 2 设置模板文件目录
		File file = new File("D:\\javaCodes\\workspace\\freemarker\\src\\main\\resources");
		configuration.setDirectoryForTemplateLoading(file);
		// 3 设置字符集 
		configuration.setDefaultEncoding("UTF-8");
		// 4 获取模板对象
		Template template = configuration.getTemplate("template.ftl");
		// 5 设置数据模型
		Map<String, Object> dataModel = new HashMap<>();
		dataModel.put("name", "kinny");
		
		List goodsList=new ArrayList();
		Map goods1=new HashMap();
		goods1.put("name", "苹果");
		goods1.put("price", 5.8);
		Map goods2=new HashMap();
		goods2.put("name", "香蕉");
		goods2.put("price", 2.5);
		Map goods3=new HashMap();
		goods3.put("name", "橘子");
		goods3.put("price", 3.2);
		goodsList.add(goods1);
		goodsList.add(goods2);
		goodsList.add(goods3);
		dataModel.put("goodsList", goodsList);
		dataModel.put("dateTime", new Date());

		
		Writer out = new FileWriter("D:\\template.html");
		template.process(dataModel, out);
		
	}
	
}
