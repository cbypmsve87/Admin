	function LoginCheck(){        	
		var userAccount = $("#userAccount").val();
		var userPassword = $("#userPassword").val();
		if (userAccount == "") {
            alert("用户名不能为空");
            return false;
        }
        else if (userPassword == "") {
            alert("密码不能为空");
            return false;
        }
        else{                		
		$.ajax({
			type:"GET",
			async : false,
			url:"/web/userLogin/user.do?account="+ userAccount +"&" + "password=" + userPassword,
			data:"",
			success: function(result){
				   if(null !=  result.user){
					   //var str = document.getElementById("userid").value;
		               //$('loginForm').attr('action','index.html'); 
		               window.location.href = 'index.html';
		               //alert("登录成功，没有查询到用户相关数据"); 
		               //sessionStorage.clear();
		               sessionStorage.setItem("userAccount",result.user.user_account);  
		               sessionStorage.setItem("userName",result.user.user_name);
		               sessionStorage.setItem("userRoleId",result.user.user_role_id);
		               sessionStorage.setItem("userCompany",result.user.user_company_name);
		               return true;
				   }else{
					   alert("登录失败，请检查您的用户与密码");
					   //$("#lab").text("登录失败，没有查询到用户相关数据");
					   return false;
					}
			    }});
		  return false;
         }
  	};