function varargout = puntofijo(varargin)
% PUNTOFIJO MATLAB code for puntofijo.fig
%      PUNTOFIJO, by itself, creates a new PUNTOFIJO or raises the existing
%      singleton*.
%
%      H = PUNTOFIJO returns the handle to a new PUNTOFIJO or the handle to
%      the existing singleton*.
%
%      PUNTOFIJO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PUNTOFIJO.M with the given input arguments.
%
%      PUNTOFIJO('Property','Value',...) creates a new PUNTOFIJO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before puntofijo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to puntofijo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help puntofijo

% Last Modified by GUIDE v2.5 28-Nov-2018 17:02:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @puntofijo_OpeningFcn, ...
                   'gui_OutputFcn',  @puntofijo_OutputFcn, ...
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


% --- Executes just before puntofijo is made visible.
function puntofijo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to puntofijo (see VARARGIN)

% Choose default command line output for puntofijo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes puntofijo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = puntofijo_OutputFcn(hObject, eventdata, handles) 
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
cla %limpiar tabla
set(handles.tabla,'Data',{})
%limpiar textboxs
set(handles.edit1,'string','');
set(handles.edit2,'string','');
set(handles.edit3,'string','');
set(handles.edit4,'string','');
set(handles.respuesta,'string','');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=inline(get(handles.edit1,'string'));
g=inline(get(handles.edit2,'string'));
Xo=str2double(get(handles.edit3,'string'));
Tol=str2double(get(handles.edit4,'string'));
Iter=10;
Yn=f(Xo);
Error=Tol+1;
Cont=0;
Z=[Cont,Xo,Yn,Error];
set(handles.tabla,'Data',[]);
while Yn~=0 && Error>Tol && Cont<Iter
Xn=g(Xo);
Yn=f(Xn);
Error=abs((Xn-Xo)/Xn);
Cont=Cont+1;
Z(Cont,1)=Cont;
Z(Cont,2)=Xn;
Z(Cont,3)=Yn;
Z(Cont,4)=Error;
Xo=Xn;
%mostrar los datos en tabla
    newRow ={Cont Xn Yn  Error};
    oldData = get(handles.tabla,'Data');
    newData=[oldData; newRow];
    set(handles.tabla,'Data',newData)

end
if Yn==0
      fprintf('%g es raiz\n\n',Xo);
else
   if Error<Tol
     respuesta=sprintf('%15.8f',Xo);
     set(handles.respuesta,'string',respuesta);
   end
end
axes(handles.axes1)
f=inline(get(handles.edit1,'string'));
ezplot(f);



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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function respuesta_Callback(hObject, eventdata, handles)
% hObject    handle to respuesta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of respuesta as text
%        str2double(get(hObject,'String')) returns contents of respuesta as a double


% --- Executes during object creation, after setting all properties.
function respuesta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to respuesta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=inline(get(handles.edit1,'string'));
g=inline(get(handles.edit2,'string'));
Xo=str2double(get(handles.edit3,'string'));
Tol=str2double(get(handles.edit4,'string'));
Iter=10;
Yn=f(Xo);
Error=Tol+1;
Cont=0;
Z=[Cont,Xo,Yn,Error];
set(handles.tabla,'Data',[]);
while Yn~=0 && Error>Tol && Cont<Iter
Xn=g(Xo);
Yn=f(Xn);
Error=abs((Xn-Xo)/Xn);
Cont=Cont+1;
Z(Cont,1)=Cont;
Z(Cont,2)=Xn;
Z(Cont,3)=Yn;
Z(Cont,4)=Error;
Xo=Xn;
%mostrar los datos en tabla
    newRow ={Cont Xn Yn  Error};
    oldData = get(handles.tabla,'Data');
    newData=[oldData; newRow];
    set(handles.tabla,'Data',newData)

end
if Yn==0
     fprintf('\n\nSOLUCION:\n')
      fprintf('%g es raiz\n\n',Xo);
else
   if Error<Tol
     fprintf('\n\nSOLUCION:\n')
     respuesta=sprintf('%15.8f',Xo);
     set(handles.respuesta,'string',respuesta);
   end
end
axes(handles.axes1)
f=inline(get(handles.edit1,'string'));
ezplot(f);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(puntofijo);
interfaz;


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
