package com.stock.mvc.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "mouvement_stock")
public class MvtStk implements Serializable {
	private static final long serialVersionUID = 1L;
	
	public static final int ENTREE = 1;
	
	public static final int SORTIE = 2;
	
	@Id
	@GeneratedValue
	@Column(name = "id_mouvement_stock")
	private Long idMouvementStock;

	@Temporal(TemporalType.TIMESTAMP)
	private Date dateMouvement;
	
	private BigDecimal quantite;
	
	private int typeMouvement;
	
	@ManyToOne
	@JoinColumn(name = "id_article")
	private Article article;
	
	public Long getIdMouvementStock() {
		return idMouvementStock;
	}

	public void setIdMouvementStock(Long idMouvementStock) {
		this.idMouvementStock = idMouvementStock;
	}

	public Date getDateMouvement() {
		return dateMouvement;
	}

	public void setDateMouvement(Date dateMouvement) {
		this.dateMouvement = dateMouvement;
	}

	public BigDecimal getQuantite() {
		return quantite;
	}

	public void setQuantite(BigDecimal quantite) {
		this.quantite = quantite;
	}

	public int getTypeMouvement() {
		return typeMouvement;
	}

	public void setTypeMouvement(int typeMouvement) {
		this.typeMouvement = typeMouvement;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
	
}
