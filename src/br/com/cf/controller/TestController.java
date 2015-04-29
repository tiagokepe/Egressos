package br.com.cf.controller;

import java.io.IOException;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import br.com.cf.dao.DAO;
import br.com.cf.entity.Test;

public class TestController {
	private Test test = new Test();
	public String name;
	
	public void setName(String name) {
		this.name=name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void salvar() throws IOException{
		try {
			this.test.setName(this.name);
			DAO.getInstance().save(this.test);
			FacesContext.getCurrentInstance().addMessage("", new FacesMessage("Test gravado com sucesso!"));
		} catch (Exception e) {
			FacesContext.getCurrentInstance().addMessage("", new FacesMessage("ERRO"));
		} finally {
			//FacesContext.getCurrentInstance().getExternalContext().redirect("listar_duvidas.jsp");
		}
	}

}
