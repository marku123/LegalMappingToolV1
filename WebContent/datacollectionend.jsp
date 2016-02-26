<%@page import="updatedb.*"%>
<%@page import="queryPackage.*"%>
<%@include file="./header.jsp"%>

<%
	String countryname = request.getParameter("country");
%>
<div id="content-menu-container">

   <div id="left-col">
      <div id="left-index-logo">
         <a href="/LegalMapping/Controller?action=home2"><img src="./images/unhcr_logo.jpg"></a>
      </div>
      <div id="left-index">
         <ul>
            <li><a href="/LegalMapping/Controller?action=home2">Home</a></li>
            <li class="visited-menu"><a href="/LegalMapping/Controller?action=datacollection">Data Collection Tool</a></li>
            <li><a href="/LegalMapping/Controller?action=analytical">Analytical Tool</a></li>
         </ul>
      </div>
   </div>
   <div id="content-container">
      <div id="content-title">
         <p>Legal Mapping Tool</p>
      </div>
      <div id="content-subtitle">
         <p>Country Legal Protection for Refugees Data Collection</p>
      </div>
      <div id="content-datacollection">

         <form action="Controller?action=datacollection3" method="POST">
            <input type="hidden" name="country" value="<% out.print(countryname);%>">
            <div id="content-sectiontitle">
               <p>Thank you for completing the data collection section of the Legal Mapping Tool.</p>
            </div>


         </form>
      </div>
                  <div id="submit-page">
               <p>
                  <button type="button" onclick="goBack()">Previous Page</button>
               </p>
            </div>

   </div>
</div>
<%@include file="./footer.jsp"%>