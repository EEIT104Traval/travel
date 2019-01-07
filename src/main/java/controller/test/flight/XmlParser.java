package controller.test.flight;

import java.io.File;
import java.util.Iterator;

import javax.servlet.ServletContext;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import model.flight.AirportCompareBean;

public class XmlParser {

	public static String method(String path, ServletContext servletContext) {

		String s = servletContext.getRealPath("");

		File inputXml = new File(s + path);
		SAXReader saxReader = new SAXReader();
		String s1 = "";
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
//				AirportCompareBean bean = new AirportCompareBean();
//				int count = 0;
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
					s1 += node.getText() + "=。=";
//					System.out.println(node.getText() + "=。=");
//
//					if (node.getName() == "C") {
//						count++;
////					System.out.println("count=" + count);
////					System.out.println(node.getName());
////					System.out.println(node.getText());
//
//						bean.setAirportCode(node.getText());
//					} else {
//						count++;
//						bean.setAirportName(node.getText());
//					}
//					if (count % 2 == 0) {
//						AirportCompareBean bean1 = adao.create(bean);
//						System.out.println("新增成功=" + bean1);
//					}
//

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("dom4j parserXml");
		return s1;
	}

}
