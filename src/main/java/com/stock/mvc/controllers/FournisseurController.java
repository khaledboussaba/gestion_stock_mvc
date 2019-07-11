package com.stock.mvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stock.mvc.entities.Fournisseur;
import com.stock.mvc.services.IFournisseurService;

@Controller
@RequestMapping(value ="/fournisseur")
public class FournisseurController {

	@Autowired
	private IFournisseurService fournisseurService;
	
	@RequestMapping(value  = "/")
	public String fournisseur(Model model) {
		List<Fournisseur> fournisseurs = fournisseurService.selectAll();
		if (fournisseurs == null) {
			fournisseurs = new ArrayList<Fournisseur>();
		}
		model.addAttribute("fournisseurs", fournisseurs);
		return "fournisseur/fournisseur";
	}
	
	
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String ajouterFournisseur(Model model) {
		Fournisseur fournisseur = new Fournisseur();
		model.addAttribute(fournisseur);
		return "fournisseur/ajouterFournisseur";
	}

	@RequestMapping(value = "/enregistrer", method = RequestMethod.POST)
	public String enregistrerFournisseur(Model model, Fournisseur fournisseur) {

		
		if (fournisseur.getIdFournisseur() != null) {
			fournisseurService.update(fournisseur);
		} else {
			fournisseur.setPhoto("f1.png");
			fournisseurService.save(fournisseur);
		}
		return "redirect:/fournisseur/";
	}
	
	@RequestMapping(value = "/modifier/{idFournisseur}")
	public String modifierFournisseur(Model model, @PathVariable Long idFournisseur) {
		if (idFournisseur != null) {
			Fournisseur fournisseur = fournisseurService.getById(idFournisseur);
			if (fournisseur != null) {
				model.addAttribute(fournisseur);
			}
		}
		return "fournisseur/ajouterFournisseur";
	}
	
	@RequestMapping(value = "/supprimer/{idFournisseur}")
	public String supprimerFournisseur(Model model, @PathVariable Long idFournisseur) {
		if (idFournisseur != null) {
			Fournisseur fournisseur = fournisseurService.getById(idFournisseur);
			if(fournisseur != null) {
				//TODO verification avant suppression
				fournisseurService.remove(idFournisseur);
			}
		}
		return "redirect:/fournisseur/";
	}
	
	
}
