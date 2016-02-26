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

         <form action="Controller?action=datacollection5" method="POST">
            <input type="hidden" name="country" value="<%out.print(countryname);%>">
            <div id="content-sectiontitle">
               <p>E. Active Violation of Rights</p>
            </div>
            <div id="content-question">
               <p>1. For each of the statements below, regarding the violation of refugee rights, please indicate if you "Strongly Disagree",
                  "Disagree", are "Undecided", "Agree" or "Strongly Agree" with them.</p>

            </div>
            <div id="content-question-answer-4">
               <table>
                  <thead>

                     <tr>
                        <th class='col1'>Statement Regarding the Violation of Refugee Rights</th>
                        <th class='col2'>Strongly Disagree</th>
                        <th class='col3'>Disagree</th>
                        <th class='col4'>Undecided</th>
                        <th class='col5'>Agree</th>
                        <th class='col6'>Strongly Agree</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>The rights of refugees are consistently violated in a systematic and/or widespread manner.</td>
                        <td class='center'><input type="radio" name="widespreadviol" value="StronglyDisagree"></td>
                        <td class='center'><input type="radio" name="widespreadviol" value="Disagree"></td>
                        <td class='center'><input type="radio" name="widespreadviol" value="Undecided"></td>
                        <td class='center'><input type="radio" name="widespreadviol" value="Agree"></td>
                        <td class='center'><input type="radio" name="widespreadviol" value="StronglyAgree"></td>
                     </tr>
                     <tr>
                        <td>There are systematic or repeated violations of the rights of refugees resulting from the direct action/inaction of
                           authorities that support the implementation of relevant laws.</td>
                        <td class='center'><input type="radio" name="violauthorities" value="StronglyDisagree"></td>
                        <td class='center'><input type="radio" name="violauthorities" value="Disagree"></td>
                        <td class='center'><input type="radio" name="violauthorities" value="Undecided"></td>
                        <td class='center'><input type="radio" name="violauthorities" value="Agree"></td>
                        <td class='center'><input type="radio" name="violauthorities" value="StronglyAgree"></td>
                     </tr>

                     <tr>
                        <td>There are systematic and repeated violations of the rights of refugees by third parties (i.e. the host communities,
                           military agencies or economic players).</td>
                        <td class='center'><input type="radio" name="violthird" value="StronglyDisagree"></td>
                        <td class='center'><input type="radio" name="violthird" value="Disagree"></td>
                        <td class='center'><input type="radio" name="violthird" value="Undecided"></td>
                        <td class='center'><input type="radio" name="violthird" value="Agree"></td>
                        <td class='center'><input type="radio" name="violthird" value="StronglyAgree"></td>
                     </tr>
                     <tr>
                        <td>The rights of refugees are violated as a result of discriminatory practices, rules, measures and policies.</td>
                        <td class='center'><input type="radio" name="violdiscrim" value="StronglyDisagree"></td>
                        <td class='center'><input type="radio" name="violdiscrim" value="Disagree"></td>
                        <td class='center'><input type="radio" name="violdiscrim" value="Undecided"></td>
                        <td class='center'><input type="radio" name="violdiscrim" value="Agree"></td>
                        <td class='center'><input type="radio" name="violdiscrim" value="StronglyAgree"></td>
                     </tr>
                     <tr>
                        <td>Refugees have the same access as nationals and foreigners to legal remedies that would resolve violations of their rights. </td>
                        <td class='center'><input type="radio" name="sameaccess" value="StronglyDisagree"></td>
                        <td class='center'><input type="radio" name="sameaccess" value="Disagree"></td>
                        <td class='center'><input type="radio" name="sameaccess" value="Undecided"></td>
                        <td class='center'><input type="radio" name="sameaccess" value="Agree"></td>
                        <td class='center'><input type="radio" name="sameaccess" value="StronglyAgree"></td>
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