package com.Entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Notes")
public class Note {

	@Id
	@Column(name = "Id")
	private int id;

	@Column(name = "Title")
	private String title;

	@Column(name = "Content" , length = 1500)
	private String content;

	@Column(name = "Date")
	private Date addedDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Note(String title, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(1000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}

}
