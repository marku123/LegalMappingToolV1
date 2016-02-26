<%@page import="updatedb.*"%>
<%@include file="./header.jsp"%>

<script>
	function updateChecks(item, option) {
		document.getElementById(item).selectedIndex = option;
	}
</script>

<div id="content-menu-container">

   <div id="left-col">
      <div id="left-index-logo">
         <a href="/LegalMapping/Controller?action=home"><img
            src="./images/unhcr_logo.jpg"></a>
      </div>
      <div id="left-index">
         <div id="left-index-list">
            <ul>
               <li><a href="/LegalMapping/Controller?action=home">Home</a></li>
               <li><a href="/LegalMapping/Controller?action=maps">View
                     Map</a></li>
               <li><a
                  href="/LegalMapping/Controller?action=reports">Reports</a></li>
               <li class="visited-menu"><a
                  href="/LegalMapping/Controller?action=admin">Administration</a></li>
            </ul>
         </div>
      </div>
   </div>
   <div id="content-container">

      <div id="content-title">
         <p>Legal Mapping Tool</p>
      </div>
      <div id="content">

         <div id="content-intro-paragraph">
            <p>Administration page under construction.</p>
         </div>

      </div>

   </div>
</div>
<%@include file="./footer.jsp"%>


