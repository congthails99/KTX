package com.example.app.sinhvien;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class sinhvien {
	private Long masinhvien;
	private String hoten;
	private Date ngaysinh;
	private String gioitinh;
	private String cmnd;
	private int sdt;
	private String lop;
	private String khoa;
	private String hongheo;
	
	
	public sinhvien() {
		super();
	}


	public sinhvien(Long masinhvien, String hoten, Date ngaysinh, String gioitinh, String cmnd, int sdt, String lop,
			String khoa,String hongheo) {
		super();
		this.masinhvien = masinhvien;
		this.hoten = hoten;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
		this.cmnd = cmnd;
		this.sdt = sdt;
		this.lop = lop;
		this.khoa=khoa;
		this.hongheo = hongheo;
	}


	/**
	 * @return the masinhvien
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getMasinhvien() {
		return masinhvien;
	}


	/**
	 * @param masinhvien the masinhvien to set
	 */
	public void setMasinhvien(Long masinhvien) {
		this.masinhvien = masinhvien;
	}


	/**
	 * @return the hoten
	 */
	public String getHoten() {
		return hoten;
	}


	/**
	 * @param hoten the hoten to set
	 */
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}


	/**
	 * @return the ngaysinh
	 */
	public Date getNgaysinh() {
		return ngaysinh;
	}


	/**
	 * @param ngaysinh the ngaysinh to set
	 */
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}


	/**
	 * @return the gioitinh
	 */
	public String getGioitinh() {
		return gioitinh;
	}


	/**
	 * @param gioitinh the gioitinh to set
	 */
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}


	/**
	 * @return the cmnd
	 */
	public String getCmnd() {
		return cmnd;
	}


	/**
	 * @param cmnd the cmnd to set
	 */
	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}


	/**
	 * @return the sdt
	 */
	public int getSdt() {
		return sdt;
	}


	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}


	/**
	 * @return the lop
	 */
	public String getLop() {
		return lop;
	}


	/**
	 * @param lop the lop to set
	 */
	public void setLop(String lop) {
		this.lop = lop;
	}

	
	/**
	 * @return the khoa
	 */
	public String getKhoa() {
		return khoa;
	}


	/**
	 * @param khoa the khoa to set
	 */
	public void setKhoa(String khoa) {
		this.khoa = khoa;
	}


	/**
	 * @return the hongheo
	 */
	public String getHongheo() {
		return hongheo;
	}


	/**
	 * @param hongheo the hongheo to set
	 */
	public void setHongheo(String hongheo) {
		this.hongheo = hongheo;
	}
	
	
	
	

}
	