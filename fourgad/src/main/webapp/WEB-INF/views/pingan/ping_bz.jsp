<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0,user-scalable=no">
<title>中国平安大礼包，25万元意外险免费送，先到先得！</title>
<meta name="keywords" content="Array" >

<%-- <link rel="stylesheet" type="text/css" href="${ctx }/static/styles/pingan_bz.css"> --%>
<link rel="stylesheet" type="text/css" href="http://rs.iadcn.com/pingan/static/zhuanpan/styles/pingan_bz.css">
<script type="text/javascript" src="http://rs.iadcn.com/pingan/static/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="http://rs.iadcn.com/pingan/static/js/jquery.cookie.js"></script>
<!--<script type="text/javascript" src="http://rs.iadcn.com/pingan/static/js/jquery.cookie.js"></script> -->
<!-- <script type="text/javascript" src="${ctx}/static/js/form_code.js"></script>  -->
<script type="text/javascript" src="http://rs.iadcn.com/pingan/static/js/form_code_cookie.js"></script>
<script type="text/javascript" src="http://rs.iadcn.com/pingan/static/zhuanpan/js/baidu_count.js"></script>
</head>
<body>

<!--***********************************************************-->

<form action="${ctx}/ping/submitGet" name="form1" method="get">
	
	<!-- <div class="popupBoxBg slidePopupBox" style="display: none;">
        <div class="popupBoxShow">
            <p>
            您获赠<b>25万元</b>平安意外险，<br>
完善信息后即可获取保单号
            </p>
        </div>
        <div class="fade"></div>
    </div> -->
<div  id="submitFormDiv2" style="display:none;">
	<div class="blackbg"></div>
	<div class="tanchuang" >
		<div class="tanchuang_input2" style="color:#666;">
			您的奖已经领取成功,下次再来吧!
		</div>
		<!-- <div class="queding_btn">
			<a id="queding_btn_xiaoshi" href="#">确&nbsp;&nbsp;&nbsp;定</a> 
		</div> -->
	</div>
</div>	 
    <div id="popupDiv" style="display:none;">
        <div class="popupBg"></div>
        <div class="popupBox">
            <h3></h3>
            <a class="sureButton" href="javascript:;" onclick="closePop()">确 定</a>
            <a class="closeIcon" href="javascript:;" onclick="closePop()"></a>
        </div>
    </div>
    <div id="wrapper" class="wrapper">
    	<div id="Panel1">
	
        <div class="topWrapperBg">
        <div class="topWrapper">
            <div class="banner">
                <img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/banner.png" alt="">
               <!--  <img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/lty_d_zy/banner_bz_zy.jpg" alt=""> -->
            </div>
            <div class="boxBg">
                <div class="defaultInputBox">
						<h3 class="addTittle">公共交通意外险：</h3>
						<label class="label47 marginBottom5">
                        <input value="1" name="kind" type="radio" id="kind_01" checked="checked" style="display:none;">                        
                        <span class="introduce" style="padding:5px 0 10px 0px;">乘公交、火车、飞机、轮船等意外伤害保障，最高保额25万元</span>
                        </label>
                </div>
                <div class="defaultTableBox">
       <input name="code" type="hidden" value="${code }" />
       <input name="ok_p" type="hidden" value="ping_bz_ok" />
       <input name="a" type="hidden" value="${a }" />
	   <input name="failure_path" type="hidden" value="ping_bz" />
                    <table width="100%" border="0">
                      <tbody><tr>
                        <td class="tittleBox">您的姓名：</td>
                        <td class="inputBox"><input value="${uname }"  id="txtName" name="uname" type="text" class="type_ShowGrey" value="如：张海冰" onfocus="if(this.value=='如：张海冰'){this.value='';this.className='type_ShowBlack'}" onblur="if(this.value==''){this.value='如：张海冰';this.className='type_ShowGrey'}"> </td>
                        <td class="labelBox">
                        <label>
                        	<input type="radio" name="ddlSex" value="男" checked="checked">男
                        </label>
                        <label>
                            <input type="radio" name="ddlSex" value="女">女
                        </label>
                        </td>
                      </tr>
                      <tr>
                        <td class="tittleBox">您的生日：</td>
                        <td colspan="2" class="inputBox">
                        <input value="${birthday }" id="txtBirthday" name="birthday" type="text" class="type_ShowGrey" value="如：19890101" onfocus="if(this.value=='如：19890101'){this.value='';this.className='type_ShowBlack'}" onblur="if(this.value==''){this.value='如：19890101';this.className='type_ShowGrey'}"></td>
                      </tr>
                      <tr>
                        <td class="tittleBox">您的手机：</td>
                        <td colspan="2" class="inputBox"><input value="${phone }" id="txtMobile" name="phone" type="text" class="type_ShowGrey" value="接收电子保单号" onfocus="if(this.value=='接收电子保单号'){this.value='';this.className='type_ShowBlack'}" onblur="if(this.value==''){this.value='接收电子保单号';this.className='type_ShowGrey'}"></td>
                      </tr>
                      <tr>
                        <td class="tittleBox">验证码：</td>
                        <td colspan="2" class="inputBox">
                        <input id="vcode" name="vryCode" type="text" class="type_ShowGrey" placeholder="请输入验证码" style="width:70%"/>
 				        <img src="${ctx}/ping/go/img" width="20%" height="30px" id="code_img" style="margin-button:0px"/>
 				        </td>
                      </tr>
                      
                    </tbody></table>
                </div>                
            </div>
        </div>
        <div class="defaultButton">
        <a onclick="checkForm('s')" id="btn_submit" class="button lingqu_btn">免费领取 <span>(一份保障)</span></a>
        </div>
        </div>
        
         <script type="text/javascript">
	    	setTimeout('$(".slidePopupBox").hide()', 3000);         
	    </script> 
	    
        <div class="bottomWrapperBg">
        <div class="bottomWrapper" style="background:#ffffff;">
            <div class="picTroduceBox">
                    <table width="100%" border="0">
                      		<tbody><tr>
		                        <td>
		                            <span><img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/img_1.png"></span>
		                             
		                        </td>
		                        <td>
		                            <span><img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/img_2.png"></span>
		                            
		                        </td>
		                      </tr>
		                       <tr>
		                        <td>
		                            <span><img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/img_3.png"></span>
		                           
		                        </td>
		                        <td>
		                            <span><img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/img_4.png"></span>
		                          
		                        </td>
		                      </tr>
		                      <tr>
		                        <td>
		                            <span><img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/img_5.png"></span>
		                             
		                        </td>
		                        <td>                            
                       			</td>
		                      </tr>
                    </tbody></table>
                </div>
            <div class="activeNote">
                <h3>领取规则:</h3>
                <ul>
                    <!-- <li>1、赠险领取年龄为25-50周岁，每人限领取一份，多次领取无效；</li>
                    <li>2、请查阅<a href="http://s.520invest.com/common/mv2/explain.html" target="_blank">《平安免费赠险说明》</a>（含投保须知、责任免除、如何理赔等）；</li>
                    <li>2、您可通过中国平安网站或客服电话95511转6转1进行保单查询。</li>	 -->
                    <li>1.赠险领取年龄为25-50周岁，每人限领取一份，多次领取无效。</li>
<li>2.本保险仅提供电子保单，仅限赠送。保单生效后客户会在三日内自动收到短信通知，您可通过中国平安网站或客服电话95511转6转1进行保单查询。</li>
<li>3.本保险适用条款为《平安交通工具意外伤害保险条款》，被保险人航空、火车、地铁和轮船意外伤害事故导致的意外伤害身故、残疾责任，最高保障金额为25万，保期60天，详细内容请登陆www.pingan.com网站查询。</li>
<li>4.若客户未能成功领取本项目平安保险，敬请留意活动提示下方其他投保公司电话回访赠险事宜。</li>
                </ul>
            </div>
            <img src="http://rs.iadcn.com/pingan/static/zhuanpan/images/pingan_bz/banner_b.jpg" alt="">
            <div id="footer" class="footer">
		       	<p>
		         	Copyright 2012-2014 520invest.com All Rights Reserved.<br>粤ICP备15018868号-1 <a href="privacy.html" target="_blank">隐私条款</a>
		           	<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1254614166'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/q_stat.php%3Fid%3D1254614166' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1254614166"></span><script src=" http://w.cnzz.com/q_stat.php?id=1254614166" type="text/javascript"></script>
		        </p>
		    </div>
        </div>
        </div>
        
	</div>
    
	</div>
	</form>
</body>
<script>
$(function() {
	
	var a = '${a}';
	var vry = '${vry}';
	var okp = '${code }';
	if(okp){
		$('#ok_p').val(okp);
	}
	if(vry === 'failure_vry'){
		alert("验证码错误！");
	}else{
		if($.cookie("cookie"+a)){
			if($.cookie("cookie_cnt"+a)){
				var cnt = parseInt($.cookie("cookie_cnt"+a));
				if(cnt<=1){
					$('#submitFormDiv2').show();
				}
			}
		}else{
			$('.popupBoxBg').show();
		}
	}
	if(vry === 'failure_vry'){
		$('#vcode').css({ 'borderColor': 'red' });
        document.getElementById('vcode').value = '';
        $('#txtName').addClass('type_ShowBlack');
 	    $('#txtBirthday').addClass('type_ShowBlack');
 	    $('#txtMobile').addClass('type_ShowBlack');
	}else{
	   $('#txtName').val('如：张海冰');
	   $('#txtBirthday').val('如：19890101');
	   $('#txtMobile').val('接收电子保单号');
	}
 $("#vcode").focus(function(){
	 $('#code_img').attr('src','${ctx}/ping/go/img?'+ Math.floor(Math.random() * 100)).fadeIn();
 });

	$('#code_img').click(function() {//生成验证码  
		$(this).hide().attr('src','${ctx}/ping/go/img?'+ Math.floor(Math.random() * 100)).fadeIn();
	})
})
</script>
</html>

