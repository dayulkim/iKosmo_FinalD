package kr.co.kosmo.mvc.vo;

public class PageVO {

	private int nowPage, startPage, endPage, total, cntPerPage, lastPage, start, end;
	private int cntPage = 5;

	private int mnum;
	private int sortType1;
	private int sortType2;
	private int pro_num;

	public PageVO() {

	}

	public int getSortType1() {
		return sortType1;
	}

	public void setSortType1(int sortType1) {
		this.sortType1 = sortType1;
	}

	public int getSortType2() {
		return sortType2;
	}

	public void setSortType2(int sortType2) {
		this.sortType2 = sortType2;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public PageVO(int total, int nowPage, int cntPerPage, int pro_num, int sortType1) {
		this.nowPage = nowPage;
		this.cntPerPage = cntPerPage;
		this.total = total;
		this.pro_num = pro_num;
		this.sortType1 = sortType1;
		memberLastPage(total, cntPerPage);
		memberStartEndPage(nowPage, cntPage);
		memberStartEnd(nowPage, cntPerPage);
	}

	public PageVO(int total, int nowPage, int cntPerPage) {
		this.nowPage = nowPage;
		this.cntPerPage = cntPerPage;
		this.total = total;
		memberLastPage(total, cntPerPage);
		memberStartEndPage(nowPage, cntPage);
		memberStartEnd(nowPage, cntPerPage);
	}

	// 페이지 계산 메서드 ==================================================================
	// 제일 마지막 페이지 계산
	private void memberLastPage(int total, int cntPerPage) {
		// 1.1page 올림처리 -> 2페이지 , 갯수 10 당 -> 11 개라면
		lastPage = (int) Math.ceil((double) total / (double) cntPerPage);
	}

	// 시작, 끝 페이지 계산
	private void memberStartEndPage(int nowPage, int cntPage) {
		endPage = ((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage;
		if (getLastPage() < getEndPage()) {
			endPage = getLastPage();
		}
		startPage = getEndPage() - cntPage + 1;
		if (getStartPage() < 1) {
			startPage = 1;
		}
	}

	private void memberStartEnd(int nowPage, int cntPerPage) {
		end = nowPage * cntPerPage;
		start = end - cntPerPage + 1;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCntPage() {
		return cntPage;
	}

	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}

	public int getMnum() {
		return mnum;
	}

	public void setMnum(int mnum) {
		this.mnum = mnum;
	}

}