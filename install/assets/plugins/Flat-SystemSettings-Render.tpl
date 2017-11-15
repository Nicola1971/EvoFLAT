/**
 * Flat-SystemSettings-Render
 *
 * <strong>2.0 alpha</strong> Render EvoFLAT customizations and css variable
 *
 * @category plugin
 * @version 2.0 alpha
 * @author Nicola Lambathakis (www.tattoocms.it) 
 * @internal @properties 
 * @internal @events OnManagerLoginFormPrerender,OnManagerMainFrameHeaderHTMLBlock,OnManagerTopPrerender
 * @internal @modx_category Admin
 * @internal @installset base, sample
 */

global $modx;
$manager_theme = $modx->config['manager_theme'];

if($manager_theme == "EvoFLAT") {

if($modx->config['flt_show_evo_logo'] == "0") {
$hideLogo ='
#mainMenu #bars:after{display:none!important;}
#mainMenu #bars{ margin-right: 0px!important; }';
}
if($modx->config['flt_show_login_logo'] == "0") {
$hideLoginLogo = 'img#logo {display:none;}'; 
}

if ($modx->config['flt_login_clogo'] !== null) {
$logocustom = '<a class="logo" href="../" title="'.$sitename.'">
					<img src="../'.$modx->config['flt_login_clogo'].'" alt="'.$sitename.'" id="logocustom" />
				</a>';
}

if ($modx->config['flt_custom_head_styles'] !== null) {
$custom_head_styles = $modx->config['flt_custom_head_styles'];
}
if ($modx->config['flt_custom_login_styles'] !== null) {
$custom_login_styles = $modx->config['flt_custom_login_styles'];
}
//vars
if($modx->config['flt_main-color'] !== '') { 
$main_color = '--main-color:'.$modx->config['flt_main-color'].';
'; 
} else { $main_color = ''; }
	

if($modx->config['flt_main-menu-color'] !== '' ) { 
$menu_color = '--main-menu-color:'.$modx->config['flt_main-menu-color'].';'; 
} 
else
if($modx->config['flt_main-menu-color'] == '' && $modx->config['flt_main-color'] !== '') { 
$menu_color = '--main-menu-color:'.$modx->config['flt_main-color'].';'; 
}
else { $menu_color = ''; }
	
//treee
if($modx->config['flt_item-tree-color'] !== '') { 
$tree_color = '--item-tree-color:'.$modx->config['flt_item-tree-color'].';
'; 
} else { $tree_color = ''; }
	
if($modx->config['flt_dark-item-tree-color'] !== '') { 
$tree_dark_color = '--dark-item-tree-color:'.$modx->config['flt_dark-item-tree-color'].';
'; 
} else { $tree_dark_color = ''; }
	
//tabs	
if($modx->config['flt_selected-tabs-color'] !== '') { 
$light_tabs = '--selected-tabs-color:'.$modx->config['flt_selected-tabs-color'].';
'; 
}
else
if($modx->config['flt_selected-tabs-color'] == '' && $modx->config['flt_main-color'] !== '') { 
$light_tabs = '--selected-tabs-color:'.$modx->config['flt_main-color'].';'; 
}
else { $light_tabs = ''; }
	
if($modx->config['flt_dark-selected-tabs-color'] !== '') { 
$dark_tabs = '--dark-selected-tabs-color:'.$modx->config['flt_dark-selected-tabs-color'].';
'; 
}
else
if($modx->config['flt_dark-selected-tabs-color'] == '' && $modx->config['flt_main-color'] !== '') { 
$dark_tabs = '--dark-selected-tabs-color:'.$modx->config['flt_main-color'].';'; 
}
else { $dark_tabs = ''; }
//fonts
if($modx->config['flt_main_font'] !== '') { 
$gfont = explode(":", $modx->config['flt_main_font']);
$googlefont = str_replace("+", " ", $gfont[0]);
$main_font = '--main-font:'.$googlefont.';';  
$importFont ='<link href="https://fonts.googleapis.com/css?family='.$modx->config['flt_main_font'].'" rel="stylesheet">';
} else { $main_font = ''; }
if($modx->config['flt_main_font_size'] == '' or $modx->config['flt_main_font_size'] == null)
{ $main_font_size = '--main-font-size: 0.8125rem'; }
else { 
$main_font_size = '--main-font-size:'.$modx->config['flt_main_font_size'].'rem;'; 
} 

//end vars
$e = &$modx->Event;
switch($e->name) {
case 'OnManagerTopPrerender':	
$MainFlatSettingsOutput = '
<!--- OnManagerTopPrerender --->
'.$importFont.'
<style>
body {
 '.$main_font.'
 '.$main_font_size.'
  '.$menu_color.'
  '.$main_color.'
/* tree */
  '.$tree_color.'
  '.$tree_dark_color.'
  /* tabs */
  '.$light_tabs.'
  '.$dark_tabs.'
  }
'.$hideLogo.' 
'.$custom_head_styles.'
</style>
';
break;
case 'OnManagerMainFrameHeaderHTMLBlock':
$MainFlatSettingsOutput = '
<!--- OnManagerMainFrameHeaderHTMLBlock --->
'.$importFont.'
<style>
body {
  '.$main_font.'
  '.$main_font_size.'
  '.$menu_color.'
  '.$main_color.'
/* tree */
  '.$tree_color.'
  '.$tree_dark_color.'
 /* tabs */
  '.$light_tabs.'
  '.$dark_tabs.'
  }
'.$custom_head_styles.'
</style>
';
break;

case 'OnManagerLoginFormPrerender':
if ($modx->config['flt_login_bgimage'] == null || $modx->config['flt_login_bgimage'] == '') {
$Login_BgI = '';
}  else {
$Login_BgI = ' 
body div.page, body.dark div.page{background: url("../'.$modx->config['flt_login_bgimage'].'") no-repeat center center fixed; 
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover;
      background-size: cover;}';
} 
$LoginFlatSettingsOutput = '
'.$importFont.'
<style>
html {
  '.$main_font.'
  '.$main_font_size.'
  '.$menu_color.'
  '.$main_color.'
  }
'.$hideLoginLogo.'
'.$Login_BgI.'
'.$custom_login_styles.'
</style>
'.$logocustom.'
';
    break;
}
$e->output($MainFlatSettingsOutput.$LoginFlatSettingsOutput);
return;
}