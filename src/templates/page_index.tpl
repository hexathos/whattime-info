<div class="row">
    <div class="span4">
&nbsp;

   </div>
    <div class="span8" style="text-align:center;padding-top:25px;">
<p>
<h1>{$time}<br />am {$day},<br /> dem {$date}</h1>
</p>
    </div>
    <div class="span4">
    <p><h4>Hinweise</h4>
    Zeitzone: {$tz}<br />
    Unixtimestamp:  {$unix}<br />
    Swatch: @{$swatch}
&nbsp;</p>
    </div>
</div>
<script>
$(function () {
    $("a[rel=twipsy]").twipsy({
        live: true
        })
    })
</script>
