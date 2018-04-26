package cn.tengfeistudio.math.entity;

import java.io.Serializable;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


/**
 * The persistent class for the answer database table.
 * 
 */
@Entity
@JsonIgnoreProperties(value= {"question"})
@NamedQuery(name="Answer.findAll", query="SELECT a FROM Answer a")
public class Answer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String a;

	private String aimg;

	private String b;

	private String bimg;

	private String c;

	private String cimg;

	private String d;

	private String dimg;

	private String e;

	private String eimg;

	private String f;

	private String fimg;

	private String solution;

	//bi-directional many-to-one association to Question
	@ManyToOne
	@JoinColumn(name="questionid")
	private Question question;

	public Answer() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getA() {
		return this.a;
	}

	public void setA(String a) {
		this.a = a;
	}

	public String getAimg() {
		return this.aimg;
	}

	public void setAimg(String aimg) {
		this.aimg = aimg;
	}

	public String getB() {
		return this.b;
	}

	public void setB(String b) {
		this.b = b;
	}

	public String getBimg() {
		return this.bimg;
	}

	public void setBimg(String bimg) {
		this.bimg = bimg;
	}

	public String getC() {
		return this.c;
	}

	public void setC(String c) {
		this.c = c;
	}

	public String getCimg() {
		return this.cimg;
	}

	public void setCimg(String cimg) {
		this.cimg = cimg;
	}

	public String getD() {
		return this.d;
	}

	public void setD(String d) {
		this.d = d;
	}

	public String getDimg() {
		return this.dimg;
	}

	public void setDimg(String dimg) {
		this.dimg = dimg;
	}

	public String getE() {
		return this.e;
	}

	public void setE(String e) {
		this.e = e;
	}

	public String getEimg() {
		return this.eimg;
	}

	public void setEimg(String eimg) {
		this.eimg = eimg;
	}

	public String getF() {
		return this.f;
	}

	public void setF(String f) {
		this.f = f;
	}

	public String getFimg() {
		return this.fimg;
	}

	public void setFimg(String fimg) {
		this.fimg = fimg;
	}

	public String getSolution() {
		return this.solution;
	}

	public void setSolution(String solution) {
		this.solution = solution;
	}

	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

}