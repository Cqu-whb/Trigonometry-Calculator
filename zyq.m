function varargout = zyq(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @zyq_OpeningFcn, ...
                   'gui_OutputFcn',  @zyq_OutputFcn, ...
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


% --- Executes just before zyq is made visible.
function zyq_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to zyq (see VARARGIN)

% Choose default command line output for zyq
set(handles.edit1,'string','');
set(handles.edit2,'string','');

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zyq wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = zyq_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- ±í´ïÊ½¿ò
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


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- ¼ÆËã½á¹û¿ò
function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.°´¼ü7
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.edit1,'String');
textString = strcat(textString,'7');
set(handles.edit1,'String',textString);
guidata(hObject, handles);

% --- Executes on button press in pushbutton2.°´¼ü8
function pushbutton2_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'8');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton3.°´¼ü9
function pushbutton3_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'9');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton4.°´¼ü0
function pushbutton4_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'0');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton5.°´¼üAE
function pushbutton5_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = get(handles.edit2,'String');
    set(handles.edit1,'String','');
    set(handles.edit2,'String','');
    guidata(hObject, handles);

% --- Executes on button press in pushbutton6.°´¼ü4
function pushbutton6_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'4');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton7.°´¼ü5
function pushbutton7_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'5');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton9.°´¼ü6
function pushbutton9_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'6');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton11.°´¼ü1
function pushbutton11_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'1');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);


% --- Executes on button press in pushbutton12.°´¼ü2
function pushbutton12_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'2');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton13.°´¼ü3
function pushbutton13_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'3');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton14.°´¼ü£¨
function pushbutton14_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'(');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton15.°´¼ü£©
function pushbutton15_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,')');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton16.°´¼üÍË³ö
function pushbutton16_Callback(hObject, eventdata, handles)
    close(gcf);

% --- Executes on button press in pushbutton17.°´¼üback
function pushbutton17_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String');
    as=char(textString);
    n=length(textString);
    textString=as(1:n-1);
    set(handles.edit1,'String',textString)
    guidata(hObject, handles);

% --- Executes on button press in pushbutton18.°´¼ü.
function pushbutton18_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'.');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
% --- Executes on button press in pushbutton22.°´¼ü-
function pushbutton22_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'-');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton19.°´¼ü¼ÆËã
function pushbutton19_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    aa = eval(textString);
    set(handles.edit2,'String',aa);
    guidata(hObject, handles);

    
% --- Executes on button press in pushbutton8.°´¼üsin
function pushbutton8_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'zyq_sin');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton10.°´¼ücos
function pushbutton10_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'lu_cos');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
    
% --- Executes on button press in pushbutton20.°´¼üarcsin
function pushbutton20_Callback(hObject, eventdata, handles)
   
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'whb_arcsin');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton21.°´¼ücot
function pushbutton21_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'yjy_cot');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
    
% --- Executes on button press in pushbutton23.°´¼ütan
function pushbutton23_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'xf_tanx');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);    

%sinº¯Êý¼ÆËã
function result=zyq_sin(angle)
    if angle >= 0
        angle = pi * (angle / 180);		    
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
    else
        angle = pi * (abs(angle) / 180);
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
        result = -result;
    end
   result = roundn(result,-2);

% --- Executes during object creation, after setting all properties.
function pushbutton20_CreateFcn(hObject, ~, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
