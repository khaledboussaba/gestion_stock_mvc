package com.stock.mvc.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ligne_commande_client")
public class LigneCommandeClient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id_ligne_commande_client")
	private Long idLigneCommandeClient;

	@ManyToOne
	@JoinColumn(name = "id_article")
	private Article article;
	
	@ManyToOne
	@JoinColumn(name = "id_commande_client")
	private CommandeClient commandeClient;
	
	public LigneCommandeClient() {
	}
	
	public Long getIdLigneCommandeClient() {
		return idLigneCommandeClient;
	}

	public void setIdLigneCommandeClient(Long idLigneCommandeClient) {
		this.idLigneCommandeClient = idLigneCommandeClient;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public CommandeClient getCommandeClient() {
		return commandeClient;
	}

	public void setCommandeClient(CommandeClient commandeClient) {
		this.commandeClient = commandeClient;
	}
	
}
