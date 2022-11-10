package db_connect;

public class MovieVO {
	
	private String title;
	private String screening;
	private String country;
	private String poster;
	private String year;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getScreening() {
		return screening;
	}
	public void setScreening(String screening) {
		this.screening = screening;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}

	@Override
	public String toString() {
		return "MovieVO [title=" + title + ", screening=" + screening + ", country=" + country + ", poster=" + poster
				+ ", year=" + year + "]";
	}
	
	
}
