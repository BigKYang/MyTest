<a data-toggle="modal" href="#myModal" class="btn btn-primary">Login</a>

<div class="modal" id="myModal">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Sign In</h4>
        </div>
        <div class="modal-body">
                        <form>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" required="required" autofocus="autofocus"/>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="pwd" name="pwd" type="password" value="" required="required" />
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me"/>Remember Login</label>
                                </div>
                                <button type="submit" class="btn btn-sm btn-success">Sign in</button>
                            </fieldset>
                        </form>
        </div>
        <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn">Close</a>          
        </div>
      </div>
    </div>
</div>

