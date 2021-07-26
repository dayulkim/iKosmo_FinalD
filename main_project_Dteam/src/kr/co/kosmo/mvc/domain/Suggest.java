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
public class Suggest { // ���翵

	private Document doc;
	private Element root;
	@Autowired
	private ProductDao productDao;

	private static int num = 0;
	// ó�� ���������Ҷ��� 0�ǰ�

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
				// �ܾ� �ɰ��� �˻��� �����Ҽ� �ֵ��� -���� �������� ���ϼ��� �ִ�
				// �Ǿ� ��ǰ�� + ���ո� �ұ� ������
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
			num++;// 2��° �������ʹ� ������ �޾ƿ�������
		}
		try

		{
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

		if (num == 0) {
			SuggestTest();
			System.out.println("����� �ϴ� �ѹ��� �۵�");
		}
		List<String> sugList = new ArrayList<String>();
		// �ڽ� Element �߿� keyword �� ã�Ƽ� List�� �����Ѵ�.

		List<Element> list = root.getChildren("keyword");

		Iterator<Element> it = list.iterator();
		// ����ڰ� ������ ���� �Ǵ� ���ڿ�(n)�� ��/�ҹ��� ������ �����ʰ� �ϱ� ���� �ҹ��ڷ� ��ȭ
		key = key.toLowerCase();
		while (it.hasNext()) {
			// Element��ü�� ������ �ִ� ���ڿ��� ��ȯ�Ѵ�.
			String result = it.next().getText();
			System.out.println("keyword ���ڿ�:" + result);
			String compare = result.toLowerCase();
			// �翵-contains�� �ٲ㼭 ���ĸ� ã����� ���� �ܾ �� ��ǰ �˻�
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
