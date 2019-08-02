<%@ include file="/WEB-INF/views/includes/includes.jsp" %>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Gestion du stock</title>

<!-- Custom fonts for this template-->
<link
	href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<%@ include file="/WEB-INF/views/menu_left/leftMenu.jsp"%>
		<!-- End of Sidebar -->
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="/WEB-INF/views/menu_top/topMenu.jsp"%>

				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-4 text-gray-800"><fmt:message code="commande.client.nouveau" /></h1>

				</div>
				<!-- /.container-fluid -->
				
				<div class="row" style="margin: 10px;">
					<div class="col-lg-12">
						<div class="panel panel-primary">
							<div class="panel-heading">
								
							</div>
							<div class="panel-body">
								<form action="" enctype="multipart/form-data" role="form" >
									<div class="form-group">
										<label><fmt:message code="commande.code"/></label>
										<input class="form-control" placeholder="Code" value="${codeCde }" disabled="disabled" />
									</div>
									<div class="form-group">
										<label><fmt:message code="commande.date"/></label>
										<input class="form-control" placeholder="Date" value="${dateCde }" disabled="disabled" />
									</div>
									<div class="form-group">
										<label><fmt:message code="common.client"/></label>
										<select class="form-control" id="listClients">
											<c:forEach items="${clients }" var="clt">
												<option value="${clt.getIdClient() }">${clt.getNom() }&nbsp;${clt.getPrenom() }</option>
											</c:forEach>
										</select>
									</div>
									<div class="panel-footer">
										<button type="submit" class="btn btn-primary"><i class="fa fa-save">&nbsp;<fmt:message code="common.enregistrer"/></i></button>
										<a href='<c:url value="/commandeClient/" />' class="btn btn-secondary"><i class="fa fa-undo">&nbsp;<fmt:message code="common.annuler"/></i></a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="card shadow mb-4">
			
		            <div class="card-header py-3">
		              <h6 class="m-0 font-weight-bold text-primary"><fmt:message code="commande.client.detail" /></h6>
		            </div>
		            <div class="card-body" style="margin: 10px;">
		              <div class="table-responsive">
		                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		                  <thead>
		                    <tr>
		                      <th><fmt:message code="common.article" /></th>
		                      <th><fmt:message code="common.qte" /></th>
		                      <th><fmt:message code="article.prix.unitaire.ttc" /></th>
		                      <th><fmt:message code="commande.total" /></th>
		                    </tr>
		                  </thead>
		                  
		                  <tbody id="detailNouvelleCommande">
		                  	  <tr></tr>   	
		                  </tbody>
		                </table>
		              </div>
		            </div>
				</div>
				
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="/WEB-INF/views/footer/footer.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<%@ include file="/WEB-INF/views/logout/logout.jsp"%>
	
	

	<!-- Bootstrap core JavaScript-->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>

</body>

</html>
