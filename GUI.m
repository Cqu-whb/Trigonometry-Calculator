function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 10-Jul-2021 21:37:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

%------------
set(handles.edit1,'String','');
set(handles.edit2,'String','');
%------------
% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
result=zyq_sin(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'pi');
set(handles.edit1,'String',textString);
guidata(hObject,handles);



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString =get(handles.edit1,'String');
textString=strcat(textString,'(');
set(handles.edit1,'String',textString);
guidata(hObject,handles);




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,')');
set(handles.edit1,'String',textString);
guidata(hObject,handles);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'/');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
result=lu_cos(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'9');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'8');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)textString=get(handles.edit1,'String');
textString=get(handles.edit1,'String');
textString=strcat(textString,'7');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'*');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
num=str2double(textString);
result=whb_arcsin(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'6');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'5');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'4');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'-');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
num=str2double(textString);
result=yjy_cot(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'3');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'2');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'1');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'+');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'.');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=strcat(textString,'0');
set(handles.edit1,'String',textString);
guidata(hObject,handles);


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
result = eval(textString);
set(handles.edit2,'String',result);
guidata(hObject, handles);


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
textString=get(handles.edit2,'String');
set(handles.edit1,'String','');
set(handles.edit2,'String','');
guidata(hObject,handles);


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
as=char(textString);
n=length(textString);
textString=as(1:n-1);
set(handles.edit1,'String',textString);
guidata(hObject,handles);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton28.tan????????
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.edit1,'String');
num=str2double(textString);
result=xf_tanx(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);


% --- Executes on button press in pushbutton29.test????????
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%   ??????????arctan????????????????????
%   ??????????arcsin????????????????????
inputx = -1:0.001:1;
arcsin_dy = zeros(1,length(inputx));
y1 = zeros(1,length(inputx));
y2 = zeros(1,length(inputx));

for i=1:2001
    x = -1+(i-1)/1000;
    [TaylorExpansion] = whb_arcsin(x);
    y1(i) = TaylorExpansion;
    y2(i) = asin(x);
    y2(i) = roundn(rad2deg(y2(i)),-2);
    arcsin_dy = abs(y1-y2);
end

%   ??????????cos????????????????????
sita = 1:1:360;
cos_dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:360
    x = i*(pi/180);
    [TaylorExpansion] = lu_cos(i);
    y1(i) = TaylorExpansion;
    y2(i) = cos(x);
    cos_dy = abs(y1-y2);
end

sita1 = 1:1:180;
cot_dy = zeros(1,length(sita1));
y1 = zeros(1,length(sita1));
y2 = zeros(1,length(sita1));
for i=1:180-1
    [out] = yjy_cot(i);
    y1(i) = out;
    y2(i) = cosd(i)/sind(i);
    cot_dy = abs(y1-y2);
end

sita = 1:1:360;
sin_dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:360
    x = i*(pi/180);
    [TaylorExpansion] = zyq_sin(x);
    y1(i) = TaylorExpansion;
    y2(i) = sin(x);
    sin_dy = abs(y1-y2);
end

inputx1 = -89:1:99;
dy = zeros(1,length(inputx1));
y1 = zeros(1,length(inputx1));
y2 = zeros(1,length(inputx1));
for i=1:length(inputx1)
     x =i+(-92);
    x=x*pi/180;
    [TaylorExpansion] =xf_tanx(x);
    y1(i) = TaylorExpansion;
    y2(i) = tan(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(5,1,1)
plot(inputx,arcsin_dy);
title('??????arcsin??????????arcsin??????????????????');xlabel('??????');ylabel('??????????');

subplot(5,1,5)
plot(inputx1,dy);
title('??????tan_dy??????????tan_dy??????????????????');xlabel('??????');ylabel('??????????');


subplot(5,1,3)
plot(sita1,cot_dy);
title('??????cot_dy??????????cot_dy??????????????????');xlabel('??????');ylabel('??????????');
% 
subplot(5,1,4)
plot(sita,sin_dy);
title('??????sin_dy??????????sin_dy??????????????????');xlabel('??????');ylabel('??????????');
% 

set(gca,'YLim',[0 1]);%X????????????????
set(gca,'YTick',[0:1:1]);%??????????????????
subplot(5,1,2)
plot(sita,cos_dy);
title('??????cos_dy??????????cos_dy??????????????????');xlabel('??????');ylabel('??????????');
