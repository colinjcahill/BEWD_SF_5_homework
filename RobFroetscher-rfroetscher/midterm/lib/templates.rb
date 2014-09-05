class Template
	attr_accessor :body, :subject

	def initialize(type, sender, message, recipient)
		if type == "love"
			@subject = "You've received a love message!"
			@body =  %{
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html lang="en">
				    <head>
				<title>Love</title>       
				            <style type="text/css">
				                @media only screen and (max-device-width: 480px) {
				                    
				                    body {min-width: 0px !important;}

				                    table[class=hide], img[class=hide], br[class=hide], td[class=hide], span[class=hide] {min-height: 0px !important; max-height: 0px !important; max-width: 0px !important; display: none !important; overflow: hidden !important; font-size: 0px !important;} 

				                    table[id=table_topbar] {width: 320px !important; padding-left: 0px !important; padding-right: 0px !important;} 

				                    img[id=img_logo] {width: 80px !important; height: auto !important; padding-left: 28px !important;} 

				                    td[class=td_innermargins] {padding-left: 0px !important; padding-right: 0px !important; padding-top: 0px !important;} 

				                    table[class=table_main], table[class=table_main-wrapper], table[id=table_footer] {width: 320px !important;} 

				                    table[class=table_main-content] {width: 260px !important;}

				                    table[id=table_social] {width: 251px !important;} 

				                    td[class=td_socialmid] {width: 30px !important;} 

				                    td[id=td_socialend] {width: 23px !important;} 

				                    img[class=img_socialicon] {width: 23px !important; height: auto !important;} 

				                    table[id=table_footer-legal] {width: 280px !important;} 

				                    table[class=table_footer-legal] {width: 280px !important;} 

				                    td[class=td_footer-social] {padding-top: 34px !important;}

				                    td[class=td_padding_t_10] {padding-top: 4px !important;} 

				                    td[class=td_padding_t_20] {padding-top: 7px !important;} 

				                    td[class=td_padding_t_30] {padding-top: 16px !important;} 

				                    td[class=td_padding_t_40] {padding-top: 22px !important;} 

				                    td[class=td_padding_t_60] {padding-top: 32px !important;} 

				                    td[class=td_padding_tb_10] {padding-top: 4px !important; padding-bottom: 4px !important;} 

				                    td[class=td_padding_tb_20] {padding-top: 7px !important; padding-bottom: 7px !important;} 

				                    td[class=td_padding_tb_30] {padding-top: 16px !important; padding-bottom: 16px !important;} 

				                    td[class=td_padding_tb_40] {padding-top: 22px !important; padding-bottom: 22px !important;} 

				                    td[class=td_padding_tb_60] {padding-top: 32px !important; padding-bottom: 32px !important;} 

				                    td[class=td_padding_b_10] {padding-bottom: 4px !important;} 

				                    td[class=td_padding_b_20] {padding-bottom: 7px !important;} 

				                    td[class=td_padding_b_30] {padding-bottom: 16px !important;} 

				                    td[class=td_padding_b_40] {padding-bottom: 22px !important;} 

				                    td[class=td_padding_b_60] {padding-bottom: 32px !important;} 

				                    td[class=td_padding_top_zero] {padding-top: 0 !important;} 

				                    td[class=td_padding_bottom_zero] {padding-bottom: 0 !important;} 

				                    td[class=td_padding_zero] {padding: 0px !important;} 

				                    span[class=h1] {font-size: 32px !important; line-height: 37px !important;} 

				                    span[class=h2] {font-size: 26px !important; line-height: 31px !important;} 

				                    span[class=h3] {font-size: 22px !important; line-height: 28px !important;} 

				                    span[class=h4] {font-size: 20px !important; line-height: 28px !important;} 

				                    span[class=span_body] {font-size: 16px !important; line-height: 23px !important;}

				                    div[class=div_textalign_left] {text-align:left !important;}

				                    div[class=div_textalign_right] {text-align:right !important;}

				                    div[class=div_textalign_center] {text-align:center !important;}

				                    img[class=img_textalign_left] {text-align:left !important;}

				                    img[class=img_textalign_right] {text-align:right !important;}

				                    img[class=img_textalign_center] {text-align:center !important;}

				                    img[class=img_break] {width: 100% !important; height: auto !important;} 

				                    img[class=img_fullwidth] {width: 260px !important; height: auto;}
				                    
				
				                    
				                    td[id=td_hero] {
				                        background-image: url('https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/roses_m.png') !important;
				                        background-size: 320px 141px !important;
				                        background-position: left top !important;
				                        background-repeat: no-repeat !important;
				                        
				                        line-height: 141px !important;
				                        height: 141px !important;
				                    }

				                    table[id=table_header] {
				                        width: 288px !important;
				                    }
				                    td[id=td_header] {
				                        padding-top:32px !important;
				                        padding-left:28px !important;
				                    }

				                    img[class=img_btn_trainnow] {
				                        width: 146px !important;
				                        height: auto !important;
				                    }
				                    div[class=div_showhide], table[class=table_showhide], table[class=table_showhide] { 
				                        min-height: none !important; 
				                        max-height: none !important; 
				                        max-width: none !important; 
				                        display: block !important; 
				                        overflow: visible !important; 
				                        font-size: 16px !important; 
				                        width: 260px !important; 
				                    }
				                }

				                a {color:#0E91A1;font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif;text-decoration:underline;}
				a, a:link, a:visited {text-decoration:none;color:#0E91A1;} 
				a:hover {text-decoration:underline;}

				span {margin:0;padding:0;color:#000000;}
				table td {border-collapse: collapse;}

				.table_footer-legal a {color:#FFFFFF;font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif;text-decoration:underline !important;}
				.table_footer-legal a a:link a:visited {text-decoration:underline;color:#FFFFFF !important;} 
				.table_footer-legal a:hover {text-decoration:underline !important;}

				h2,h2 a,h2 a:visited,h3,h3 a,h3 a:visited,h4,h5,h6,.t_cht {color:#000 !important}

				.ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td {line-height: 100%}

				* {-webkit-text-size-adjust:none;}

				            </style>

				            <!--[if gte mso 9]>
				            <style type="text/css">
				                div {font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif !important;}
				                .td_showhide, .table_showhide, .div_showhide, .div_showhide div span, .div_showhide td {min-height: 0px !important; max-height: 0px !important; max-width: 0px !important; display: none !important; overflow: hidden !important; font-size: 0px !important; padding: 0px !important;}
				            </style>
				            <![endif]-->
				    </head>
				    <body marginwidth="0" marginheight="0" bgcolor="#2EB8E6" style="background-color:#2EB8E6;padding:0;margin:0;-webkit-font-smoothing:antialiased;width:100% !important;-webkit-text-size-adjust:none;" leftmargin="0" topmargin="0">
				        
				        <!-- PRE-HEADER -->
				        <div style="display:none;visibility:hidden;color:#2EB8E6;font-size:0px;">
				            Love is a wondeful thing!
				        </div>
				        <!-- END PRE-HEADER -->

				        <!-- START TOPBAR -->
				        

				        <!-- START BODY -->
				        <table width="100%" border="0" bgcolor="#2EB8E6" cellspacing="0" cellpadding="0" style="padding-top:0;padding-bottom:0px;background-color:#2EB8E6;">
				            <tr>
				                <td class="td_innermargins" style="padding-top:20px;padding-left:20px;padding-right:20px;">
				                    <table width="680" border="0" align="center" cellspacing="0" cellpadding="0" class="table_main-wrapper" style="margin:0 auto;">
				                        <tr>
				                            <td valign="top" align="left" style="padding-top:0;">
				                                <table width="680" border="0" bgcolor="#FFFFFF" align="center" cellspacing="0" cellpadding="0" class="table_main" style="background-color:#FFFFFF; margin:0 auto">
				                                    <tr>
				                                        <td valign="top" align="left" id="td_hero">
				                                            <img alt="Banner" border="0" class="hide" height="300" src="https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/roses.png" style="display:block; -ms-interpolation-mode:bicubic;" width="680" />
				                                        </td>
				                                    </tr>
				                                    <tr>
				                                        <td valign="top" align="center" style="padding-top:0;padding-bottom:60px;" class="td_padding_b_60">
				                                        <table width="560" border="0" align="center" cellspacing="0" cellpadding="0" style="margin:0 auto" class="table_main-content">
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_60" style="padding-top:60px;">
				                                                        <div style="font-family:Trebuchet MS,Arial,Helvetica,sans-serif;font-weight:bold;font-style:normal;display:block;text-align:left;">
				                                                            <span style="font-size:38px;line-height:47px;color:#055960;margin:0;padding:0;" class="h1">
				                                                               Love:
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_0" style="padding-top:0;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; text-align:left; display:block;">
				                                                            <span style="font-size:30px;line-height:40px;color:#055960;margin:0;padding:0;" class="h3">
				                                                                #{sender} is into you!
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_30" style="padding-top:40px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                                Love is friendship that has caught fire. It is quiet understanding, mutual confidence, sharing and forgiving. It is loyalty through good and bad times. It settles for less than perfection and makes allowances for human weaknesses.
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_60" style="padding-top:40px;">
				                                                        <div style="font-family:Trebuchet MS,Arial,Helvetica,sans-serif; text-align:left; display:block;">
				                                                            <span style="font-size:24px;line-height:32px;color:#000000;margin:0;padding:0;" class="h4">
				                                                                You're purrrrfect for me, #{recipient}!
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_20" style="padding-top:10px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                                <img align="right" alt="Cat" class="hide" height="198" src="https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/cat.png" style="float:right; display:block; -ms-interpolation-mode:bicubic;" width="197" />Love is a force more formidable than any other. It is invisible - it cannot be seen or measured, yet it is powerful enough to transform you in a moment, and offer you more joy than any material possession could.
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_20" style="padding-top:10px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                             	#{message}
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                            </table>
				                                        </td>
				                                    </tr>
				                                </table>
				                            </td>
				                        </tr>
				                    </table>
				                </td>
				            </tr>
				        </table>
				        <!-- END BODY -->
				    </body>
				</html>}
		elsif type == "congrats"
			@subject = "You've received a congratulations message!"
			@body =  %{
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html lang="en">
				    <head>
				<title>Congrats!</title>
				            <style type="text/css">
				                @media only screen and (max-device-width: 480px) {
				                    
				                    body {min-width: 0px !important;}

				                    table[class=hide], img[class=hide], br[class=hide], td[class=hide], span[class=hide] {min-height: 0px !important; max-height: 0px !important; max-width: 0px !important; display: none !important; overflow: hidden !important; font-size: 0px !important;} 

				                    table[id=table_topbar] {width: 320px !important; padding-left: 0px !important; padding-right: 0px !important;} 

				                    img[id=img_logo] {width: 80px !important; height: auto !important; padding-left: 28px !important;} 

				                    td[class=td_innermargins] {padding-left: 0px !important; padding-right: 0px !important; padding-top: 0px !important;} 

				                    table[class=table_main], table[class=table_main-wrapper], table[id=table_footer] {width: 320px !important;} 

				                    table[class=table_main-content] {width: 260px !important;}

				                    table[id=table_social] {width: 251px !important;} 

				                    td[class=td_socialmid] {width: 30px !important;} 

				                    td[id=td_socialend] {width: 23px !important;} 

				                    img[class=img_socialicon] {width: 23px !important; height: auto !important;} 

				                    table[id=table_footer-legal] {width: 280px !important;} 

				                    table[class=table_footer-legal] {width: 280px !important;} 

				                    td[class=td_footer-social] {padding-top: 34px !important;}

				                    td[class=td_padding_t_10] {padding-top: 4px !important;} 

				                    td[class=td_padding_t_20] {padding-top: 7px !important;} 

				                    td[class=td_padding_t_30] {padding-top: 16px !important;} 

				                    td[class=td_padding_t_40] {padding-top: 22px !important;} 

				                    td[class=td_padding_t_60] {padding-top: 32px !important;} 

				                    td[class=td_padding_tb_10] {padding-top: 4px !important; padding-bottom: 4px !important;} 

				                    td[class=td_padding_tb_20] {padding-top: 7px !important; padding-bottom: 7px !important;} 

				                    td[class=td_padding_tb_30] {padding-top: 16px !important; padding-bottom: 16px !important;} 

				                    td[class=td_padding_tb_40] {padding-top: 22px !important; padding-bottom: 22px !important;} 

				                    td[class=td_padding_tb_60] {padding-top: 32px !important; padding-bottom: 32px !important;} 

				                    td[class=td_padding_b_10] {padding-bottom: 4px !important;} 

				                    td[class=td_padding_b_20] {padding-bottom: 7px !important;} 

				                    td[class=td_padding_b_30] {padding-bottom: 16px !important;} 

				                    td[class=td_padding_b_40] {padding-bottom: 22px !important;} 

				                    td[class=td_padding_b_60] {padding-bottom: 32px !important;} 

				                    td[class=td_padding_top_zero] {padding-top: 0 !important;} 

				                    td[class=td_padding_bottom_zero] {padding-bottom: 0 !important;} 

				                    td[class=td_padding_zero] {padding: 0px !important;} 

				                    span[class=h1] {font-size: 32px !important; line-height: 37px !important;} 

				                    span[class=h2] {font-size: 26px !important; line-height: 31px !important;} 

				                    span[class=h3] {font-size: 22px !important; line-height: 28px !important;} 

				                    span[class=h4] {font-size: 20px !important; line-height: 28px !important;} 

				                    span[class=span_body] {font-size: 16px !important; line-height: 23px !important;}

				                    div[class=div_textalign_left] {text-align:left !important;}

				                    div[class=div_textalign_right] {text-align:right !important;}

				                    div[class=div_textalign_center] {text-align:center !important;}

				                    img[class=img_textalign_left] {text-align:left !important;}

				                    img[class=img_textalign_right] {text-align:right !important;}

				                    img[class=img_textalign_center] {text-align:center !important;}

				                    img[class=img_break] {width: 100% !important; height: auto !important;} 

				                    img[class=img_fullwidth] {width: 260px !important; height: auto;}
				                    

				                    
				                    td[id=td_hero] {
				                        background-image: url('https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/congrats_m.png') !important;
				                        background-size: 320px 141px !important;
				                        background-position: left top !important;
				                        background-repeat: no-repeat !important;
				                        
				                        line-height: 141px !important;
				                        height: 141px !important;
				                    }

				                    table[id=table_header] {
				                        width: 288px !important;
				                    }
				                    td[id=td_header] {
				                        padding-top:32px !important;
				                        padding-left:28px !important;
				                    }

				                    img[class=img_btn_trainnow] {
				                        width: 146px !important;
				                        height: auto !important;
				                    }
				                    div[class=div_showhide], table[class=table_showhide], table[class=table_showhide] { 
				                        min-height: none !important; 
				                        max-height: none !important; 
				                        max-width: none !important; 
				                        display: block !important; 
				                        overflow: visible !important; 
				                        font-size: 16px !important; 
				                        width: 260px !important; 
				                    }
				                }

				                a {color:#0E91A1;font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif;text-decoration:underline;}
				a, a:link, a:visited {text-decoration:none;color:#0E91A1;} 
				a:hover {text-decoration:underline;}

				span {margin:0;padding:0;color:#000000;}
				table td {border-collapse: collapse;}

				.table_footer-legal a {color:#FFFFFF;font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif;text-decoration:underline !important;}
				.table_footer-legal a a:link a:visited {text-decoration:underline;color:#FFFFFF !important;} 
				.table_footer-legal a:hover {text-decoration:underline !important;}

				h2,h2 a,h2 a:visited,h3,h3 a,h3 a:visited,h4,h5,h6,.t_cht {color:#000 !important}

				.ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td {line-height: 100%}

				* {-webkit-text-size-adjust:none;}

				            </style>

				            <!--[if gte mso 9]>
				            <style type="text/css">
				                div {font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif !important;}
				                .td_showhide, .table_showhide, .div_showhide, .div_showhide div span, .div_showhide td {min-height: 0px !important; max-height: 0px !important; max-width: 0px !important; display: none !important; overflow: hidden !important; font-size: 0px !important; padding: 0px !important;}
				            </style>
				            <![endif]-->
				    </head>
				    <body marginwidth="0" marginheight="0" bgcolor="#2EB8E6" style="background-color:#2EB8E6;padding:0;margin:0;-webkit-font-smoothing:antialiased;width:100% !important;-webkit-text-size-adjust:none;" leftmargin="0" topmargin="0">
				        
				        <!-- PRE-HEADER -->
				        <div style="display:none;visibility:hidden;color:#2EB8E6;font-size:0px;">
				            Congratulations, #{recipient}!
				        </div>
				        <!-- END PRE-HEADER -->

				        <!-- START TOPBAR -->
				        

				        <!-- START BODY -->
				        <table width="100%" border="0" bgcolor="#2EB8E6" cellspacing="0" cellpadding="0" style="padding-top:0;padding-bottom:0px;background-color:#2EB8E6;">
				            <tr>
				                <td class="td_innermargins" style="padding-top:20px;padding-left:20px;padding-right:20px;">
				                    <table width="680" border="0" align="center" cellspacing="0" cellpadding="0" class="table_main-wrapper" style="margin:0 auto;">
				                        <tr>
				                            <td valign="top" align="left" style="padding-top:0;">
				                                <table width="680" border="0" bgcolor="#FFFFFF" align="center" cellspacing="0" cellpadding="0" class="table_main" style="background-color:#FFFFFF; margin:0 auto">
				                                    <tr>
				                                        <td valign="top" align="left" id="td_hero">
				                                            <img alt="Banner" border="0" class="hide" height="300" src="https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/congrats.png" style="display:block; -ms-interpolation-mode:bicubic;" width="680" />
				                                        </td>
				                                    </tr>
				                                    <tr>
				                                        <td valign="top" align="center" style="padding-top:0;padding-bottom:60px;" class="td_padding_b_60">
				                                        <table width="560" border="0" align="center" cellspacing="0" cellpadding="0" style="margin:0 auto" class="table_main-content">
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_60" style="padding-top:60px;">
				                                                        <div style="font-family:Trebuchet MS,Arial,Helvetica,sans-serif;font-weight:bold;font-style:normal;display:block;text-align:left;">
				                                                            <span style="font-size:38px;line-height:47px;color:#055960;margin:0;padding:0;" class="h1">
				                                                               Congratulations, #{recipient}!
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_0" style="padding-top:0;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; text-align:left; display:block;">
				                                                            <span style="font-size:30px;line-height:40px;color:#055960;margin:0;padding:0;" class="h3">
				                                                                You done good!
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_30" style="padding-top:40px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                                #{message}
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_60" style="padding-top:40px;">
				                                                        <div style="font-family:Trebuchet MS,Arial,Helvetica,sans-serif; text-align:left; display:block;">
				                                                            <span style="font-size:24px;line-height:32px;color:#000000;margin:0;padding:0;" class="h4">
				                                                                Success consists of going from failure to failure without loss of enthusiasm.
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_20" style="padding-top:10px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                                <img align="right" alt="Thumbs up!" class="hide" height="198" src="https://s3-us-west-2.amazonaws.com/robfroetscheremailcontent/thumbs.png" style="float:right; display:block; -ms-interpolation-mode:bicubic;" width="197" />The price of success is hard work, dedication to the job at hand, and the determination that whether we win or lose, we have applied the best of ourselves to the task at hand.
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_20" style="padding-top:10px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                             	Keep it up!
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                                <tr>
				                                                    <td valign="top" align="left" class="td_padding_t_20" style="padding-top:10px;">
				                                                        <div style="font-family:Lucida Grande,Lucida Sans Unicode,Verdana,sans-serif; font-style:normal; text-align:left; display:block; padding-top:0;">
				                                                            <span class="span_body" style="font-size:18px;line-height:26px;color:#000000;margin:0;padding:0;">
				                                                             	#{sender}
				                                                            </span>
				                                                        </div>
				                                                    </td>
				                                                </tr>
				                                            </table>
				                                        </td>
				                                    </tr>
				                                </table>
				                            </td>
				                        </tr>
				                    </table>
				                </td>
				            </tr>
				        </table>
				        <!-- END BODY -->
				    </body>
				</html>}
		end
	end
end