﻿    <style type="text/css">
        #editor {
            border: 1px solid #CCC;
            width: 100%
        }
        #editor_toolbar_box {
            background: #F0F0EE;
            padding: 2px;
        }
        #editor_iframe_holder {
            border-top: 1px solid #CCC;
            border-bottom: 1px solid #CCC;
        }
    </style>
<div style="margin:30px;">



<h1>UEditor自定义toolbar</h1>
    <div id="editor">
        <div id="editor_toolbar_box">
            <div id="editor_toolbar">
                <input id="bold" type="button" value="加粗" onclick="myeditor.execCommand('bold')" style="height:24px;line-height:20px"/>
                <input id="italic" type="button" value="加斜" onclick="myeditor.execCommand('italic')" style="height:24px;line-height:20px"/>
                <select id="fontfamily" onchange="myeditor.execCommand('fontfamily',this.value)">
                    <option value="宋体,simsun">宋体</option>
                    <option value="楷体,楷体_gb2312,simkai">楷体</option>
                    <option value="隶书,simli">隶书</option>
                    <option value="黑体,simhei">黑体</option>
                    <option value="andale mono,times">andale mono</option>
                    <option value="arial,helvetica,sans-serif">arial</option>
                    <option value="arial black,avant garde">arial black</option>
                    <option value="comic sans ms,sans-serif">comic sans ms</option>
                </select>
                <select id="fontsize" onchange="myeditor.execCommand('fontsize',this.value)">
                    <option value="10pt">10pt</option>
                    <option value="11pt">11pt</option>
                    <option value="12pt">12pt</option>
                    <option value="14pt">14pt</option>
                    <option value="16pt">16pt</option>
                    <option value="18pt">18pt</option>
                    <option value="20pt">20pt</option>
                    <option value="22pt">22pt</option>
                    <option value="24pt">24pt</option>
                    <option value="36pt">36pt</option>
                </select>
                <input type="button" value="插入html" onclick="insert()" style="height:24px;line-height:20px"/>
                <input type="button" value="清除格式" onclick="myeditor.execCommand('removeformat')" style="height:24px;line-height:20px"/>
                <input type="button" value="获得编辑器内容" onclick="alert(myeditor.getContent())" style="height:24px;line-height:20px"/>
                <input type="button" value="获得编辑器纯文本内容" onclick="alert(myeditor.getContentTxt())" style="height:24px;line-height:20px"/>
            </div>
        </div>
        <div id="editor_iframe_holder" ></div>
    </div>
<script type="text/javascript" charset="utf-8">
    _run(function () {

        //实例化一个不带ui的编辑器,注意此处的实例化对象是baidu.editor下的Editor，而非baidu.editor.ui下的Editor
        wojilu.editor.bind("editor_iframe_holder").config({
            toolbars: [[]],
            initialContent: '初始化内容', //初始化编辑器的内容
            initialFrameHeight: 200
        }).show(function (x) {

            function $(id) {
                return document.getElementById(id);
            }

            window.myeditor = x;

            //给编辑器增加一个选中改变的事件，用来判断所选内容以及状态
            myeditor.addListener('selectionchange', function () {
                var cmdName = ['bold', 'italic'], //命令列表
                fontName = ['fontfamily', 'fontsize']; //字体设置下拉框列表，此处选择其中两个

                //查询每个命令当前的状态，并设置对应状态样式
                var i = -1;
                while (i++ < cmdName.length - 1) {
                    var state = myeditor.queryCommandState(cmdName[i]);
                    $(cmdName[i]).style.color = state == 1 ? "red" : "";
                }
                //依据当前光标所在的字体改变下拉列表的选中值
                i = -1;
                while (i++ < fontName.length - 1) {
                    var fstate = myeditor.queryCommandValue(fontName[i]).toLowerCase();
                    var fselect = $(fontName[i]);
                    for (var j = 0; j < fselect.options.length; j++) {
                        if (fselect.options[j].value.toLowerCase().indexOf(fstate.split(",")[0]) != -1) {
                            fselect.options[j].selected = "true";
                        }
                    }
                }
            });

            //插入文本
            window.insert = function () {
                var insertTxt = "插入的文本";
                insertTxt = prompt("插入的内容", insertTxt);
                insertTxt && myeditor.execCommand("inserthtml", insertTxt);
            }

            window.execUnderline = function (cmd) {
                myeditor.execCommand(cmd);
            }
        });
    });
    </script>
</div>