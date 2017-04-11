
<script type="text/javascript">
function pop(div) {
	document.getElementById(div).style.display = 'block';
}
function hide(div) {
	document.getElementById(div).style.display = 'none';
}
//To detect escape button
document.onkeydown = function(evt) {
	evt = evt || window.event;
	if (evt.keyCode == 27) {
		hide('popDiv');
	}
};

</script>
<div class="termCondition" id="termCondition"onclick="hide('termCondition')">
	
	<div id="popup">
		<div style="width:600px;height:200px;overflow:auto;padding:10px;z-index:1000;">
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		this is term and condition. you must agree term and conditon .
		</div>
		<div style="width:600px;height:auto;"><button style="margin-left:250px;" onclick="hide('termCondition')" >close &#9746;</button></div>
	</div>
</div>
