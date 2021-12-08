package com.project.movie;

public class DataSourceTest {
	
	@Test
	public void testConnection() {
		ApplicationContext ctx = 
				new FileSystemXmlApplicationContext(
						"file:src/main/webapp/WEB-INF/spring/root-context.xml");
		DataSource ds
	}

}
