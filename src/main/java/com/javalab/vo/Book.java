package com.javalab.vo;


/*****************************************************
 * 자바빈즈(javaBeans) - Book
 * useBean 액션 태그에서 사용할 클래스로
 * 중요한 정보를 저장해서 jsp 페이지 사이로 전달되면서 사용된다.
 * 
 ****************************************************/

public class Book {
    private String title;
    private String author;
    private int publicationYear;

    public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book(String title, String author, int publicationYear) {
        this.title = title;
        this.author = author;
        this.publicationYear = publicationYear;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public int getPublicationYear() {
        return publicationYear;
    }
}
