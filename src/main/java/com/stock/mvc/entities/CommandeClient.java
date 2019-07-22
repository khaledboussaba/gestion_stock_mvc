package com.stock.mvc.entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "commande_client")
public class CommandeClient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id_commende_client")
	private Long idCommandeClient;
	
	private String codeCommande;
	
	@Temporal(TemporalType.TIMESTAMP) //prendre la date et l'heure
	private Date dateCommande;

	@ManyToOne
	@JoinColumn(name = "id_client")
	private Client client;
	
	@OneToMany(mappedBy = "commandeClient")
	private List<LigneCommandeClient> ligneCommandeClients = new ArrayList<LigneCommandeClient>();
	
	@Transient
	private BigDecimal totalCommande; //champs non persisté en base de données grace à l'annotation Transient (c'est juste un champs calculable)
	
	public CommandeClient() {
	}
	
	public Long getIdCommandeClient() {
		return idCommandeClient;
	}

	public void setIdCommandeClient(Long idCommandeClient) {
		this.idCommandeClient = idCommandeClient;
	}

	public String getCodeCommande() {
		return codeCommande;
	}

	public void setCodeCommande(String codeCommande) {
		this.codeCommande = codeCommande;
	}

	public Date getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	@JsonIgnore
	public List<LigneCommandeClient> getLigneCommandeClients() {
		return ligneCommandeClients;
	}

	public void setLigneCommandeClients(List<LigneCommandeClient> ligneCommandeClients) {
		this.ligneCommandeClients = ligneCommandeClients;
	}
	
	public BigDecimal getTotalCommande() {
		if (!ligneCommandeClients.isEmpty()) {
			for (LigneCommandeClient ligneCommandeClient : ligneCommandeClients) {
				BigDecimal totalLigne = ligneCommandeClient.getQuantite().multiply(ligneCommandeClient.getPrixUnitaire());
				totalCommande = totalCommande.add(totalLigne);
			}
		}
		return totalCommande;
	}
}
