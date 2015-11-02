//切换
	 function tab(a,b)
	 {
		 $(a).click(function(){
		 var Index = $(a).index(this);
		 $(this).addClass("current").siblings().removeClass("current");
		 $(b).eq(Index).show().siblings().hide();
	     })
	 }
	 
	 if (!window.XMLHttpRequest)
	 {
		$(".mask").hide();
	 }
	 
  $(function(){
	  $(".closed").click(function(){
		 $(".pop").fadeOut(300);
		 $(".mask").fadeOut(300);
	 })
	 $(".loginB").click(function(){
		 $(".pop").fadeIn(300);
		 $(".mask").fadeIn(300);
	 })
  })	 
	 

	tab(".basic_list li",".bas_tc");
	tab(".menu li",".tab_c");
	tab(".loginTab li",".loginTag .loginCon_c");