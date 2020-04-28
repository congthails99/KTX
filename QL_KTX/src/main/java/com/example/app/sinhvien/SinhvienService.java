package com.example.app.sinhvien;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class SinhvienService {
	@Autowired
	private SinhvienRepository repo;
	public List<sinhvien> listAll(){
		return repo.findAll();
	}
	public void save(sinhvien sinhvien) {
		repo.save(sinhvien);
	}
	public sinhvien get(long masinhvien) {
		return repo.findById(masinhvien).get();
	}
	public void delete(long masinhvien) {
		repo.deleteById(masinhvien);
	}
}
