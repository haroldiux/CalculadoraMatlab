function varargout = biseccion(varargin)
% BISECCION MATLAB code for biseccion.fig
%      BISECCION, by itself, creates a new BISECCION or raises the existing
%      singleton*.
%
%      H = BISECCION returns the handle to a new BISECCION or the handle to
%      the existing singleton*.
%
%      BISECCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BISECCION.M with the given input arguments.
%
%      BISECCION('Property','Value',...) creates a new BISECCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before biseccion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to biseccion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help biseccion

% Last Modified by GUIDE v2.5 28-Nov-2018 11:00:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @biseccion_OpeningFcn, ...
                   'gui_OutputFcn',  @biseccion_OutputFcn, ...
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


% --- Executes just before biseccion is made visible.
function biseccion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to biseccion (see VARARGIN)

% Choose default command line output for biseccion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes biseccion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = biseccion_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=get(handles.edit1,'string');
f=inline(f);
xai=str2double(get(handles.edit2,'string')); 
xbi=str2double(get(handles.edit3,'string'));
tol=str2double(get(handles.edit4,'string')); 
i=1;
ea(1)=100;

if f(xai)*f(xbi)<0; 
xa(1)=xai;
xb(1)=xbi;
xr(1)=(xa(1)+xb(1))/2;

set(handles.tabla,'Data',{})

hold off
cla
set(handles.tabla,'Data',{})
set(handles.respuesta,'string','No hay raiz');
while abs(ea(i))>=tol
     if f(xa(i))*f(xr(i))<0 
           xa(i+1)=xa(i);
           xb(i+1)=xr(i); 
     end
     if f(xa(i))*f(xr(i))>0 
          xa(i+1)=xr(i); 
          xb(i+1)=xb(i);
     end
   xr(i+1)=(xa(i+1)+xb(i+1))/2; 
   ea(i+1)=abs((xr(i+1)-xr(i))/(xr(i+1))*100);
  
    % ============= Mostrara datos en tabla ==============================
    newRow ={i xa(i+1) xb(i+1) xr(i+1) ea(i+1)};
    oldData = get(handles.tabla,'Data');
    newData=[oldData; newRow];
    set(handles.tabla,'Data',newData)
  
    grid on;
    plot(i,f(i),'Ok');
    hold on;

  i=i+1;
end 
respuesta=sprintf('%0.6f',xr(i));
set(handles.respuesta,'string',respuesta);

%Grafica de la funcion
fplot(handles.axes1,f,[xai xbi]);
grid
ezplot(f);
    grid on;
    plot(xbi,f(xbi),'*');
    zoom on
else
set(handles.respuesta,'string','No existe la raiz en el intervalo');
zoom on
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(biseccion);
interfaz;
