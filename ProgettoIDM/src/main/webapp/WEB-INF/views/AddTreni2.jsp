<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Crea treno</title>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3">

		<h1>Inserisci treni</h1>
		<form id="insertForm" action="AddTreni" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="Scegli marca">Scegli marca</label>
						<br> 
						<input  type="radio" id="FR" name="marca" value="FR" checked="checked">
						<label onclick="leggiValoreMarca()" for="FR">Freccia Rossa</label>
						<input type="radio" id="TN" name="marca" value="TN"> <label for="TN">TreNord</label><br>
						<br> 
						
						
						<br> <label for="composizione treno">Composizione
							treno</label>
						<button id="btnSvuota" onclick="SvuotaClick('')"
							class="btn btn-primary">Svuota</button>
							
							 <input type="text"
							class="form-control" id="ComposizioneTreno" name="ComposizioneTreno"
							placeholder="ComposizioneTreno">
					</div>

					
				</div>
			</div>
			<a href="${pageContext.request.contextPath }/"
				class="btn btn-warning"> Indietro </a>
			<button type="submit" id="ins" class="btn btn-primary">Inserisci</button>
		</form>
	</div>
	<script>
	
	function leggiValoreMarca() {
        // Ottieni l'elemento radio selezionato
        var radioSelezionato = document.querySelector('input[name="marca"]:checked');

        if (radioSelezionato) {
            var valoreSelezionato = radioSelezionato.value;
            console.log("Valore selezionato: " + valoreSelezionato);
        } else {
            console.log("Nessun valore selezionato");
        }
    }
	
	function CheckForm() {
	    let StringaTreno = document.getElementById('ComposizioneTreno').value;
	    if (StringaTreno.length === 0) {
	        window.alert("Inserisci una stringa");
	         // Impedisce l'invio del modulo
	       
	    }
	    leggiValoreMarca()
	    
	    //return true; // Consente l'invio del modulo
	}
	
	</script>
</body>
</html>