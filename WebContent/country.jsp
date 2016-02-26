<%@page import="updatedb.*"%>
<%@page import="queryPackage.*"%>
<%@include file="./header.jsp"%>

<script>
	function updateChecks(item, option) {
		document.getElementById(item).selectedIndex = option;
	}
</script>

<div id="content-menu-container">

   <div id="left-col">
      <div id="left-index-logo">
         <a href="/LegalMapping/Controller?action=home"><img src="./images/unhcr_logo.jpg"></a>
      </div>
      <div id="left-index">
         <ul>
            <li class="visited-menu"><a href="/LegalMapping/Controller?action=home">Home</a></li>
            <li><a href="/LegalMapping/Controller?action=maps">View Map</a></li>
            <li><a href="/LegalMapping/Controller?action=reports">Reports</a></li>
            <li><a href="/LegalMapping/Controller?action=admin">Administration</a></li>
         </ul>
      </div>
   </div>
   <div id="content-container">

      <div id="content-title">
         <p>Legal Mapping Tool</p>
      </div>
      <div id="content">
         <div id="content-upper-section">
            <div id="content-intro-paragraph">
               <p>
                  Welcome to the <%out.print(request.getParameter("country")); %> page. <br>
                  <br>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                  aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
               </p>
            </div>
            <div id="content-intro-documents-table">

               <p>Useful Documents</p>
               <br>
               <table id='usefuldocs' class='tablesorter'>
                  <thead>
                     <tr>
                        <th><%out.print(request.getParameter("country")); %> </th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td><a href="./files/International Law Guidelines.pdf" target="_blank">UNHCR Legal Guidelines</a></td>
                     </tr>
                     <tr>
                        <td>User Guides (No Link Yet)</td>
                     </tr>
                  </tbody>
               </table>

            </div>
         </div>
         <div id="content-intro-data-table">
            <p>Overview by Country</p>
            <br>
            <form action="index.jsp">
               <table id='ovcountry' class='tablesorter'>
                  <thead>
                     <tr>
                        <th class='col1'>Country &nbsp;&nbsp;&#9650;&#9660;</th>
                        <th class='col2'>Region &nbsp;&nbsp;&#9650;&#9660;</th>
                        <th class='col3'>Rights Groups &nbsp;&nbsp;&#9650;&#9660;</th>
                     </tr>
                  </thead>
                  <tbody>
                     <%
                     	out.print(QueryDB.getGlobalCountries());
                     %>
                  </tbody>
               </table>
            </form>
            <br> <br>
         </div>
      </div>
   </div>
</div>
<%@include file="./footer.jsp"%>