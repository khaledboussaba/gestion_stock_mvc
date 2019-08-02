package com.stock.mvc.model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;

import com.stock.mvc.entities.Article;
import com.stock.mvc.entities.Client;
import com.stock.mvc.entities.CommandeClient;
import com.stock.mvc.entities.LigneCommandeClient;

@Component
public class ModelCommandeClientImpl implements ModelCommandeClient {

	private CommandeClient commande;
	private Map<Long, LigneCommandeClient> ligneCde = new HashMap<Long, LigneCommandeClient>();
	
	@Override
	public void creerCommande(Client client) {
		if (client == null) {
			return;
		}
		commande = new CommandeClient();
		commande.setClient(client);
		commande.setDateCommande(new Date());
		commande.setCodeCommande(genererCodeCommande());
	}

	@Override
	public LigneCommandeClient ajouterLigneCommande(Article article) {
		if (article == null) {
			return null;
		}
		LigneCommandeClient lc = ligneCde.get(article.getIdArticle());
		if (lc != null) {
			BigDecimal qte = lc.getQuantite().add(BigDecimal.ONE);
			lc.setQuantite(qte);
			ligneCde.put(article.getIdArticle(), lc);
		} else {
			lc = new LigneCommandeClient();
			lc.setCommandeClient(commande);
			lc.setQuantite(BigDecimal.ONE);
			lc.setPrixUnitaire(article.getPrixUnitaireTTC());
			lc.setArticle(article);
			ligneCde.put(article.getIdArticle(), lc);
		}
		return lc;
	}

	@Override
	public LigneCommandeClient supprimerLigneCommande(Article article) {
		if (article == null) {
			return null;
		}
		return ligneCde.remove(article.getIdArticle());
	}

	@Override
	public LigneCommandeClient modifierQuantite(Article article, double quantite) {
		if (article == null) {
			return null;
		}
		LigneCommandeClient lc = ligneCde.get(article.getIdArticle());
		if (lc == null) {
			return null;
		}
		lc.setQuantite(BigDecimal.valueOf(quantite));
		return lc;
	}

	@Override
	public String genererCodeCommande() {	
		return UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();//creer un identifiant unique
	}

}
