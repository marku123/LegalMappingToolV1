<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UNHCR Legal Mapping Tool</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" media="screen">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/tablesorter/jquery.tablesorter.js"></script>
</head>
<body>
   <div id="wrapper">
      <div id="top">
         <p>UNHCR Digital Workspace</p>
      </div>
      <div id="topnav">

         <ul>
         </ul>

      </div>

      <script>
      $(document).ready(function() {
          $("#usefuldocs").tablesorter();
      });
      $(document).ready(function() {
          $("#ovcountry").tablesorter();
      });

      $(document).ready(function() {
          $("#uploadformbutton3").click(function() {
              $("#uploadform3").toggle(1000);
          });
      });

      $(document).ready(function() {
          $("#uploadformbutton4").click(function() {
              $("#uploadform4").toggle(1000);
          });
      });

      function addRow(frm, div) {
          
          if (div == 'b3'){
              var row = '<p><input type="text" name="intl_instrument_rat"> </p>';
              jQuery('#b3').append(row);
          } else if (div == 'b4'){
              var row = '<p><input type="text" name="entities_courts"> </p>';
              jQuery('#b4').append(row);              
          } 
          
      }
      
      function goBack() {
          history.go(-1);
          return true;
      }
      

</script>