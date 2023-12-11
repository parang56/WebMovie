package dto;

import java.io.Serializable;

public class Movie implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String movieId;
	private String mname;
	private String description;
	private String filename;
	private String timeAndAge;
	private String releaseDate;
	private String arr;
	private String director;
	private String actor;

	private int quantity;
	
	public Movie() {
		super();
	}

	public Movie(String movieId, String mname) {
		this.movieId = movieId;
		this.mname = mname;
	}
	
	public String getArr() {
		return arr;
	}

	public void setArr(String arr) {
		this.arr = arr;
	}
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getTimeAndAge() {
		return timeAndAge;
	}

	public void setTimeAndAge(String timeAndAge) {
		this.timeAndAge = timeAndAge;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	
	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}
	
}
