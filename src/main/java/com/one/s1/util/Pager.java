package com.one.s1.util;

public class Pager {
	// 페이지당 보여줄 row 갯수
	private Long perPage;
	// 페이지 번호
	private Long page;
	// 시작번호
	private Long startRow;
	// 끝번호
	private Long lastRow;
	// -----------
	private String search;
	private String kind;

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		// 검색어가 없으면 search=null
		if (this.search == null) {
			this.search = "";
		}
//		this.search="%"+this.search+"%";
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	// -----------JSP 사용 변수---------------
	private Long startNum;
	private Long lastNum;

	// -------------------------
	private boolean pre;
	private boolean next;

	public boolean isPre() {
		return pre;
	}

	public void setPre(boolean pre) {
		this.pre = pre;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public void makeRow() {
		this.startRow = (this.getPage() - 1) * this.getPerPage() + 1;
		this.lastRow = this.getPage() * this.getPerPage();
	}

	public void makeNum(Long totalCount) {
		// 1. 전체 row의 갯수 구하기
		// System.out.println("totalCount : "+totalCount);
		// System.out.println("this.getPerPage() : "+this.getPerPage());
		// 2. 전체 page의 갯수 구하기
		Long totalPage = totalCount / this.getPerPage();
		// System.out.println("totalPage : "+totalPage);
		if (totalCount % this.getPerPage() != 0) {
			totalPage++;
		}

		// 3. 블럭 당 갯수
		Long perBlock = 10L;

		// 4. 전체 Block의 갯수 구하기
		Long totalBlock = totalPage / perBlock;
		if (totalPage % perBlock != 0) {
			totalBlock++;
		}

		// 5. page번호로 현재 몇번째 Block인지 계산
		// 1번 : 1- 10
		// 2번 : 11- 20
		// page block
		// 1 1
		// 2 1
		// ...
		// 10 1
		// 11 2
		Long curBlock = this.getPage() / perBlock;
		if (this.getPage() % perBlock != 0) {
			curBlock++;
		}
		// 6. curBlock로 startNum,LastNum 구하기
		// curBlock startNum lastNum
		// 1 1 10
		// 2 11 20
		// System.out.println("curBlock : "+curBlock);

		this.startNum = (curBlock - 1) * perBlock + 1;
		this.lastNum = curBlock * perBlock;
		// System.out.println("startNum : "+startNum);
		// System.out.println("lastNum : "+lastNum);
		// 7. 이전, 다음 블럭 유무
		this.pre = false;
		if (curBlock > 1) {
			this.pre = true;
		}
		this.next = false;
		if (totalBlock > curBlock) {
			this.next = true;
		}

		// 8. 현재 블럭이 마지막 블럭번호와 같다면
		if (curBlock == totalBlock) {
			this.lastNum = totalPage;
		}

		// 9. 검색결과가 없어서 Total이 0일때
		if (totalCount == 0) {
			this.lastNum = 0L;// this.lastNum=1L;
		}

	}

	public void makeBlock() {

	}

	public Long getPerPage() {
		if (this.perPage == null || this.perPage < 1) {
			this.perPage = 10L;
		}
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getPage() {
		if (this.page == null || this.page < 1) {
			this.page = 1L;
		}
		return page;
	}

	public void setPage(Long page) {
		this.page = page;
	}

	public Long getStartRow() {
		return startRow;
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getLastRow() {
		return lastRow;
	}

	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	
	private Long category_num;

	public Long getCategory_num() {
		if(this.category_num == null) {
			this.category_num=0L;
		}
		return category_num;
	}
	public void setCategory_num(Long category_num) {
		this.category_num = category_num;
	}
	
	private Long product_num;

	public Long getProduct_num() {
		return product_num;
	}

	public void setProduct_num(Long product_num) {
		this.product_num = product_num;
	}
	
	
	
	
	
}
