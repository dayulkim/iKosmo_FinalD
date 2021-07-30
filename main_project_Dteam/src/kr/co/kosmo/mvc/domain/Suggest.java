package kr.co.kosmo.mvc.domain;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.kosmo.mvc.dao.ProductDao;
import kr.co.kosmo.mvc.service.ProductService;
import kr.co.kosmo.mvc.service.ProductServiceInter;
import kr.co.kosmo.mvc.vo.ProductVO;

@Component
public class Suggest {

	private Document doc;
	private Element root;
	@Autowired
	private ProductServiceInter productServiceInter;

	private int num = 0;
	// ó�� ���������Ҷ��� 0�ǰ�

	public void SuggestTest() {
		SAXBuilder sb = new SAXBuilder();

		File path = new File(
				"D:\\ikosmo\\Final_Git_Dteam\\iKosmo_FinalD\\main_project_Dteam\\WebContent\\resources\\suggest\\suggest.xml");

		path.delete();
		List<ProductVO> titleList = productServiceInter.suggestProductList();
		BufferedWriter bw = null;

		try {
			bw = new BufferedWriter(new FileWriter(path, true));
			bw.write("<?xml version=\"1.0\" encoding=\"euc-kr\"?>");
			bw.newLine();
			bw.write("<root>");

			String arr;
			int category;
			for (ProductVO e : titleList) {
				arr = e.getPro_name().split("\\(", 2)[0];
				category = e.getPro_category();
				System.out.println("category"+category);
				bw.write("<keyword>" + category + "/ " + arr + "</keyword>");
				bw.newLine();
			}
			bw.write("</root>");
			bw.flush();
		} catch (IOException e1) {

			e1.printStackTrace();
		} finally {

			try {
				if (bw != null) {
					bw.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			// XML ������ �о� ���̱� ���� ��ü
			doc = sb.build(new FileInputStream(path));
			// root element �� ����
			root = doc.getRootElement();
			System.out.println("root :" + root);
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
	}

	public List<String> getSuggest(String key) {
		List<ProductVO> titleList = productServiceInter.suggestProductList();
		if (titleList.size() != num) {
			SuggestTest();
			System.out.println("::::::::::::::::::::::::::::����� �ϴ� �ѹ��� �۵�::::::::::::::::::::::::::::::::::");
			num = titleList.size();
		}
		List<String> sugList = new ArrayList<String>();
		Set<String> setList = new HashSet<String>();
		List<Element> list = root.getChildren("keyword");

		Iterator<Element> it = list.iterator();
		key = key.toLowerCase();

		while (it.hasNext()) {

			String result = it.next().getText();
			System.out.println("keyword ���ڿ�:" + result);
			String compare = result.toLowerCase();

			if (compare.contains(key) && (key.length() >= 2)) {
				String category = compare.split("/")[0];
				
				setList.add(category);
			}
		}
		setList.forEach(i -> sugList.add(i));

		return sugList;

	}
}
