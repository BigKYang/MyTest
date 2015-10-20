<div class="container">
<div class="well">
   <form class="form-horizontal" name="user" action="action" method="post">
   <fieldset>
   <legend>表單輸入</legend>
       <div class="form-group">
           <label for="inputFirstname" class="col-lg-2 control-label">First Name</label>
           <div class="col-lg-10">
              <input type="text" class="form-control" id="inputFirstname" name="firstname" placeholder="First Name">
           </div>
       </div>
       <div class="form-group">
           <label for="inputLastname" class="col-lg-2 control-label">Last Name</label>
           <div class="col-lg-10">
              <input type="text" class="form-control" id="inputLastname" name="lastname" placeholder="First Name">
           </div>
       </div>
       
       <div class="form-group" style="float:right; ">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
       </div>
    </fieldset>
    </form>
</div>

<div class="well">
   <form class="form-horizontal" name="json" action="action" method="post">
   <fieldset>
   <legend>表單輸入</legend>
       <div class="form-group">
           <label for="inputJSON" class="col-lg-2 control-label">JSON String ( {'firstname':'kevin','lastname':'yang'})</label>
           <div class="col-lg-10">
              <input type="text" class="form-control" id="inputJSON" name="json" placeholder="JSON">
           </div>
       </div>
       <div class="form-group" style="float:right; ">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
       </div>
    </fieldset>
    </form>
</div>


<div class="panel panel-primary">
  <div class="panel-heading">
     <h3 class="panel-title">User List</h3>
  </div>
            
  <div class="panel-body">
  <div class="w3-padding w3-white notranslate">
     <table class="table  table-striped">
     <thead>
  	 <tr>
  	 	<th>Firstname</th>
  		<th>Lastname</th>
  	 </tr>
  	 </thead>
  	
  	 <!-- users 抓 request.setAttribute的值 -->    
     <tbody>
     <#list users as user>
  	 <tr>
  	 	<td>${user.firstname}</td> <td>${user.lastname}</td>
  	 </tr>
     </#list>
     </tbody>
     </table>
  </div>
  </div>
</div> <!-- panel -->

</div> <!-- container-->


