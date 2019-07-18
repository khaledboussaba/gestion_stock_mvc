<%@ include file="/WEB-INF/views/includes/includes.jsp"%>
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
	
<!-- Custom styles for this page -->
  <link href="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

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
					<h1 class="h3 mb-4 text-gray-800"><fmt:message code="common.parametrage.categorie" /></h1>

				</div>
				
				
				
				<!-- ********************** Data Table *********************** -->
			<div class="row">
			<div class="col-lg-12">
					  <ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href='<c:url value="/categorie/nouveau" />'><i class="fa fa-plus">&nbsp;<fmt:message code="common.ajouter"/></i></a></li>
					    <li class="breadcrumb-item"><a href="#"><i class="fa fa-upload">&nbsp;<fmt:message code="common.exporter"/></i></a></li>
					    <li class="breadcrumb-item"><a href="#"><i class="fa fa-download">&nbsp;<fmt:message code="common.importer"/></i></a></li>
					  </ol>
			</div>
			</div>
			
			<div class="card shadow mb-4">
			
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"><fmt:message code="categorie.liste" /></h6>
            </div>
            <div class="card-body" style="margin: 10px;">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th><fmt:message code="categorie.code" /></th>
                      <th><fmt:message code="categorie.description" /></th>
                      <th><fmt:message code="common.actions" /></th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  	
                  	<c:forEach items="${categories }" var="categorie">
	                    <tr>
	                      <td>${categorie.getCodeCategorie() }</td>
	                      <td>${categorie.getDescription() }</td>
	                      <td>
		                      <c:url value="/categorie/modifier/${categorie.getIdCategorie() }" var="urlModif"></c:url>
		                      	<a href="${urlModif }"><i class="fa fa-edit">&nbsp;<fmt:message code="common.modifier"/></i></a>
		                      	&nbsp;|&nbsp;
		                      	<a href="javascript:void(0);" data-toggle="modal" data-target="#modalCategorie${categorie.getIdCategorie() }"><i class="fa fa-trash-alt">&nbsp;<fmt:message code="common.supprimer"/></i></a>
		                      
		                      
		                      <div class="modal fade" id="modalCategorie${categorie.getIdCategorie() }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel"><fmt:message code="common.confirm.suppression"/></h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								      	<fmt:message code="common.confirm.suppression.msg"/>&nbsp;<label>${categorie.getCodeCategorie() } ?</label>
								      </div>
								      <div class="modal-footer">
								      	<c:url value="/categorie/supprimer/${categorie.getIdCategorie() }" var="urlSuppression"></c:url>
								        <a href="${urlSuppression }" class="btn btn-danger"><i class="fa fa-trash-alt"></i>&nbsp;<fmt:message code="common.supprimer"/></a>
								        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa fa-undo"></i>&nbsp;<fmt:message code="common.annuler"/></button>
								      </div>
								    </div>
								  </div>
							</div>
	                     </td>
	                    </tr>
                  	</c:forEach>
                  	
                  </tbody>
                </table>
              </div>
            </div>
				
				
				
				
				
				
				
				<!-- ********************************************* -->
				
		
				<!-- /.container-fluid -->

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
	<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>
	
	<!-- Page level plugins -->
 	<script src="<%=request.getContextPath()%>/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  	<script src="<%=request.getContextPath()%>/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  	<!-- Page level custom scripts -->
  	<script src="<%=request.getContextPath()%>/resources/js/demo/datatables-demo.js"></script>

</body>

</html>
