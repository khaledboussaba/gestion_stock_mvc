package com.stock.mvc.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stock.mvc.entities.Article;
import com.stock.mvc.entities.Categorie;
import com.stock.mvc.services.IArticleService;
import com.stock.mvc.services.ICategorieService;

@Controller
@RequestMapping(value = "/article")
public class ArticleController {
	
	@Autowired
	private IArticleService articleService;
	
	@Autowired
	private ICategorieService categorieService;

	@RequestMapping(value = "/")
	public String article(Model model) {
		List<Article> articles = articleService.selectAll();
		if (articles == null) {
			articles = new ArrayList<Article>();
		}
		model.addAttribute("articles", articles);
		return "article/article";
	}
	
	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String ajouterArticle(Model model) {
		Article article = new Article();
		List<Categorie> categories = categorieService.selectAll();
		if (categories == null) {
			categories = new ArrayList<Categorie>();
		}
		model.addAttribute("article", article);
		model.addAttribute("categories", categories);
		return "article/ajouterArticle";
	}
	
	@RequestMapping(value = "/enregistrer", method = RequestMethod.POST)
	public String enregistrerArticle(Model model, Article article) {

		article.setPhoto("article.jpg");
		if (article.getIdArticle() != null) {
			articleService.update(article);
		} else {
			articleService.save(article);
		}
		
		return "redirect:/article/";
	}
	
	@RequestMapping(value = "/modifier/{idArticle}")
	public String modifierArticle(Model model, @PathVariable Long idArticle) {
		if (idArticle != null) {
			Article article = articleService.getById(idArticle);
			
			List<Categorie> categories = categorieService.selectAll();
			if (categories == null) {
				categories = new ArrayList<Categorie>();
			}
			model.addAttribute("categories", categories);
			if (article != null) {
				model.addAttribute("article", article);
			}
		}
		return "article/ajouterArticle";
	}
	
	@RequestMapping(value = "/supprimer/{idArticle}")
	public String supprimerArticle(Model model, @PathVariable Long idArticle) {
		if (idArticle != null) {
			Article article = articleService.getById(idArticle);
			if(article != null) {
				//TODO verification avant suppression
				articleService.remove(idArticle);
			}
		}
		return "redirect:/article/";
	}

}
