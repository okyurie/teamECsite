package jp.co.internous.react.model.form;

import java.io.Serializable;

public class SearchForm implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private long category;
	private String keywords;
	
	
	public long getCategory() {
		return category;
	}
	public void setCategory(long category) {
		this.category = category;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
}
