package com.javalab.vo;


/*****************************************************
 * 자바빈즈(javaBeans) - Album
 * useBean 액션 태그에서 사용할 클래스로
 * 중요한 정보를 저장해서 jsp 페이지 사이로 전달되면서 사용된다.
 * 
 ****************************************************/
public class Album {
    private String title;
    private String artist;
    private int releaseYear;

    public Album() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Album(String title, String artist, int releaseYear) {
        this.title = title;
        this.artist = artist;
        this.releaseYear = releaseYear;
    }

    public String getTitle() {
        return title;
    }

    public String getArtist() {
        return artist;
    }

    public int getReleaseYear() {
        return releaseYear;
    }
}
