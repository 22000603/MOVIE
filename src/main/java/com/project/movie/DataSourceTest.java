package com.project.movie;

import org.apache.catalina.core.ApplicationContext;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DataSourceTest {
	
	@Test
	public void testConnection() {
		ApplicationContext ctx = 
				new FileSystemXmlApplicationContext(
						"file:src/main/webapp/WEB-INF/spring/root-context.xml");
		DataSource ds
	}

}
