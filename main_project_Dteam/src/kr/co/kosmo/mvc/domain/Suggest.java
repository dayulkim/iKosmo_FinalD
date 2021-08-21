package kr.co.kosmo.mvc.domain;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.kosmo.mvc.service.ProductServiceInter;
import kr.co.kosmo.mvc.vo.ProductVO;

@Component
public class Suggest {

	private Document doc;
	private Element root;
	@Autowired
	private ProductServiceInter productServiceInter;

	private int num = 0;
	// 처음 서버구동할때의 0의값

	public void SuggestTest() {
		SAXBuilder sb = new SAXBuilder();

		File path = new File(
				"C:\\ikosmo\\git\\iKosmo_FinalD\\main_project_Dteam\\WebContent\\resources\\suggest\\suggest.xml");

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
				arr = e.getPro_name().split("\\(", 2)[0].replace("&", "");				
				category = e.getPro_category();				
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
			// XML 문서를 읽어 들이기 위한 객체
			doc = sb.build(new FileInputStream(path));
			// root element 를 접근
			root = doc.getRootElement();			
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
	}

	public List<String> getSuggest(String key) {
		List<ProductVO> titleList = productServiceInter.suggestProductList();
		if (titleList.size() != num) {
			SuggestTest();
			num = titleList.size();
		}
		List<String> sugList = new ArrayList<>();
		Set<String> setList = new HashSet<>();
		List<Element> list = root.getChildren("keyword");

		Iterator<Element> it = list.iterator();
		key = key.toLowerCase();
		while (it.hasNext()) {
			String result = it.next().getText();
			
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
