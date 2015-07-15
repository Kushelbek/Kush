<?php defined('COT_CODE') or die('Wrong URL.');
/* ====================
[BEGIN_COT_THEME]
Name=Kush v1.0
Schemes=kush:Default
[END_COT_THEME]
==================== */

/**
 * Kush
 *
 * @package Kush
 * @author Kushelbek
 * @copyright Copyright (c) 2014 Digital Balance
 * @license BSD
 */

// Forms
$R['input_text']     = '<input type="text" class="form-control" name="{$name}" value="{$value}" {$attrs}>{$error}';
$R['input_password'] = '<input type="password" class="form-control" name="{$name}" value="{$value}" {$attrs}>{$error}';
$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}">{$value}</textarea>{$error}';
$R['input_select']   = '<select name="{$name}" class="form-control" {$attrs}>{$options}</select>{$error}';
$R['input_radio']    = '<label class="radio-inline"><input type="radio" name="{$name}" value="{$value}"{$checked}{$attrs}> {$title}</label>';

$R['input_select_rpagebegin']  = '<select name="{$name}" class="form-control">{$options}</select>{$error}';
$R['input_select_rpageexpire'] = '<select name="{$name}" class="form-control">{$options}</select>{$error}';
$R['input_select_rpagefile']   = '<select name="{$name}" class="form-control">{$options}</select>{$error}';

$R['input_date'] = '<div class="row">
    <div class="col-sm-2">{$day}</div>
    <div class="col-sm-4">{$month}</div>
    <div class="col-sm-2">{$year}</div>
    <div class="col-sm-2">{$hour}</div>
    <div class="col-sm-2">{$minute}</div>
</div>';

$R['input_date_short'] = '<div class="row">
    <div class="col-sm-2">{$day}</div>
    <div class="col-sm-4">{$month}</div>
    <div class="col-sm-4">{$year}</div>
</div>';

// Pagination
$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first']   = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap']     = '<li>...</li>';
$R['link_pagenav_last']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main']    = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';

// Tags
$R['tags_code_cloud_open']  = '<ul class="list-inline tag_cloud">';
$R['tags_link_cloud_tag']   = '<li><a href="{$url}" class="{$dim}" title="{$tag_title}" rel="tag">{$tag_title}</a></li>';
$R['tags_code_cloud_close'] = '</ul>';
$R['tags_code_cloud_more']  = '<a class="btn btn-sm btn-default" href="{$url}">'.$L['tags_All'].'</a>';
$R['tags_link_tag']         = '<a href="{$url}" title="{$tag_title}" rel="tag">{$tag_title}</a>';
$R['tags_input_editpage']   = '<input type="text" name="rtags" size="56" class="form-control autotags" value="{$tags}">';
$R['tags_input_editpost']   = '<input type="text" name="rtags" size="56" class="form-control autotags" value="{$tags}">';

// Users
$R['users_link_sort'] = '<a href="{$asc_url}" rel="nofollow"><i class="fa fa-sort-asc usersort"></i></a>
    <a href="{$desc_url}" rel="nofollow"><i class="fa fa-sort-desc usersort"></i></a> {$text}';

// Users group list
$R['users_code_grplist_begin']     = '<ul class="list-group form-inline unstyled">';
$R['users_code_grplist_end']       = '</ul>';
$R['users_code_grplist_item']      = '<li class="list-group-item">{$item}</li>';
$R['users_code_grplist_item_main'] = '<li class="list-group-item active">{$item}</li>';
$R['users_input_grplist_checkbox'] = '<div class="checkbox-inline"><input type="checkbox" title="'.$L['Groupsmembership'].'" name="{$name}" value="1"{$checked}{$attrs}></div>';
$R['users_input_grplist_radio']    = '<div class="radio-inline"><input type="radio" title="'.$L['Maingroup'].'" name="{$name}" value="{$value}"{$checked}{$attrs}></div>';

// PM icons
$R['pm_icon']          = '<i class="fa fa-envelope-o"></i>';
$R['pm_icon_new']      = '<i class="fa fa-envelope"></i>';
$R['pm_icon_trashcan'] = '<i class="fa fa-trash-o"></i>';
$R['pm_icon_edit']     = '<i class="fa fa-pencil-square-o"></i>';
$R['pm_link']          = '<a href="{$url}"><i class="fa fa-envelope-o"></i></a>';

$R['pm_icon_star']   = '<a href="{$link}" title="'.$L['pm_putinstarred'].'"><i class="fa fa-star-o"></i></a>';
$R['pm_icon_unstar'] = '<a href="{$link}" title="'.$L['pm_deletefromstarred'].'"><i class="fa fa-star starred"></i></a>';
