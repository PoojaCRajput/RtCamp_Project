<?php
/**
 *	Template name: Video List
 *
 *	The template for displaying Custom Page Template: Left Sidebar.
 *
 *	@package WordPress
 *	@subpackage illdy
 */
?>
<?php get_header(); ?>

<script>
function myFunction() 
{
  	var input, filter, table, tr, td, i;
  	input = document.getElementById("myInput");
  	filter = input.value.toUpperCase();
  	table = document.getElementById("myTable");
  	/* console.log("Id of Table : "+table.id); */
  	tr = table.getElementsByTagName("tr");
  	for (i = 0; i < tr.length; i++) 
  	{
  		/* console.log("i :"+i); */
    	td = tr[i].getElementsByTagName("td")[1];
    	if (td) 
    	{
    		/* console.log("td : "+td.innerHTML); */
      		if (td.innerHTML.toUpperCase().indexOf(filter) > -1) 
      		{
        		tr[i].style.display = "";
      		} 
      		else 
      		{
        		tr[i].style.display = "none";
      		}
    	}       
  	}
}
</script>

<style>
button{
    font-weight: 450 !important;
    background-color: #006bb6 !important;
    color: white !important;
}
button a{
	color:white;
}
button a:hover{
	color:black;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
  height:50%;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
.tableRow {
	height:10%;
}
iframe {
    max-width:  100% !important;
    max-height: 60% !important;
}
input[type="submit"]:not(.search-submit){
   padding-top: 5px !important;
    padding-bottom: 5px !important;
    padding-left: 25px !important;
    padding-right: 25px !important;
    font-weight: bold !important;
    font-size: 16px !important;
    color: white !important;
    background: #006bb6 !important;
} 
input[type="submit"]:not(.search-submit):hover,input[type="text"]:hover,input[type="button"]:hover,.btn:not(.colored-button):not(.btn-left):not(.btn-right):not(.btn-just-icon):not(.menu-item):not(.hestia-sidebar-open):not(.hestia-sidebar-close) :hover{
   color:black;
}
.btn:not(.colored-button):not(.btn-left):not(.btn-right):not(.btn-just-icon):not(.menu-item):not(.hestia-sidebar-open):not(.hestia-sidebar-close) {
    padding-top: 6px !important;
    padding-bottom: 6px !important;
    padding-left: 25px !important;
    padding-right: 25px !important;
    background: #006bb6 !important;
    font-size: 16px !important;
    font-weight: bold !important;

    box-shadow: 0 14px 26px -12px rgba(233,30,99,0.42), 0 4px 23px 0 rgba(0,0,0,0.12), 0 8px 10px -5px rgba(233,30,99,0.2) !important;
    border-width: 2px !important;
    border-style: outset !important;
    border-color: buttonface !important;
    border-image: initial !important;
    margin-bottom: 5px !important;
}
input[type="button"]{
    background-color: #006bb6 !important;
    color: white !important;
    font-size: 16px !important;
    font-weight: bold !important;
    padding: 5px 25px !important;
    width:auto;
}
input[type="text"]{
	width: 20%;
	height: 5%;
    font-size: 15px;

}

</style>


<?php do_action( 'hestia_page_builder_full_before_content' );?>
	<!-- HTML CODE FOR FORM TO ENTER NEW VIDEO -->
	<button class='create' style="margin-top:8%;margin-left:10px;padding: 5px 25px;
    font-size: 16px;"> Create </button>
     <a href="http://loalhost/ibus/wp-admin/" class="btn btn-primary btn-sm">Back to dashboard</a>


	<div class='videoform' style="display:none;margin-left: 20px;">
		<form method='post' action='http://localhost/ibus/insert.php'>
		<p><label style="font-size: 20px;
"> Video Title </label></p>
		<p><input type='text' name='video_title' required></p>

		<p><label style="font-size: 20px;
"> Video URL  </label></p>
		<p><input type='text' name='video_url' required></p>
		<div class="container-fluid">
          <div class="row"> <div class="col-sm-1" style="padding : 0px;">
		<p><input class='submit' type='submit' name='submit' style="margin-right: 10px; padding : 0px;">
                    </div><div class="col-sm-1"></div>
                    <div class="col-sm-1" style="margin-right: 10px; padding : 0px;">
		<input class='cancel' type='button' name='Cancel' value='Cancel'></p>
              </div>
               <div class="col-sm-9"></div>
          </div></div>
		</form>
	</div> 
	<!-- END OF FORM CODE-->
	<!-- HTML CODE FOR SEARCH BAR -->
	<input type="text" style="background-color: white;" id="myInput" onkeyup="myFunction()" placeholder="Search Video Names Here...." title="Type in a name">
	<!-- END OF SEARCH BAR CODE -->

<?php
	$cnt = 1;$cnt1 = 1;$srno=1;
	$con = mysqli_connect('localhost','root','');

	mysqli_select_db($con,'ibus');

	$data = mysqli_query($con,"select * from videos");

	echo "					
	<table id='myTable' class='table table-striped text-center'>
			<thead>
				<tr>
					<th> Sr. No. </th>
					<th> Video Title </th>
					<th> Video URL </th>
					<th> Update Video </th>
					<th> Delete Video </th>
				</tr>
			</thead>
			<tbody>";

	while($row = mysqli_fetch_assoc($data))
	{	
		echo "<tr class='tableRow'>
				<td> $srno </td>
				<td> $row[video_name] </td>
				<td> $row[video_url] </td>
				<td> 
					<button>
						<a href='http://localhost/ibus/save.php?eid=$row[video_id]'>UPDATE</a>
					</button>
				</td>
				<td> 
					<button>
						<a href='http://localhost/ibus/delete.php?eid=$row[video_id]'>DELETE</a>
					</button>
				</td>
			</tr>";$cnt++;$cnt1++;$srno++;
	}
?>
	</tbody></table><br>

	<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	
	<script>
		$.noConflict();
		jQuery(document).ready(function()
		{
			jQuery('.create').click(function()
			{
				jQuery('.videoform').fadeIn();
			});
			jQuery('.videoform form p .submit').click(function()
			{
				jQuery('.videoform').fadeOut();
			});
			jQuery('.videoform form p .cancel').click(function()
			{
				jQuery('.videoform').hide();
			});
		});
</script>	

    <?php  mysqli_close($con); ?>
</main><!-- #main -->
</div><!-- #primary -->

<?php get_footer(); ?>