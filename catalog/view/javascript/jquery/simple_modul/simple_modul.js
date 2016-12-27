$(document).ready(function(){


  //-1 в количестве корзина
  $(".minus").click(function(){
    var quantity = parseInt($(this).parents(".quantity_object").find("input").val(), 10);
     if (quantity >= 1 ) {
      quantity--;
      $(this).parents(".quantity_object").find("input").val(quantity--);
      
       //получаем активное значение с поля (количество)
      var dat_quantity = $(this).parents(".quantity_object").find("input").val();
      var cart_id = $(this).parents(".quantity_object").find(".cart_id").text();
      
       $.ajax({
	url : 'index.php?route=checkout/cart/edit',
        type : 'POST',
        dataType:'text',
	data:{
	 dat_quantity:dat_quantity,
	 cart_id:cart_id
	},
	
	 success:function(data){
	  // console.log(data);
	   location.reload();
	},
	error:function (xhr, ajaxOptions, thrownError){
                console.log(thrownError); //выводим ошибку
            }
	
      });
       
       
       
      }
   });
 
 
  //+1 в количестве корзина
  $(".plus").click(function(){
      var quantity = parseInt($(this).parents(".quantity_object").find("input").val(), 10);
      quantity++;
      $(this).parents(".quantity_object").find("input").val(quantity++);
      
      //получаем активное значение с поля (количество)
      var dat_quantity = $(this).parents(".quantity_object").find("input").val();
      var cart_id = $(this).parents(".quantity_object").find(".cart_id").text();
      
      $.ajax({
	url : 'index.php?route=checkout/cart/edit',
        type : 'POST',
        dataType:'text',
	data:{
	 dat_quantity:dat_quantity,
	 cart_id:cart_id
	},
	
	 success:function(data){
	  // console.log(data);
	   location.reload();
	},
	error:function (xhr, ajaxOptions, thrownError){
                console.log(thrownError); //выводим ошибку
            }
	
      });
      
      
  });
  
 
  
});