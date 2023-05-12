/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function fnEmpPopUp(URL,h,w)
	{ 
		var strTitle ='Details';
		var strUrl = URL;
		var strOptions= 'menubar=no,toolbar=no,scrollbars=Yes,status=no,resizable=yes,height='+h+',width='+w+',left=300,top=0';
		window.open(strUrl,strTitle,strOptions).focus();
	}