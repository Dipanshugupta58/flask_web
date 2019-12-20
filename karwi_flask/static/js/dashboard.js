$(document).ready(function(){
  $(".col-sm-10").hide();
  $("#display_feedback_record").show();
  
  $("#disp_feedback").click(function(){
    $(".col-sm-10").hide();
    $("#display_feedback_record").show();
  });
   $("#disp_client").click(function(){
    $(".col-sm-10").hide();
    $("#display_client_record").show();
  });

   $("#disp_product").click(function(){
    $(".col-sm-10").hide();
    $("#display_product_record").show();
  });

  $("#ins_client").click(function(){
    $(".col-sm-10").hide();
    $("#client_insert").show();
  });
   
  $("#ins_product").click(function(){    
    $(".col-sm-10").hide();
    $("#product_insert").show();
    
  });
  

   

  

   


   


});