<div class="panel">
            <h3><b>
            <span class="glyphicon glyphicon-globe" style="margin-right: 2px;"></span>
            <span style="font-family: 微軟正黑體; verdana, Times New Roman, 新細明;">貨櫃動態查詢</span>
            </b></h3>

            <form class="form-horizontal col-xs-12 col-sm-12 col-md-12 col-lg-12" role="search">
                <div class="form-group">
                    <select class="form-control" name="type">
                        <option value="">提單號碼 (e.g., 012345678900)</option>
                        <option value="s">貨櫃號碼</option>
                    </select>
                </div>
                <#-- 最好不要把 輸入框button合再一起秀, 因為可能不整齊 -->
                <#-- <input> + aria-describedby="helpBlock" 標記正在編輯欄位 -->
                <div class="form-group">
                    <div class="input-group">                      
                        <input type="text" class="form-control" placeholder="Search" name="q" aria-describedby="helpBlock">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                        </div>
                    </div>
                </div>
            </form>
        </div>