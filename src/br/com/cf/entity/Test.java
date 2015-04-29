package br.com.cf.entity;

import java.io.Serializable;

public class Test implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2128443291229574541L;
	private int id;
	private String name;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
