<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<meta http-equiv="content-type" content="application/xhtml+xml;charset=utf-8" />			
	<meta http-equiv="imagetoolbar" content="false"/>
	<meta name="keywords" content=" Rainer Bendig, Göppingen, Stuttgart, Baden-Württemberg, Falkenstraße, Rainer, Bendig,Software Architect, Web Architect, XHTML, HTML5, CSS Development, c#, windows, c++, Hyte, Software, Linux, Viadukt, Uhrzeit, Timestamp, Internetbeats, aktuelle, current, recent." /> 
	<meta name="description" content="Sie möchten wissen wie spät es gerade ist? Dann sind sie hier richtig." /> 
	<meta name="author" content="Rainer Bendig" /> 
	<title>Es ist nun {$title}</title> 
    <script src="/libs/jquery.min.js"></script>
                <script src="/libs/bootstrap-twipsy.js"></script>
    <link rel="stylesheet" href="/bootstrap/bootstrap.css"> 

</head>

<body style="padding-top:40px;">  <div class="topbar-wrapper" style="z-index: 5;">
    <div class="topbar">
      <div class="fill">

        <div class="container">
          <h3><a href="/">Aktuelle Uhrzeit</a></h3>
        </div>
      </div> <!-- /fill -->
    </div> <!-- /topbar -->
  </div> <!-- topbar-wrapper -->
    
    
    <div class="container" >
{include file="boxes.tpl"}		 
{include file="page_$page.tpl"}		
	
	<div id="footer" style="margin-top:10px;margin-bottom:50px;border-top:1px solid #EEEEEE;">
		<p>&copy; 2012 by <a href="http://www.rainerbendig.de">Rainer Bendig</a> | <a href="/impressum.html">Impressum</a> 
	</p></div>	
	
	</div>
	<!-- Piwik -->
<script type="text/javascript">
var pkBaseURL = (("https:" == document.location.protocol) ? "https://stats.hyte.eu/" : "http://stats.hyte.eu/");
document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
try {
var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 10);
piwikTracker.trackPageView();
piwikTracker.enableLinkTracking();
} catch( err ) {}
</script><noscript><p><img src="http://stats.hyte.eu/piwik.php?idsite=10" style="border:0" alt="" /></p></noscript>
<!-- End Piwik Tracking Code -->
</body>
</html> 
