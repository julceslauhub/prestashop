{if $mailrelay_message}
<div class="{$mailrelay_message_type}" style="display:block;">
	{$mailrelay_message}<br>
</div>
{/if}
<div style="width:360px;float:left">
	<fieldset>
		<legend>{$lang.config}</legend>
		<form method="post" action=""  name="frm1">
			<input type="hidden" name="mailrelay_option" value="save_credential" />
			<div style="clear:both;padding-top:15px;text-align:left">
				<label style="width:60px">{$lang.hostname}:</label> <div style="padding-left:80px"><input type="text" name="mailrelay_hostname" value="{$mailrelay_hostname|escape}" /></div>
				<br />
				<label style="width:60px">{$lang.username}:</label> <div style="padding-left:80px"><input type="text" name="mailrelay_username" value="{$mailrelay_username|escape}" /></div>
				<br />
				<label style="width:60px">{$lang.password}:</label> <div style="padding-left:80px"><input type="password" name="mailrelay_password" value="" /></div>
				<br />
				<input type="submit" value="{$lang.save}" style="padding:5px" />
			</div>
		</form>
	</fieldset>
</div>

{if $has_credential == 1}
	<div style="margin-left:10px;width:360px;float:left">
		<fieldset>
			<legend>{$lang.sync}</legend>
			<form method="post" action="" name="frm2">
				<input type="hidden" name="mailrelay_option" value="sync" />
				<label style="width:60px">{$lang.groups}:</label> 
				<div style="padding-left:80px">
					{html_options name=mailrelay_group options=$mailrelay_groups_options selected=$mailrelay_groups_option_selected}
				</div>
				
				<br />
				<input type="submit" value="{$lang.start_sync}" style="padding:5px" />
			</form>
		</fieldset>
	</div>
{/if}

