<?php
date_default_timezone_set('Europe/Berlin');
ini_set("display_errors", FALSE);
error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
$sessionid = session_id();
if(empty($sessionid))
{
    session_start();
 
}

if(!is_array($_SESSION["userdata"]))
{
	   $_SESSION["userdata"] = array();
}


require(dirname(__FILE__).'/smarty/Smarty.class.php');

$smarty = new Smarty;
$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = false;
$smarty->cache_lifetime = 120;


    function CreateHash($num,$klein=true,$gross=true,$zahl=true,$sonderzeichen=true,$row=0)
    {
        $dummy = array();
        if($klein)
        {
            $dummy = array_merge($dummy,range('a','z'));
        }

        if($gross)
        {
            $dummy = array_merge($dummy,range('A','Z'));
        }

        if($zahl)
        {
            $dummy = array_merge($dummy,range('0','9'));
        }

        if($sonderzeichen)
        {
            $array = array();
  for($i=33;$i<47;$i++)
    $array[] = chr($i);
  for($i=59;$i<64;$i++)
    $array[] = chr($i);
  for($i=91;$i<96;$i++)
    $array[] = chr($i);
  for($i=123;$i<126;$i++)
    $array[] = chr($i);

            $dummy = array_merge($dummy,$array);
        }

        mt_srand((double)microtime()*1000000);

        for ($i = 1; $i <= (count($dummy)*2); $i++)
        {
            $swap = mt_rand(0,count($dummy)-1);
            $tmp = $dummy[$swap];
            $dummy[$swap] = $dummy[0];
            $dummy[0] = $tmp;
        }

        $hash = substr(implode('',$dummy),0,$num);

            return $hash;
    }

function UserDataGetIp()
{
        $REMOTE_ADDR = '';
        $privateIpList = array("/^0\./", "/^127\.0\.0\.1/", "/^192\.168\..*/", "/^172\.16\..*/", "/^10..*/", "/^224..*/", "/^240..*/");
        if (isset($_SERVER['REMOTE_ADDR'])) $REMOTE_ADDR = $_SERVER['REMOTE_ADDR'];
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) $HTTP_X_FORWARDED_FOR = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else $HTTP_X_FORWARDED_FOR = '';

        if (!empty($HTTP_X_FORWARDED_FOR)) {
            $match = array();
            if (preg_match("/^([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)/", $HTTP_X_FORWARDED_FOR, $match)) {
                $REMOTE_ADDR = preg_replace($privateIpList, $REMOTE_ADDR, $match[1]);
            }
        }

        // darwin fix
        if ($REMOTE_ADDR == '::1' || $REMOTE_ADDR == 'fe80::1') {
            $REMOTE_ADDR = '127.0.0.1';
        }

        return $REMOTE_ADDR;
}

function AnonymizeIP($ip)
{
    $parts = explode('.',$ip);
    $ip = $parts[0].".".$parts[1].".".$parts[2];
    return sprintf("%s.0",$ip);
}


