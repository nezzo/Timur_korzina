$(document).ready(function(){
  var quantity = parseInt($(".input_quantity").val(), 10);
  
  
  //-1 в количестве корзина
 $(".minus").click(function(){
   quantity = isNaN(quantity) ? 0 : quantity;
   if (quantity > 0 ) {
     //--quantity;
    $(".input_quantity").val(--quantity);
    }
    
   
  });
 
 
  //+1 в количестве корзина
  $(".plus").click(function(){
    quantity = isNaN(quantity) ? 0 : quantity;
    //quantity++;
    $(".input_quantity").val(quantity++);
    
  });
  
 
  
});