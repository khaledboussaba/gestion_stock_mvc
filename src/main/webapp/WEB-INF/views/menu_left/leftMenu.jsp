<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
		<div class="sidebar-brand-icon rotate-n-15"></div>
		<div class="sidebar-brand-text mx-3">Gestion de Stock</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<c:url value="/home/" var="home"/>
	<li class="nav-item">
		<a class="nav-link" href="${home }"> 
			<i class="fas fa-fw fa-tachometer-alt"></i> 
			<fmt:message code="common.dashbord" />
		</a>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">
	
	<c:url value="/article/" var="article"/>
	<li class="nav-item">
		<a class="nav-link" href="${article }"> 
			<i class="fas fa-fw fa-newspaper"></i> 
			<fmt:message code="common.article" />
		</a>
	</li>

	<!-- Nav Item - Pages Collapse Menu -->
	
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClient" aria-expanded="true" aria-controls="#collapseClient"> 
			<i class="fas fa-fw fa-users"></i> 
			<fmt:message code="common.client" />
		</a>
		<div id="collapseClient" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/client/" var="client"/>
				<a class="collapse-item" href="${client }">
					<fmt:message code="common.client" />
				</a> 
				<c:url value="/commandeClient/" var="cdeClient"/>
				<a class="collapse-item" href="${cdeClient }">
					<fmt:message code="common.client.commande" />
				</a>
			</div>
		</div>
	</li>

	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFournisseur" aria-expanded="true" aria-controls="#collapseFournisseur"> 
			<i class="fas fa-fw fa-people-carry"></i> 
			<fmt:message code="common.fournisseur" />
		</a>
		<div id="collapseFournisseur" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/fournisseur/" var="fournisseur"/>
				<a class="collapse-item" href="${fournisseur }">
					<fmt:message code="common.fournisseur" />
				</a> 
				<c:url value="/commandeFournisseur/" var="cdeFournisseur"/>
				<a class="collapse-item" href="cdeFournisseur">
					<fmt:message code="common.fournisseur.commande" />
				</a>
			</div>
		</div>
	</li>

	<c:url value="/stock/" var="stock"/>
	<li class="nav-item">
		<a class="nav-link" href="${stock }"> 
			<i class="fas fa-fw fa-cubes"></i> 
			<fmt:message code="common.stock" />
		</a>
	</li>
	
	<c:url value="/vente/" var="vente"/>
	<li class="nav-item">
		<a class="nav-link" href="${vente }"> 
		<i  class="fas fa-fw fa-cart-arrow-down"></i> 
			<fmt:message code="common.vente" />
		</a>
	</li>



	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
			<i class="fas fa-fw fa-wrench"></i> 
			<fmt:message code="common.parametrage" />
		</a>
		<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<c:url value="/utilisateur/" var="utilisateur"/>
				<a class="collapse-item" href="${utilisateur }">
					<fmt:message code="common.parametrage.utilisateur" />
				</a> 
				<c:url value="/categorie/" var="categorie"/>
				<a class="collapse-item" href="${categorie }">
					<fmt:message code="common.parametrage.categorie" />
				</a>
			</div>
		</div>
	</li>

</ul>
