<%@page import="updatedb.*"%>
<%@page import="queryPackage.*"%>
<%@page import="webmanagement.*"%>
<%@include file="./header.jsp"%>

<script>
	function updateChecks(item, option) {
		document.getElementById(item).selectedIndex = option;
	}
</script>

<div id="content-menu-container">

   <div id="left-col">
      <div id="left-index-logo">
         <a href="/<%out.print(Versioning.getVersion());%>/Controller?action=home2"><img src="./images/unhcr_logo.jpg"></a>
      </div>
      <div id="left-index">
         <ul>
            <li class="visited-menu"><a href="/LegalMapping/Controller?action=home2">Home</a></li>
            <li><a href="/LegalMapping/Controller?action=datacollection">Data Collection Tool</a></li>
            <li ><a href="/LegalMapping/Controller?action=analytical">Analytical Tool</a></li>
         </ul>
      </div>
   </div>
   <div id="content-container">

      <div id="content-title">
         <p>Legal Mapping Tool</p>
      </div>
      <div id="content">
         <div id="content-upper-section">
            <div id="content-intro-paragraph2">
               <p>
                  Welcome to the Legal Mapping Tool. <br>
                  <br>Home page under construction.
               </p>
            </div>

         </div>

      </div>
   </div>
</div>
<%@include file="./footer.jsp"%>