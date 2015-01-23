﻿<div class="sideBar">
	<div class="sideBarContainer">#{userMenu} </div>
</div>

<style>
.plbl {	text-align:right; padding:2px 2px 1px 5px; color:#666; width:120px; font-size:14px;}
</style>

<table class="appMain" style="width: 670px; background: #fff; margin-left:30px;">
	<tr>
		<td>
		<div style="margin:20px 0px 20px 60px; font-size:28px;font-weight:bold;">#{user.Name} </div>

		<table style=" margin:10px 0px 50px 0px">

            <tr class="hide"><td class="plbl">最近微博：</td><td>#{microblog}</td></tr>
            <tr class="hide"><td class="plbl">&nbsp;</td><td></td></tr>

            <tr><td class="plbl">_{regTime}:</td><td class="pval">#{user.RegisterDay}</td></tr>
            <tr><td class="plbl">_{lastLoginTime}:</td><td class="pval">#{user.LastLoginDay}</td></tr>
            <tr><td colspan="2">&nbsp;</td></tr>
		
			<!-- BEGIN profile -->
			<tr><td class="plbl">_{gender}:</td><td class="pval">#{user.Gender}</td></tr>
			<tr><td class="plbl">_{age}:</td><td class="pval">#{user.Age}</td></tr>
			<tr><td class="plbl">_{birthday}:</td><td class="pval">#{user.Birthday}</td></tr>
			<tr><td class="plbl">_{zodiac}:</td><td class="pval">#{user.Zodiac}</td></tr>
			<tr><td class="plbl">_{blood}:</td><td class="pval">#{user.Blood}</td></tr>
			<tr><td class="plbl">_{degree}:</td><td class="pval">#{user.Degree}</td></tr>
			<tr><td class="plbl">_{region}:</td><td class="pval">#{user.Region2}</td></tr>
			<tr><td class="plbl">_{hometown}:</td><td class="pval">#{user.Region1}</td></tr>
			<tr><td class="plbl" style="vertical-align:top;">_{selfIntroduction}:</td><td class="pval">#{user.Description}</td></tr>
			<tr><td colspan="2">&nbsp;</td></tr>
			<!-- END profile -->
			
			<!-- BEGIN contact -->
			<tr><td class="plbl">WebSite:</td><td class="pval">#{user.WebSite}</td></tr>
			<tr><td colspan="2">&nbsp;</td></tr>
			<!-- END contact -->
			
			<!-- BEGIN interest -->
			<tr><td class="plbl">_{lblMusic}:</td><td class="pval">#{user.Music}</td></tr>
			<tr><td class="plbl">_{lblSport}:</td><td class="pval">#{user.Sport}</td></tr>
			<tr><td class="plbl">_{lblMovie}:</td><td class="pval">#{user.Movie}</td></tr>
			<tr><td class="plbl">_{lblBook}:</td><td class="pval">#{user.Book}</td></tr>
			<tr><td class="plbl">_{lblEat}:</td><td class="pval">#{user.Eat}</td></tr>
			<!-- END interest -->
			
			
		</table>
		</td>
	</tr>
</table>
