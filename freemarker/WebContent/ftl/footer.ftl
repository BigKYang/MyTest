<div style="width:100%; height:50px; clear:both;">&nbsp;</div>
<div id="pbafooter" class="pbfooter">
    <div class="container">
        <div class="col-md-3 text-left">
            <span class="glyphicon glyphicon-th"></span>
            <a href="#" title="BootStrap Templates" style="color:white;">Bootstrap Templates</a>
        </div>
        <div class="col-md-3 text-left">
            <span class="glyphicon glyphicon-expand"></span>
            <a href="#" title="BootStrap Themes" style="color:white;">More Themes</a>
        </div>
        <div class="col-md-6 text-right">
            <span class="glyphicon glyphicon-home"></span>
            <a href="#" title="PrepBootstrap - Bootstrap Themes and Templates" style="color:white;">Home</a>
        </div>
    </div>
</div>

<style>

    .pbfooter {
        width:100%; 
        height:50px; 
        background-color:#40A08F; 
        color:white; 
        top:0; 
        left:0; 
        z-index:1200; 
        padding-top:15px;
    }

</style>

<script type="text/javascript">
    jQuery(function ($) {
        // put the pbfooter on the bottom of the page
        var height = ($(document).height() - $("#pbafooter").height()) + "px";        
        $("#pbafooter").css("top", ($(document).height() - $("#pbafooter").height()) + "px");
    });
</script>