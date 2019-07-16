$(document).ready(function() {
	$("#tauxTva").on("keyup", function() {
		tvaKeyUpFunction();
	});
});

tvaKeyUpFunction = function() {
	var prixUnitHT = $("#prixUnitaireHT").val();
	var tauxTva = $("#tauxTva").val();
	var prixUnitTTC = parseFloat(prixUnitHT) + (parseFloat(prixUnitHT) * parseFloat(tauxTva) / 100);
	$("#prixUnitaireTTC").val(prixUnitTTC);
}