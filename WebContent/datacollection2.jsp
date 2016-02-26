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

         <form action="Controller?action=datacollection2" method="POST">
            <input type="hidden" name="country" value="<%out.print(countryname);%>">
            <div id="content-sectiontitle">
               <p>C. Legal Framework for Rights Groups</p>
            </div>
            <div id="content-subsectiontitle">
               <p>Right of Asylum</p>
            </div>
            <div id="content-question">
               <p>1. Has the country ratified international, regional, bilateral, national or local (by-laws) legal instruments that pertain to a
                  refugee's Right of Asylum? Please select "Yes" or "No".</p>
            </div>
            <div id="content-question-answer">
               <p>
                  <input type="radio" name="ratifiedyesno" value="yes">Yes<br> <input type="radio" name="ratifiedyesno" value="no">No
               </p>
            </div>
            <div id="content-question">
               <p>2. If you answered "yes" to the previous question, in the following table please list each instrument; answer the questions at
                  the top of the table; include any relevant links; and upload any relevant documents.</p>
            </div>
            <div id="content-question-answer-2">
               <table>
                  <thead>

                     <tr>
                        <th class='col1'>Legal Instruments Relevant to the Right of Asylum and Ratified by the Country</th>
                        <th class='col2'>Type of Instrument</th>
                        <th class='col3'>Is the granting of the Right of Asylum to refugees clearly stated in the Instrument?</th>

                        <th class='col4'>Does the Instrument formally guarantee the Right of Asylum to refugees?</th>
                        <th class='col5'>Does the Instrument restrict a refugee's enjoyment of the Right of Asylum?</th>
                        <th class='col6'>Does the Instrument explicitly say that a refugee's Right of Asylum is different from a foreigners' or
                           an aliens'?</th>
                        <th class='col7'>Is the Instrument formally implemented in the country?</th>
                        <th class='col8'>Relevant Links</th>
                        <th class='col9'>Upload Relevant Files</th>

                     </tr>
                  </thead>
                  <tbody>
                     <tr id='lastrow'>
                        <td><input type="text" name="instrumentname" size="30"></td>

                        <td><input type="radio" name="instrumenttype" value="International">International <br> <input type="radio"
                           name="instrumenttype" value="Regional">Regional <br> <input type="radio" name="instrumenttype"
                           value="Bilateral">Bilateral <br> <input type="radio" name="instrumenttype" value="National">National <br>
                           <input type="radio" name="instrumenttype" value="Local">Local (By-law)</td>

                        <td><input type="radio" name="cleargrantingyesno" value="yes">Yes <br> <input type="radio"
                           name="cleargrantingyesno" value="yes">Partially <br> <input type="radio" name="cleargrantingyesno" value="no">No</td>

                        <td><input type="radio" name="formalyesno" value="yes">Yes <br> <input type="radio" name="formalyesno"
                           value="yes">Partially <br> <input type="radio" name="formalyesno" value="no">No</td>

                        <td><input type="radio" name="restrictyesno" value="yes">Yes <br> <input type="radio" name="restrictyesno"
                           value="yes">Partially <br> <input type="radio" name="restrictyesno" value="no">No</td>

                        <td><input type="radio" name="explicityesno" value="yes">Yes <br> <input type="radio" name="explicityesno"
                           value="no">No</td>

                        <td><input type="radio" name="formalimplyesno" value="yes">Yes <br> <input type="radio"
                           name="formalimplyesno" value="yes">Partially <br> <input type="radio" name="formalimplyesno" value="no">No</td>

                        <td><input type="text" name="instrumentlinks" size="20"></td>
                        <td>Under Construction</td>
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