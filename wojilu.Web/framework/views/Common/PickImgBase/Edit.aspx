﻿
<div style="width:600px;">

	<form method="post" action="#{ActionLink}">				
	
		<table style="width: 550px; margin:20px; ">
			<tr>
				<td>_{title}</td>
				<td><input name="x.Title" value="#{f.Title}" type="text" style="width:500px;" class="tipInput" tip="请填写标题" /><span class="valid" mode="border"></span></td>
			</tr>

			<tr>
				<td>_{photo}</td>
				<td><input name="x.ImgUrl" value="#{f.ImgUrl}" style="width: 500px" type="text" class="tipInput" tip="请填写图片地址"><span class="valid" mode="border"></span></td>
			</tr>

			<tr>
				<td>_{url}</td>
				<td><input name="x.Url" value="#{f.Url}" type="text" style="width:500px;" class="tipInput" tip="请填写网址"><span class="valid" mode="border"></span></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="Submit1" type="submit" value="_{submit}"  class="btn"/> 
				<input name="Button1" type="button" value="_{cancel}" class="btnCancel" /></td>
			</tr>
		</table>
	
	</form>
</div>