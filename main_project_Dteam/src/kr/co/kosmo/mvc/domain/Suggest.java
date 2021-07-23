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
import kr.co.kosmo.mvc.vo.ProductVO;

@Component
public class Suggest { // 이재영

	private Document doc;
	private Element root;
	@Autowired
	private ProductDao productDao;

	private static int num = 0;
	// 처음 서버구동할때의 0의값

	public void SuggestTest() {
		SAXBuilder sb = new SAXBuilder();

		File path = new File(
				"C:\\Users\\kosmo_02\\Desktop\\kosmo\\spring\\workspace\\main_project_Dteam(mine)\\WebContent\\resources\\suggest\\suggest.xml");

		if (num == 0) {
			path.delete();
			List<ProductVO> titleList = productDao.productList();

			BufferedWriter bw = null;

			try {
				bw = new BufferedWriter(new FileWriter(path, true));
				bw.write("<?xml version=\"1.0\" encoding=\"euc-kr\"?>");
				bw.newLine();

				bw.write("<root>");
				// 단어 쪼개기 검색시 유용할수 있도록 -단점 지져분해 보일수도 있다
				// 맨앞 상품명 + 조합만 할까 생각중
//				HashSet<String> set = new HashSet<String>();
				for (ProductVO e : titleList) {
					String arr = e.getPro_name().split("\\(", 2)[0];
					bw.write("<keyword>" + arr + "</keyword>");
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
				}
			}
			num++;// 2번째 구동부터는 정보를 받아오지않음
		}
		try

		{
			// XML 문서를 읽어 들이기 위한 객체
			doc = sb.build(new FileInputStream(path));
			// root element 를 접근
			root = doc.getRootElement();
			System.out.println("root :" + root);
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
	}

	public List<String> getSuggest(String key) {

		if (num == 0) {
			SuggestTest();
			System.out.println("여기는 일단 한번만 작동");
		}
		List<String> sugList = new ArrayList<String>();
		// 자식 Element 중에 keyword 를 찾아서 List로 저장한다.

		List<Element> list = root.getChildren("keyword");

		Iterator<Element> it = list.iterator();
		// 사용자가 전달한 문자 또는 문자열(n)을 대/소문자 구별을 하지않게 하기 위해 소문자로 변화
		key = key.toLowerCase();
		while (it.hasNext()) {
			// Element객체가 가지고 있는 문자열을 반환한다.
			String result = it.next().getText();
			System.out.println("keyword 문자열:" + result);
			String compare = result.toLowerCase();
			// 재영-contains로 바꿔서 소파를 찾을경우 소파 단어가 들어간 제품 검색
			if (compare.contains(key)) {

				if (compare.split(" ").length > 4) {
					StringBuilder sb = new StringBuilder();
					String[] arr = compare.split(" ", 5);
					String reFine = sb.append(arr[0]).append(" ").append(arr[1]).append(" ").append(arr[2]).append(" ")
							.append(arr[3]).toString();

					sugList.add(reFine);

				} else {
					sugList.add(result);
				}

			}
		}

		return sugList;

	}
}
