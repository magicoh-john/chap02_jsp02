package com.javalab.vo;


/*****************************************************
 * 자바빈즈(javaBeans) - Movie
 * useBean 액션 태그에서 사용할 클래스로
 * 중요한 정보를 저장해서 jsp 페이지 사이로 전달되면서 사용된다.
 * 
 ****************************************************/
public class Movie {
    private String title;
    private String director;
    private int releaseYear;

    public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Movie(String title, String director, int releaseYear) {
        this.title = title;
        this.director = director;
        this.releaseYear = releaseYear;
    }

    public String getTitle() {
        return title;
    }

    public String getDirector() {
        return director;
    }

    public int getReleaseYear() {
        return releaseYear;
    }
}
