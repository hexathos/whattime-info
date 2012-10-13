<?php
include (dirname(__FILE__).'/libs/global.php');
/* Set locale to Dutch */
setlocale(LC_ALL, 'de_DE');
$page = $_REQUEST["page"];
if(is_null($page)) { $page="index"; }


$title = date("H:i:s");
$day =  strftime("%A",time());
$date = strftime('%e. %B %Y');

$schaltjahr = date("L");
$tz = date("e");
$smarty->assign('swatch',date("B"));
$smarty->assign('unix',time());
$smarty->assign('tz',$tz);
$smarty->assign('schaltjahr',$schaltjahr);
$smarty->assign('day',$day);
$smarty->assign('day',$day);
$smarty->assign('time',$title);
$smarty->assign('date',$date);
$smarty->assign('title',$title);
$smarty->assign('page',$page);
$smarty->display('layout/whattime.tpl');
