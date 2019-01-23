package model.flight.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.flight.AirlineCompareBean;
import model.flight.AirlineCompareDAO;
import model.flight.AirportCompareBean;
import model.flight.AirportCompareDAO;

@Service
@Transactional
public class CreateAirInfoService {

	@Autowired
	private AirportCompareDAO adao;
	@Autowired
	private AirlineCompareDAO adao2;
	@Autowired
	ServletContext servletContext;

	public void AirlinecreateParserXml() {
		String s1 = servletContext.getRealPath("");

		File inputXml = new File(s1 + "resource/flight/CITY_CHT.xml");
		SAXReader saxReader = new SAXReader();
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			int input = 0;
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
				AirportCompareBean bean = new AirportCompareBean();
				int count = 0;
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
//                    System.out.println(node.getName() + ":" + node.getText());

					if (node.getName() == "C") {
						count++;
//						System.out.println("count=" + count);
//						System.out.println(node.getName());
//						System.out.println(node.getText());

						bean.setAirportCode(node.getText());
					} else {
						input++;
						count++;
						bean.setAirportName(node.getText());
						System.out.print("{ ID:" + input + ", Name: '" + node.getText() + "'},");
					}
					if (count % 2 == 0) {
						AirportCompareBean bean1 = adao.create(bean);
//						System.out.println("新增成功=" + bean1);
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
//		System.out.println("dom4j parserXml");
	}

	public void Airlinecreate() throws IOException {
		String s1 = servletContext.getRealPath("");
		System.out.println(s1);
		File inputXml = new File(s1 + "resource/flight/Airline_CHT.xml");
		SAXReader saxReader = new SAXReader();
		try {
			Document document = saxReader.read(inputXml);
			Element employees = document.getRootElement();
			for (Iterator i = employees.elementIterator(); i.hasNext();) {
				Element employee = (Element) i.next();
				AirlineCompareBean bean = new AirlineCompareBean();
				int count = 0;
				String s = "";
				String s2 = "";
				for (Iterator j = employee.elementIterator(); j.hasNext();) {
					Element node = (Element) j.next();
//                    System.out.println(node.getName() + ":" + node.getText());

					if (node.getName() == "C") {
						count++;
						System.out.println("count=" + count + ", type=" + node.getName() + "， text=" + node.getText());
//						System.out.println();
//						System.out.println(); 

						s = node.getText();
						bean.setAirlineCode(node.getText());
//						/Travel/src/main/webapp/   resource/flight/airlines_logo 56_50/0B.gif
						String path = s1 + "resource/flight/airlines_logo 56_50/" + s + ".gif";
						File file = new File(path);
						if (file.exists()) {// 判断文件的存在性      
							bean.setAirlineLogo(path);
							System.out.println("have！");
						} else {
//							file.createNewFile();
							System.out.println("no");
						}
//						bean.setAirlineLogo(s);
					} else {
						count++;
						s2 = node.getText();
						bean.setAirlineCompany(s2);

					}
					if (count % 2 == 0) {

						AirlineCompareBean bean1 = adao2.create(bean);
						System.out.println("新增成功=" + bean1);
					}

				}
			}
		} catch (DocumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("dom4j parserXml");

	}

}
