# Trigonometry-Calculator
1 项目工程
Trigonometry-Calculator 三角函数计算器
2 开发工具
Matlab
3 开发人员
张艳琪  202012131062
谢芳  202012131087 
王海冰  202012131030t
卢靖  202012131135
喻剑依  20201201002z
4开发流程
4.1界面需求分析
通常一个软件界面的元素包括界面主颜色、字体颜色、字体大小、界面布局等。围绕界面元素所要达到的设计目的是让最终用户能够获得美感、提高工作效率、易于操作易于使用。软件界面简洁美观，有良好的视觉效果往往更能吸引用户的目光。本界面需要键盘来供用户输入角度信息，并且用户输入以及结果的反馈对于程序的顺利进行时很有必要的，因此界面还需有结果显示。同时，为了防止用户输错，还需要清零和退格功能。本界面具体功能如下：
（1）	计算函数选择。有sin，cos，tan，arcsin，cot五个三角函数可供用户选择。
（2）	角度输入。界面设置有键盘，其中有数字“0~9”，小数点“.”，还有负号“-”，用户可根据自己的需求来输入相应的角度。
（3）	退格功能。界面上设有back键及退格键，当用户输入有误，可以按此键删除当前输入的最后一个字符。
（4）	清零功能。界面上设有AE键即清零键，当用户输入有误或需重新计算下一个表达式时，可以按此键将数据清零。
（5）	计算功能及计算结果显示功能。用户输入的表达式结果可在界面上显示。
（6）	退出功能。当用户完成所需计算时，可以退出该界面。
4.2 关键文件
由实现相应三角函数功能的函数文件和界面的设计文件组成。
三角函数实现文件：
zyq.m:实现sin，由张艳琪实现
lu_cos.m:实现cos，由卢靖实现
xf_tanx.m:实现tan，由谢芳实现
whb_arcsin.m:实现arcsin，由王海冰实现
yjy_cot.m: 实现cot，由喻剑依实现
界面设计文件：
zyq.fig：界面设计，由张艳琪实现
4.3界面设计
本次设计使用MATLAB来完成。根据需求设计出制作GUI图形界面如下。
 
各个控件都按照其功能命名，根据需求合理放置各个控件，合理调整控件大小及其名称大小，使得界面尽可能美观。在该界面中，放置一个静态文本框来显示本次设计的标题——三角函数计算器。放置两个编辑文本框来供用户输入角度以及显示计算结果，同时放置两个静态文本框来标注这两个功能，方便用户观看使用。放置23个按钮控件供用户使用，其中，10个按钮用来输入数字0-9，1个按钮用来输入小数点“.”，1个按钮用来输入负号“-”，两个按钮用来供用户输入括号“（”，“）”，5个按钮用来供用户选择需要计算的三角函数，包括sin、cos、tan、arcsin、cot函数。另外还设有清零按钮（AE），退格按钮（back），计算按钮，退出按钮。按计算按钮会将编辑框1输入的表达式结果显示在编辑框2中；按退出按钮会退出该计算器。
4.4程序说明（GUI回调函数）
1、输入按钮
根据需求，数字0-9，小数点，负号，三角函数等按钮功能是将其名称显示在edit1，即第一个编辑框，用户输入框。以下代码是按钮“0”的代码，其它输入按钮代码与之类似。
function pushbutton4_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'0');
    set(handles.edit1,'String',textString);
guidata(hObject, handles);
需要注意的是三角函数按钮代码要与相应函数名称对应，如设计的sin函数名称为zyq_sin，sin按钮代码如下。
function pushbutton8_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'zyq_sin');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
2、AE按钮
AE按钮的功能是将编辑框内容清零，代码如下。
function pushbutton5_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = get(handles.edit2,'String');
    set(handles.edit1,'String','');
    set(handles.edit2,'String','');
    guidata(hObject, handles);
3、退格按钮
退格按钮的功能是删除当前输入的最后一个字符，代码如下。
function pushbutton17_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String');
    as=char(textString);
    n=length(textString);
    textString=as(1:n-1);
    set(handles.edit1,'String',textString)
    guidata(hObject, handles);
4、计算按钮
计算按钮的功能是将编辑框1的内容结果显示在编辑框2中，代码如下。
function pushbutton19_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    aa = eval(textString);
    set(handles.edit2,'String',aa);
    guidata(hObject, handles);
5、退出按钮
退出按钮的功能是退出该界面，代码如下。
function pushbutton16_Callback(hObject, eventdata, handles)
    	close(gcf);
