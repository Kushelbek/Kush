      <!-- BEGIN: POLL_VIEW -->
      <div id="poll_{POLL_ID}">
        <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&amp;mode=ajax" role="form">
          <input type="hidden" name="poll_id" value="{POLL_ID}">
          <table class="table table-borderless">
            <!-- BEGIN: POLLTABLE -->
            <tr>
              <td>
                <strong>{POLL_INPUT}{POLL_OPTIONS}</strong>
                <span class="pull-right">{POLL_PER}% ({POLL_COUNT})</span>
                <div class="progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="width: {POLL_PER}%;">
                    <span>{POLL_PER}%</span>
                  </div>
                </div>
              </td>
            </tr>
            <!-- END: POLLTABLE -->
            <tr>
              <td colspan="4">
                <button type="submit" title="{PHP.L.polls_Vote}" class="btn btn-primary">{PHP.L.polls_Vote}</button>
              </td>
            </tr>
          </table>
          <script>
            function anim(){
              $(".progress").each(function(){
                var percentage = $(this).width();
                if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
              });
            }
            anim();
          </script>
          <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
        </form>
      </div>
      <!-- END: POLL_VIEW -->

      <!-- BEGIN: POLL_VIEW_VOTED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>
            <strong>{POLL_OPTIONS}</strong>
            <span class="pull-right">{POLL_PER}% ({POLL_COUNT})</span>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="width: {POLL_PER}%;">
                <span>{POLL_PER}%</span>
              </div>
            </div>
          </td>
        </tr>
        <!-- END: POLLTABLE -->
        <tr>
          <td colspan="4">{PHP.L.polls_alreadyvoted}</td>
        </tr>
      </table>
      <script>
        function anim(){
          $(".progress").each(function(){
            var percentage = $(this).width();
            if (percentage!=""){$(this).width(0).animate({width: percentage}, "slow");}
          });
        }
        anim();
      </script>
      <div class="alert alert-info">
        <p>{POLL_VOTERS} {PHP.L.Votes} {PHP.L.Since} {POLL_SINCE}</p>
      </div>
      <!-- END: POLL_VIEW_VOTED -->

      <!-- BEGIN: POLL_VIEW_LOCKED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>
            <strong>{POLL_OPTIONS}</strong>
            <span class="pull-right">{POLL_PER}% ({POLL_COUNT})</span>
            <div class="progress">
              <div class="progress-bar" role="progressbar" aria-valuenow="{POLL_PER}" aria-valuemin="0" aria-valuemax="100" style="width: {POLL_PER}%;">
                <span>{POLL_PER}%</span>
              </div>
            </div>
          </td>
        </tr>
        <!-- END: POLLTABLE -->
        <tr>
          <td colspan="4"><strong>{PHP.L.polls_locked}</strong></td>
        </tr>
      </table>
      <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
      <!-- END: POLL_VIEW_LOCKED -->

      <!-- BEGIN: POLL_VIEW_DISABLED -->
      <table class="table table-borderless">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>{POLL_OPTIONS}</td>
        </tr>
        <!-- END: POLLTABLE -->
        <tr>
          <td>{PHP.L.rat_registeredonly}</td>
        </tr>
      </table>
      <!-- END: POLL_VIEW_DISABLED -->

<!-- BEGIN: MAIN -->
    <div class="container">
      <!-- BEGIN: POLLS_VIEW -->
      <div class="page-header">
        <h1>{POLLS_TITLE}</h1>
      </div>
      {POLLS_FORM}
      <!-- IF {POLLS_COMMENTS} -->
      {POLLS_COMMENTS_DISPLAY}
      <!-- ENDIF -->
      <!-- END: POLLS_VIEW -->

      <!-- BEGIN: POLLS_VIEWALL -->
      <div class="page-header">
        <h1>{PHP.L.polls_viewarchives}</h1>
      </div>
      <table class="table table-striped">
        <!-- BEGIN: POLL_ROW -->
        <tr>
          <td>{POLL_DATE}</td>
          <td><a href="{POLL_HREF}">{POLL_TEXT}</a></td>
          <td class="text-right">{POLLS_COMMENTS}</td>
        </tr>
        <!-- END: POLL_ROW -->
        <!-- BEGIN: POLL_NONE -->
        <tr>
          <td><center>{PHP.L.None}</center></td>
        </tr>
        <!-- END: POLL_NONE -->
      </table>
      <!-- END: POLLS_VIEWALL -->
      {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    </div>
<!-- END: MAIN -->
