<!-- BEGIN: MAIN -->
      <!-- BEGIN: BEFORE_AJAX -->
      <div id="ajaxBlock">
      <!-- END: BEFORE_AJAX -->
        <div class="container">
          <div class="page-header">
            <h1>{PM_PAGETITLE}</h1>
          </div>

          <div class="btn-group">
            <a href="{PM_INBOX_URL}" class="btn btn-sm btn-default<!-- IF {PHP.f} == 'inbox' --> active<!-- ENDIF -->">
              {PHP.L.pm_inbox}
            </a>
            <a href="{PM_SENTBOX_URL}" class="btn btn-sm btn-default<!-- IF {PHP.f} == 'sentbox' --> active<!-- ENDIF -->">
              {PHP.L.pm_sentbox}
            </a>
            <a href="{PM_SENDNEWPM_URL}" class="btn btn-sm btn-default<!-- IF {PHP.m} == 'send' --> active<!-- ENDIF -->">
              {PHP.L.Sendnew}
            </a>
          </div>

          <div class="btn-group pull-right">
            <a href="{PM_FILTER_ALL_URL}" class="btn btn-sm btn-default<!-- IF !{PHP.filter} --> active<!-- ENDIF -->">
              {PHP.L.All}
            </a>
            <a href="{PM_FILTER_UNREAD_URL}" class="btn btn-sm btn-default<!-- IF {PHP.filter} == 'unread' --> active<!-- ENDIF -->">
              {PHP.L.pm_unread}
            </a>
            <a href="{PM_FILTER_STARRED_URL}" class="btn btn-sm btn-default<!-- IF {PHP.filter} == 'starred' --> active<!-- ENDIF -->">
              {PHP.L.pm_starred}
            </a>
          </div>

          <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax" role="form">
            <table class="table table-striped">
              <thead>
                <th>
                  <!-- IF {PHP.cfg.jquery} -->
                  <input type="checkbox" value="{PHP.themelang.pm.Selectall}/{PHP.themelang.pm.Unselectall}" onclick="$('input:checkbox').not(this).prop('checked', this.checked);">
                  <!-- ENDIF -->
                </th>
                <th>{PHP.L.Status}</th>
                <th><i class="fa fa-star-o"></i></th>
                <th>{PHP.L.Subject}</th>
                <th>{PM_SENT_TYPE}</th>
                <th>{PHP.L.Date}</th>
                <th>{PHP.L.Action}</th>
              </thead>
              <tbody>
                <!-- BEGIN: PM_ROW -->
                <tr>
                  <td><input type="checkbox" name="msg[{PM_ROW_ID}]"></td>
                  <td>{PM_ROW_ICON_STATUS}</td>
                  <td>{PM_ROW_STAR}</td>
                  <td>
                    <h4>{PM_ROW_TITLE}</h4>
                    <span class="text-muted">{PM_ROW_DESC}</span>
                  </td>
                  <td>{PM_ROW_USER_NAME}</td>
                  <td>{PM_ROW_DATE}</td>
                  <td>
                    <div class="btn-group">
                      <!-- IF {PM_ROW_EDIT_URL} -->
                      <a class="btn btn-sm btn-default" href="{PM_ROW_EDIT_URL}"><i class="fa fa-pencil-square-o"></i> {PHP.L.Edit}</a>
                      <!-- ENDIF -->
                      <a class="btn btn-sm btn-danger" href="{PM_ROW_DELETE_CONFIRM_URL}"><i class="fa fa-times-circle-o"></i></a>
                    </div>
                  </td>
                </tr>
                <!-- END: PM_ROW -->
                <!-- BEGIN: PM_ROW_EMPTY -->
                <tr>
                  <td colspan="7"><center><strong>{PHP.L.None}</strong></center></td>
                </tr>
                <!-- END: PM_ROW_EMPTY -->
              </tbody>
            </table>

            <!-- IF {PHP.jj} > 0 -->
            <label>{PHP.L.pm_selected}:</label>
            <div class="row">
              <div class="col-xs-6 col-sm-4 col-md-2">
                <select name="action" class="form-group form-control" size="1">
                  <option value="delete" >{PHP.L.Delete}</option>
                  <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option>
                </select>
              </div>
              <div class="col-sm-2">
                <button type="submit" class="btn btn-primary" name="delete">{PHP.L.Confirm}</button>
              </div>
            </div>
            <!-- IF {PM_PAGES} -->
            <ul class="pagination">{PM_PAGEPREV}{PM_PAGES}{PM_PAGENEXT}</p>
            <!-- ENDIF -->
            <!-- ENDIF -->
          </form>
          <!-- IF {PHP.cfg.jquery} AND {PHP.cfg.pm.turnajax} -->
          <script src="{PHP.cfg.modules_dir}/pm/js/pm.js"></script>
          <!-- ENDIF -->
        </div>
      <!-- BEGIN: AFTER_AJAX -->
      </div>
      <!-- END: AFTER_AJAX -->
<!-- END: MAIN -->
