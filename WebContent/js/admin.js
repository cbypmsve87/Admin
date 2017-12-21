     
    function openPage(str){
    	if(str == null)
    		return;
    	var hrefStr = sessionStorage.getItem(str);  
    	$("iframe").attr("src", hrefStr);
    };
    
    //<!-- 自动适应高度 -->
    function reinitIframe(){
		var iframe = document.getElementById("page-other");
		try{
			var bHeight = iframe.contentWindow.document.body.scrollHeight;
			var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
			var height = Math.max(bHeight, dHeight);
			iframe.height = height;
			}
		catch (ex){}
		}

	 function clearSeesion(){
		 var tokenStr = sessionStorage.getItem("token");
		 var linkStr  = "page-login.html" + tokenStr;
		 window.location.href = linkStr;
		 sessionStorage.clear();
	 };