$(function(){
   			$.each(province, function (k, p) { 
                var option = "<option value='" + p.ProID + "'>" + p.ProName + "</option>";
                $("#selProvince").append(option);
            });
             
            $("#selProvince").change(function () {
                var selValue = $(this).val(); 
                $("#selCity option:gt(0)").remove();
                $.each(city, function (k, p) { 
                    if (p.ProID == selValue) {
                        var option = "<option value='" + p.CityID + "'>" + p.CityName + "</option>";
                        $("#selCity").append(option);
                    }
                });
            });
             
            $("#selCity").change(function () {
                var selValue = $(this).val();
                $("#selDistrict option:gt(0)").remove(); 

                $.each(District, function (k, p) {
                    if (p.CityID == selValue) {
                        var option = "<option value='" + p.Id + "'>" + p.DisName + "</option>";
                        $("#selDistrict").append(option);
                    }
                }); 
            });
   		})
   		
   		function getOriginPro(originPro){
			var proName;
			$.each(province, function (k, p) { 
	                if(p.ProID == originPro){
	                	proName=p.ProName
	                }
	            });
			return proName
	    }
	    
	    function getOriginCity(originCity){
			var cityName;
			$.each(city, function (k, p) { 
	                if( p.CityID == originCity){
	                	cityName=p.CityName
	                }
	            });
			return cityName
	    }
	    
	    function getOriginDist(originDist){
			var disName;
			$.each(District, function (k, p) { 
	                if(p.Id == originDist){
	                	disName=p.DisName
	                }
	            });
			return disName
	    }
	   
	   
	    function selectedOriginPro(originPro){
			var proName;
			$.each(province, function (k, p) { 
	                if(p.ProID == originPro){
	                	proName=p.ProName
	                	var option = "<option value='" + originPro + "' selected=selected>" + proName + "</option>";
            			$("#selProvince").append(option);
	                }
	            });
	       	
	    }
	    
	     function selectedOriginCity(originCity){
			var cityName;
			$.each(city, function (k, p) { 
	                if( p.CityID == originCity){
	                	var option = "<option value='" + p.CityID + "' selected=selected>" + p.CityName + "</option>";
                        $("#selCity").append(option);
	                }
	            });
	    }
	    
	    function selectedOriginDist(originDist){
			var disName;
			$.each(District, function (k, p) { 
	                if(p.Id == originDist){
	                	var option = "<option value='" + p.Id + "'selected=selected>" + p.DisName + "</option>";
                        $("#selDistrict").append(option);
	                }
	            });
			return disName
	    }
   		
   		