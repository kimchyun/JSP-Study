package dao;

import java.util.ArrayList;
import java.util.List;

import vo.BookVO;

public class BookRepository {
	private List<BookVO> listOfBooks = new ArrayList<BookVO>();
	
	private static BookRepository instance = new BookRepository();
	public static BookRepository getInstance() {return instance;}
	
	public BookRepository() {
		// 생성자 (도서 아이디, 도서명, 가격 초기화)
		BookVO book1 = new BookVO("B001", "세이노의 가르침", 6500);
		
		// 저자
		book1.setAuthor("세이노");
		
		// 상품 설명
		book1.setDescription("재야의 명저 《세이노의 가르침》 2023년판 정식 출간!\r\n" + 
				"순자산 천억 원대 자산가, 세이노의 ‘요즘 생각’을 만나다");
		
		// 출판사
		book1.setPublisher("데이원");
		
		// 분류
		book1.setCategory("자기계발");
		
		// 재고수
		book1.setUnitsInstock(1000);
		
		// 페이지수
		book1.setTotalPages(500);
		
		// 출판일
		book1.setReleaseDate("2023/03/03");
		
		// 신규 도서 or 중고 도서 or E-Book
		book1.setCondition("E-Book");
		
		// 이미지 파일명
		book1.setFilename("b001.png");
		// ----------------------- 책 등록 끝 -----------------------
		
		
		// 생성자 (도서 아이디, 도서명, 가격 초기화)
		BookVO book2 = new BookVO("B002", "역행자", 17500);
		
		// 저자
		book2.setAuthor("자청");
		
		// 상품 설명
		book2.setDescription("한층 더 강력한 치트키, 독해진 팩트 폭격!\r\n" + 
				"50주 연속 베스트셀러·40만 독자의 삶을 바꾼\r\n" + 
				"『역행자』가 확장판으로 돌아왔다");
		
		// 출판사
		book2.setPublisher("웅진지식하우스");
		
		// 분류
		book2.setCategory("자기계발");
		
		// 재고수
		book2.setUnitsInstock(1500);
		
		// 페이지수
		book2.setTotalPages(700);
		
		// 출판일
		book2.setReleaseDate("2023/05/29");
		
		// 신규 도서 or 중고 도서 or E-Book
		book2.setCondition("New");
		
		// 이미지 파일명
		book2.setFilename("b002.png");
		// ----------------------- 책 등록 끝 -----------------------
		
		// 생성자 (도서 아이디, 도서명, 가격 초기화)
		BookVO book3 = new BookVO("B003", "푸른살", 13500);
		
		// 저자
		book3.setAuthor("이태제");
		
		// 상품 설명
		book3.setDescription("폭력성을 먹고 자라는 ‘푸른 살’에 점령당한 인류\r\n" + 
				"최후의 날을 위한 피의 일식이 시작된다!\r\n" + 
				"\r\n" + 
				"제10회 교보문고 스토리공모전 대상 수상작");
		
		// 출판사
		book3.setPublisher("북다");
		
		// 분류
		book3.setCategory("소설");
		
		// 재고수
		book3.setUnitsInstock(1500);
		
		// 페이지수
		book3.setTotalPages(750);
		
		// 출판일
		book3.setReleaseDate("2023/07/03");
		
		// 신규 도서 or 중고 도서 or E-Book
		book3.setCondition("Refurbished");
		
		// 이미지 파일명
		book3.setFilename("b003.png");
		// ----------------------- 책 등록 끝 -----------------------
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
		
	}
	
	// 책 상품 전체 가져오기
	public List<BookVO> getAllBooks(){
		return listOfBooks;
	}
	
	// 책 상품 상세보기
	public BookVO getBookById(String bookId) {
		BookVO bookById = null;
		
		/*
		 listOfBooks : 책3권(B001,B002,B003)
		 book : 책1권(B001)
		 */
		for(BookVO book : listOfBooks) {
			if(book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	// 새로운 책 상품 등록
	public void addBook(BookVO book) {
		listOfBooks.add(book);
	}
}
