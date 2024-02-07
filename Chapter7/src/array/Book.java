package array;

public class Book {
	public String bookName;
	public String author;
	
	public Book() {
		bookName = "이름없음";
		author = "저자없음";
	}
	public Book (String bookName , String author) {
		this.bookName = bookName;
		this.author = author;
		
	}
	
	public void showInfo() {
		System.out.println(bookName + "," + author);
	}

	protected String getBookName() {
		return bookName;
	}

	protected void setBookName(String bookName) {
		this.bookName = bookName;
	}

	protected String getAuthor() {
		return author;
	}

	protected void setAuthor(String author) {
		this.author = author;
	}
}