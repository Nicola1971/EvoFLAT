<!DOCTYPE html>
<html>
  <head>
    <title>[(site_name)] (Evolution CMS Manager Login)</title>
    <meta http-equiv="content-type" content="text/html; charset=[+modx_charset+]">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width">
    <link rel="icon" type="image/ico" href="[+favicon+]">
    <link rel="stylesheet" type="text/css" href="media/style/[(manager_theme)]/style.css">
    <style>
      html {
        font-size: 16px;
      }
      
      html,
      body {
        min-height: 100%;
        height: 100%;
      }
      
      body.loginbox-center {
        min-height: 1px;
        height: auto;
      }

      body,
      body.lightness,
      body.light,
      body.dark,
      body.darkness {
        background-color: #2a313b !important;
        background-image: url('[+login_bg+]') !important;
        background-size: cover !important;
        background-position: center !important;
        background-repeat: no-repeat !important;
        background-attachment: fixed !important;
      }
      @media (max-width: 479px) {
        body,
        body.lightness,
        body.light,
        body.dark,
        body.darkness {
          background-image: none !important;
        }
      }
      
      /* page div */

      .page {
        height: 100%;
      }

      @media (min-width: 480px) {
        .loginbox-center .page {
          max-width: 25rem;
          margin-top:    10vh;
          margin-bottom: 10vh;
          margin-left: auto;
          margin-right: auto;
          height: auto;
        }
      }

      @media (min-width: 1200px) {
        .loginbox-center .page {
          margin-top:    20vh;
          margin-bottom: 20vh;
        }
      }
      
      .darkness .page {
        background-color: transparent;
      }
      
      /* loginbox */

      .loginbox {
        width: 100%;
        min-height: 100vh;
        box-shadow: none;
        will-change: transform;
        transform: translate3d(0,0,0);
        -webkit-animation-name: anim-loginbox;
        -webkit-animation-duration: .5s;
        -webkit-animation-iteration-count: 1;
        -webkit-animation-timing-function: ease;
        -webkit-animation-fill-mode: forwards;
        animation-name: anim-loginbox;
        animation-duration: .5s;
        animation-iteration-count: 1;
        animation-timing-function: ease;
        animation-fill-mode: forwards;
      }

      .loginbox-right .loginbox {
        -webkit-animation-name: anim-loginbox-right;
        animation-name: anim-loginbox-right;
      }

      .loginbox-center .loginbox {
        -webkit-animation-name: anim-loginbox-center;
        animation-name: anim-loginbox-center;
      }

      @media (min-width: 480px) {
        .loginbox {
          max-width: 25rem;
          box-shadow: 0 0 0.5rem 0 rgba(0, 0, 0, .5);
        }

        .loginbox-right .loginbox {
          margin-left: auto;
        }

        .loginbox-center .loginbox {
          min-height: 1px;
        }
      }
      
      .loginbox,
      .dark .loginbox,
      .darkness .loginbox {
        background-color: rgba(0,0,0,0.85);
        transition: background ease-in-out .3s;
      }
      @media (max-width: 479px) {
        .loginbox,
        .dark .loginbox,
        .darkness .loginbox {
          background-color: transparent;
        }
      }
      
      /* form */

      .loginbox form a {
        color: #818a91;
      }
      
      .darkness .loginbox form {
        background-color: transparent;
      }
      
      /* container */

      .container-body {
        padding: 1.75rem;
      }

      @media (min-width: 480px) {
        .container-body {
          padding: 2.5rem;
        }
      }

      .darkness > .container-body {
        background-color: transparent;
      }

      /* copyrights */

      .copyrights {
        width: 100%;
        padding: .5rem 1.5rem 1.5rem 1.75rem;
        font-size: .675rem;
        color: #aaa;
        text-align: left;
        background-color: rgba(0,0,0,0.15);
      }

      @media (min-width: 480px) {
        .copyrights {
          max-width: 25rem;
          padding-left: 2.5rem;
          background-color: rgba(0,0,0,0.85);
        }

        .loginbox-right .copyrights {
          margin-left: auto;
        }
      }

      @media (min-width: 480px) and (max-width: 767px) {
        .loginbox-center .copyrights {
          will-change: transform;
          transform: translate3d(0,0,0);
          -webkit-animation-name: anim-loginbox-center;
          -webkit-animation-duration: .5s;
          -webkit-animation-iteration-count: 1;
          -webkit-animation-timing-function: ease;
          -webkit-animation-fill-mode: forwards;
          animation-name: anim-loginbox-center;
          animation-duration: .5s;
          animation-iteration-count: 1;
          animation-timing-function: ease;
          animation-fill-mode: forwards;
        }
      }

      @media (min-width: 768px) {
        .copyrights {
          position: fixed;
          right: 0;
          bottom: 0;
          width: auto;
          max-width: none;
          text-align: right;
          background-color: transparent;
        }

        .loginbox-right .copyrights {
          left: 0;
          right: auto;
          padding-left: 1.5rem;
        }

        .loginbox-center .copyrights {
          right: auto;
          left: 50%;
          transform: translate3d(-50%,0,0);
        }
      }

      .copyrights a {
        color: #fff
      }
      
      /* buttons */

      .btn,
      #FMP-email_button {
        border-radius: 0;
      }

      .btn-success,
      #FMP-email_button {
        color: #fff !important;
        background-color: #449d44 !important;
        border-color: #419641 !important;
      }

      .btn-success:hover,
      .btn-success:focus,
      #FMP-email_button:hover,
      #FMP-email_button:focus {
        background-color: #5cb85c !important;
        border-color: #5cb85c !important;
      }

      #submitButton,
      #FMP-email_button {
        padding-top:    0.5rem;
        padding-bottom: 0.5rem;
        font-size: 1rem;
        font-weight: 400;
      }

      #submitButton{
        float: right;
      }
      
      /* onManagerLoginFormRender */

      #onManagerLoginFormRender {
        margin-top: 3rem;
        color: #fff;
      }
      
      /* FMP - forgot password */

      @media (min-width: 768px) {
        #ForgotManagerPassword-show_form {
          display: inline-block;
          position: absolute;
          z-index: 500;
          bottom: 1.5rem;
        }
      }

      #FMP-email_label {
        color: #818a91
      }

      #FMP-email {
        margin-bottom: 2rem
      }

      #FMP-email_button {
        float: right;
      }
      
      /* form controls */

      .form-control,
      .captcha input,
      #FMP-email {
        padding: 0.7em 1em !important;
        border-radius: 0 !important;
        transition: all ease-in-out .3s !important;
      }
      .form-control,
      .form-control:active,
      .form-control:focus,
      .captcha input,
      .captcha input:active,
      .captcha input:focus,
      #FMP-email,
      #FMP-email:active,
      #FMP-email:focus {
        font-size: 1rem !important;
        color: #fff !important;
        background-color: rgba(255,255,255,.2) !important;
        border-width: 0 !important;
      }

      .form-control:active,
      .captcha input:focus,
      .captcha input:active,
      .form-control:focus,
      #FMP-email:active,
      #FMP-email:focus {
        outline: 0 none !important;
        background-color: rgba(255,255,255,.3) !important;
      }
      
      /* form groups */

      .form-group--logo {
        margin-bottom: 1.875rem;
        text-align: left !important;
      }

      .form-group--actions > label {
        padding-top: 0.6875rem;
      }

      /* captcha */

      .captcha {
        margin-bottom: 1rem;
      }

      /* label and caption */

      label,
      .caption {
        color: #818a91;
        line-height: 1.2em;
      }

      .caption {
        margin-bottom: 0.9375rem;
      }

      /* mainloader */

      #mainloader {
        position: absolute;
        z-index: 50000;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        text-align: center;
        vertical-align: middle;
        padding: 15% 0 0 0;
        background-color: rgba(255, 255, 255, 0.64);
        opacity: 0;
        visibility: hidden;
        -webkit-transition-duration: 0.3s;
        transition-duration: 0.3s
      }

      #mainloader::before {
        content: "";
        display: block;
        position: absolute;
        z-index: 1;
        left: 50%;
        top: 30%;
        width: 7.5rem;
        height: 7.5rem;
        margin: -3.75rem 0 0 -3.75rem;
        border-radius: 50%;
        animation: rotate 2s linear infinite;
        box-shadow: 0.3125rem 0.3125rem 0 0 rgb(234, 132, 82), 0.875rem -0.4375rem 0 0 rgba(111, 163, 219, 0.7), -0.4375rem 0.6875rem 0 0 rgba(112, 193, 92, 0.74), -0.6875rem -0.4375rem 0 0 rgba(147, 205, 99, 0.78);
      }

      #mainloader.show {
        opacity: 0.75;
        visibility: visible;
        -webkit-transition-duration: 0.1s;
        transition-duration: 0.1s
      }

      /* loader keyframes  */

      @keyframes rotate {
        to {
          transform: rotate(360deg)
        }
      }

      /* loginbox keyframes */
      
      @-webkit-keyframes anim-loginbox {
        from {
          opacity: 0;
          transform: translate3d(-10%,0,0);
        }
        to {
          opacity: 1;
          transform: translate3d(0,0,0);
        }
      }

      @keyframes anim-loginbox {
        from {
          opacity: 0;
          transform: translate3d(-10%,0,0);
        }
        to {
          opacity: 1;
          transform: translate3d(0,0,0);
        }
      }
      
      @-webkit-keyframes anim-loginbox-right {
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }

      @keyframes anim-loginbox-right {
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }
      
      @-webkit-keyframes anim-loginbox-center {
        from {
          opacity: 0;
          transform: translate3d(0,1.5rem,0);
        }
        to {
          opacity: 1;
          transform: translate3d(0,0,0);
        }
      }

      @keyframes anim-loginbox-center {
        from {
          opacity: 0;
          transform: translate3d(0,1.5rem,0);
        }
        to {
          opacity: 1;
          transform: translate3d(0,0,0);
        }
      }
    </style>
</head>
<body class="login-page [+manager_theme_style+] [+login_form_position_class+]">
<div class="page">
	<div class="tab-page loginbox">
		<form method="post" name="loginfrm" id="loginfrm" class="container container-body" action="processors/login.processor.php">
			[+OnManagerLoginFormPrerender+]
			<div class="form-group text-center">
				<a class="logo" href="../" title="[(site_name)]">
					<img src="media/style/[(manager_theme)]/images/misc/login-logo.png" alt="[(site_name)]" id="logo" />
				</a>
			</div>
			<div class="form-group">
				<label for="username" class="text-muted">[+username+]</label>
				<input type="text" class="form-control" name="username" id="username" tabindex="1" value="[+uid+]" />
			</div>
			<div class="form-group">
				<label for="password" class="text-muted">[+password+]</label>
				<input type="password" class="form-control" name="password" id="password" tabindex="2" value="" />
			</div>
			<div class="clearfix">
				<div class="caption">[+login_captcha_message+]</div>
				<p>[+captcha_image+]</p>
				[+captcha_input+]
			</div>
			<div class="form-group">
				<label for="rememberme" class="text-muted">
					<input type="checkbox" id="rememberme" name="rememberme" value="1" class="checkbox" [+remember_me+] /> [+remember_username+]</label>
				<button type="submit" name="submitButton" class="btn btn-success float-xs-right" id="submitButton">[+login_button+]</button>
			</div>
			[+OnManagerLoginFormRender+]
		</form>
	</div>
	<div class="copyrights">
		<p class="loginLicense"></p>
		<div class="gpl">&copy; 2005-2018 by the <a href="http://evo.im/" target="_blank">EVO</a>. <strong>EVO</strong>&trade; is licensed under the GPL.</div>
	</div>
</div>
<div id="mainloader"></div>
<script type="text/javascript">
	/* <![CDATA[ */
	if(window.frames.length) {
		window.location = self.document.location;
	}
	var form = document.loginfrm;
	if(form.username.value !== '') {
		form.password.focus()
	} else {
		form.username.focus()
	}
	form.onsubmit = function(e) {
		document.getElementById('mainloader').classList.add('show');
		var xhr = new XMLHttpRequest();
		xhr.open('POST', 'processors/login.processor.php', true);
		xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;');
		xhr.onload = function() {
			if(this.readyState === 4) {
				var header = this.response.substr(0, 9);
				if(header.toLowerCase() === 'location:') {
					window.location = this.response.substr(10);
				} else {
					var cimg = document.getElementById('captcha_image');
					if(cimg) cimg.src = 'includes/veriword.php?rand=' + Math.random();
					document.getElementById('mainloader').classList.remove('show');
					alert(this.response);
				}
			}
		};
		xhr.send('ajax=1&username=' + encodeURIComponent(form.username.value) + '&password=' + encodeURIComponent(form.password.value) + (form.captcha_code ? '&captcha_code=' + encodeURIComponent(form.captcha_code.value) : '') + '&rememberme=' + form.rememberme.value);
		e.preventDefault();
	}
	/* ]]> */
</script>
</body>
</html>