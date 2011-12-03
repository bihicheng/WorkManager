<html>
    <head>
        <meta content="Description" />
        <meta charset="utf8" />
        <title>Work Manager of Jquery's Master</title>
        <link href="<?php echo base_url();?>templates/css/default.css" rel="stylesheet" />
        <script src="<?php echo base_url();?>templates/js/jquery/jquery.min.js" type="text/javascript"></script>
    </head>
    <body>
        <script type="text/javascript">
            //just function loading...
            var open_sites = function (url){
                var url = url || [],
                    i = 0;
                if (url.constructor.name !== "Array") {
                    url = url.split();
                }
                for( ;i < url.length; i += 1){
                    var wsf = window.open(url[i]);
                    wsf.location.assign(url[i]);
                }
            };
        </script>
        <link href="" rel="stylesheet" />
        <div id="doc_containter">
            <div id="top">
                <div id="header">
                    <div id="log"></div>
                    <div id="menu"></div>
                </div>
            </div>
         <div id="content">
                <div id="middle">
                <p id="d">
                <script>
                var cala = function(){
                var t = new Date(),
                    y = t.getFullYear(),
                    m = t.getMonth(), 
                    d = t.getDate(), 
                    w = t.getDay(), 
                    tt = t.getHours() + ': ' + t.getMinutes() + ': ' + t.getSeconds() ,
                    p = document.getElementById('d'),
                    display = (function() {p.innerHTML = 'Today is '+ y + 'year ' + m + 'month ' + d + 'day ' + w + 'week ' + 'Now is ' + tt;})();
                };
                setInterval("cala()", 1000);
                </script>
                </p>
                </div>
                <div id="right">
                    <input type="button" class="button" value="StartWebDev" name="StartWork" />
                </div>
                <div id="left">
                </div>
        </div>
        <div id="footer"></div>
        </div>
<script type="text/javascript">
(function() {
   console.dir(typeof $('body'));
})();
//body  obj
$('body').addClass('bg_color');
$('p#d').addClass('middle');
$('div#right').addClass('middle');
$(':button').bind('click', function(){
    var url = [
        "https://github.com",
        "https://mail.google.com",
        "http://api.jquery.com/button-selector/",
        "http://www.w3schools.com/jsref/obj_location.asp"
    ];
    open_sites(url);
});
</script>
    </body>
</html>
