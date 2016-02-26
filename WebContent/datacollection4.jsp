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
            <li ><a href="/LegalMapping/Controller?action=home2">Home</a></li>
            <li class="visited-menu"><a href="/LegalMapping/Controller?action=datacollection">Data Collection Tool</a></li>
            <li ><a href="/LegalMapping/Controller?action=analytical">Analytical Tool</a></li>
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

         <form action="Controller?action=datacollection4" method="POST">
            <input type="hidden" name="country" value="<%out.print(countryname);%>">
            <div id="content-sectiontitle">
               <p>D. Obstacles to Being Able to Enjoy Rights</p>
            </div>
            <div id="content-question">
               <p>1. For each of the rights listed below, please indicate if there are obstacles that prevent refugees from enjoying them. For
                  each obstacle, indicate if there are "None", "Some" or "Many".</p>
            </div>
            <div id="content-question-answer-3">
               <table>
                  <thead>

                     <tr>
                        <th class='col1'>Rights Group</th>
                        <th class='col2'>Legal Status Obstacles</th>
                        <th class='col3'>Financial Obstacles</th>
                        <th class='col4'>Documentation Obstacles</th>
                        <th class='col5'>Geographic Obstacles</th>
                        <th class='col6'>Administrative Obstacles</th>
                        <th class='col7'>Security Obstacles</th>
                        <th class='col8'>Discrimination Obstacles</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>Right of Asylum</td>

                        <td class="centered-cell"><select name="asllegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="aslfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="asldoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="aslgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="asladmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="aslsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="asldis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                     </tr>
                     <tr>
                        <td>Non-Refoulement</td>

                        <td class="centered-cell"><select name="reflegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="reffin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="refdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="refgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="refadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="refsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="refdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Access to Justice</td>

                        <td class="centered-cell"><select name="juslegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jusfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jusdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jusgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jusadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jussec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="jusdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Documentation</td>

                        <td class="centered-cell"><select name="doclegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="docdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Life and Physical Integrity</td>

                        <td class="centered-cell"><select name="lifelegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifefin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifedoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifegeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifeadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifesec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="lifedis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Nationality</td>
                        <td class="centered-cell"><select name="natlegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="natdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Freedom of Movement</td>
                        <td class="centered-cell"><select name="movlegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="movdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Freedom of Association and Assembly</td>
                        <td class="centered-cell"><select name="assolegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assofin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assodoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assogeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assoadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assosec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="assodis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Freedom of Expression</td>
                        <td class="centered-cell"><select name="exprlegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="exprfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="exprdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="exprgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="expradmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="exprsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="exprdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Public Participation</td>
                        <td class="centered-cell"><select name="publegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Right to Family Unity and Unification</td>
                        <td class="centered-cell"><select name="famlegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="famdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Non-Discrimination</td>
                        <td class="centered-cell"><select name="discrlegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discrfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discrdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discrgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discradmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discrsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="discrdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Economic and Social Rights</td>
                        <td class="centered-cell"><select name="ecoscolegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscofin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscodoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscogeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscoadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscosec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="ecoscodis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Employment</td>
                        <td class="centered-cell"><select name="empllegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="emplfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="empldoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="emplgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="empladmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="emplsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="empldis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>HLP</td>
                        <td class="centered-cell"><select name="hlplegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpfin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="hlpdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Public Relief</td>
                        <td class="centered-cell"><select name="pubreflegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubreffin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubrefdoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubrefgeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubrefadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubrefsec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="pubrefdis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                     <tr>
                        <td>Education</td>
                        <td class="centered-cell"><select name="edulegal" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="edufin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="edudoc" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="edugeo" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="eduadmin" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="edusec" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>

                        <td class="centered-cell"><select name="edudis" id="1">
                              <option value=""></option>
                              <option value="Many">Many</option>
                              <option value="Some">Some</option>
                              <option value="None">None</option>
                        </select></td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <div id="submit-page">
               <p>
                  <button type="button" onclick="goBack()">Previous Page</button>
                  <input type="submit" value="Next Page" />
               </p>
            </div>

         </form>
      </div>

   </div>
</div>
<%@include file="./footer.jsp"%>