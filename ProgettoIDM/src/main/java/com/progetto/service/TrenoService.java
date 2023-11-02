package com.progetto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.progetto.dao.TrenoDAO;
import com.progetto.eccezioni.TrenoUniversalException;
import com.progetto.model.Treno;
import com.progetto.vagoni.PostoASedere;
import com.progetto.vagoni.Vagone;

@Service
public class TrenoService {

	@Autowired
	TrenoDAO trenoDAO;

	public void addTrenoFR(String stringa) throws TrenoUniversalException {
		trenoDAO.addTrenoFR(stringa);
	}
	
	public void addTrenoTN(String stringa) throws TrenoUniversalException {
		trenoDAO.addTrenoTN(stringa);
	}

	public List<Treno> getAllTreno() {
		return trenoDAO.getAllTreno();
	}

	public Treno getTrenoById(Long id) {
		return trenoDAO.getTrenoById(id);
	}

	public List<Vagone> getAllVagoniByTrenoId(Long id){
		return trenoDAO.getAllVagoniByTrenoId(id);
	}
	
	public List<Vagone> getAllVagoniPasseggeriByTrenoId(Long id){
		return trenoDAO.getAllVagoniPasseggeriByTrenoId(id);
	}
	
	public List<PostoASedere> getAllPostiByVagoneId(Long id){
		return trenoDAO.getAllPostiByVagoneId(id);
	}
	
	public void updateTreno(Treno treno) {
		trenoDAO.updateTreno(treno);
	}

	public void deleteTreno(Long id) {
		trenoDAO.deleteTreno(id);
	}
}