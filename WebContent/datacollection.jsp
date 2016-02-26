<%@page import="updatedb.*"%>
<%@page import="queryPackage.*"%>
<%@include file="./header.jsp"%>

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

         <form action="Controller?action=datacollection" method="POST">
            <div id="content-sectiontitle">
               <p>A. Country Background Information</p>
            </div>
            <div id="content-question">
               <p>1. Please enter the name of the country and region you are operating in.</p>
            </div>
            <div id="content-question-answer">
               <p>
                  Country: <input type="text" name="country"><br> Region:&nbsp;&nbsp; <input type="text" name="region">
               </p>
            </div>
            <div id="content-sectiontitle">
               <p>B. Overview of the Legal Framework of the Country</p>
            </div>

            <div id="content-question">
               <p>1. Does your country have a constitution? Please select "Yes" or "No".</p>
            </div>
            <div id="content-question-answer">
               <p>
                  <input type="radio" name="constitutionyesno" value="yes">Yes<br> <input type="radio" name="constitutionyesno" value="no">No
               </p>
            </div>
            <div id="content-question">
               <p>2. What basic rights does the constitution guarantee for refugees?</p>
            </div>
            <div id="content-question-answer">
               <p>
                  <textarea name="basicrights"></textarea>
               </p>
            </div>
            <div id="content-question">
               <p>3. Please enter the main international instruments that your country has ratified.</p>
            </div>
            <div id="content-question-answer">
               <p>
                  <input type="text" name="intl_instrument_rat" />
               </p>
               <div id="b3"></div>
               <p>
                  <input onclick="addRow(this.form, 'b3');" type="button" value="Add Instrument" />
               </p>
            </div>
            <div id="content-question">
               <p>4. What judicial entities/courts exist in the country? Do the refugees have access to these entities/courts?</p>
            </div>
            <div id="content-question-answer">
               <p>
                  <input type="text" name="entities_courts" />
               </p>
               <div id="b4"></div>
               <p>
                  <input onclick="addRow(this.form, 'b4');" type="button" value="Add Entity/Court" />
               </p>
            </div>
            <div id="submit-page">
               <p><input type="submit" value="Next Page" /></p>
            </div>

         </form>
      </div>

   </div>
</div>
<%@include file="./footer.jsp"%>