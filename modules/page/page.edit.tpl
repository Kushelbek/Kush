<!-- BEGIN: MAIN -->
<article>
<div class="content_wiper"> 
   	<div class="gamefuck">
    	<h3>{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h3>
    </div>
<div class="bitchpost_wiper">
    <div class="bitchtopic">
    <div class="marginleft10 marginright10">{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}</div>
	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<table class="cells">
			<tr>
				<td class="width30">{PHP.L.Category}:</td>
				<td class="width70">{PAGEEDIT_FORM_CAT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{PAGEEDIT_FORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PAGEEDIT_FORM_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Author}:</td>
				<td>{PAGEEDIT_FORM_AUTHOR}</td>
			</tr>
			<tr>
				<td>{PHP.L.Alias}:</td>
				<td>{PAGEEDIT_FORM_ALIAS}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_metakeywords}:</td>
				<td>{PAGEEDIT_FORM_KEYWORDS}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_metatitle}:</td>
				<td>{PAGEEDIT_FORM_METATITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_metadesc}:</td>
				<td>{PAGEEDIT_FORM_METADESC}</td>
			</tr>
<!-- BEGIN: TAGS -->
			<tr>
				<td>{PAGEEDIT_TOP_TAGS}:</td>
				<td>{PAGEEDIT_FORM_TAGS} ({PAGEEDIT_TOP_TAGS_HINT})</td>
			</tr>
<!-- END: TAGS -->
			<tr>
				<td>{PHP.L.Owner}:</td>
				<td>{PAGEEDIT_FORM_OWNER}</td>
			</tr>
			<tr>
				<td>{PHP.L.Begin}:</td>
				<td>{PAGEEDIT_FORM_BEGIN}</td>
			</tr>
			<tr>
				<td>{PHP.L.Expire}:</td>
				<td>{PAGEEDIT_FORM_EXPIRE}</td>
			</tr>
            <tr>
            	<td>
            	  {PAGEEDIT_FORM_MYIMG_TITLE}
            	</td>
            	<td>
            	  {PAGEEDIT_FORM_MYIMG}
            	</td>
            </tr>
			<tr>
				<td>{PHP.L.Parser}:</td>
				<td>{PAGEEDIT_FORM_PARSER}</td>
			</tr>
			<tr>
				<td colspan="2">
					{PAGEEDIT_FORM_TEXT}
					<!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
					<!-- IF {PAGEEDIT_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
				</td>
			</tr>
			<tr>
				<td>{PHP.L.page_file}:</td>
				<td>
					{PAGEEDIT_FORM_FILE}
					<p>{PHP.L.page_filehint}</p>
				</td>
			</tr>
			<tr>
				<td>{PHP.L.URL}:<br />{PHP.L.page_urlhint}</td>
				<td>{PAGEEDIT_FORM_URL}<br />{PAGEEDIT_FORM_URL_PFS} &nbsp; {PAGEEDIT_FORM_URL_SFS}</td>
			</tr>
			<tr>
				<td>{PHP.L.Filesize}:<br />{PHP.L.page_filesizehint}</td>
				<td>{PAGEEDIT_FORM_SIZE}</td>
			</tr>
            <tr>
				<td>{PAGEEDIT_FORM_ID|cot_files_filebox('page', $this)}</td>
			</tr>
           
			<tr>
				<td colspan="2" class="valid">
					<!-- IF {PHP.usr_can_publish} -->
					<button type="submit" class="wiper_btn" name="rpagestate" value="0">{PHP.L.Publish}</button>
					<!-- ENDIF -->
					<button type="submit" class="wiper_btn" name="rpagestate" value="2">{PHP.L.Saveasdraft}</button>
					<button type="submit" class="wiper_btn" name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
				</td>
			</tr>
		</table>
	</form>
    </div>
</div>
</div>
</article>
<!-- END: MAIN -->