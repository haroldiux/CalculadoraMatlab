function varargout = newtonRaphson(varargin)
% NEWTONRAPHSON MATLAB code for newtonRaphson.fig
%      NEWTONRAPHSON, by itself, creates a new NEWTONRAPHSON or raises the existing
%      singleton*.
%
%      H = NEWTONRAPHSON returns the handle to a new NEWTONRAPHSON or the handle to
%      the existing singleton*.
%
%      NEWTONRAPHSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTONRAPHSON.M with the given input arguments.
%
%      NEWTONRAPHSON('Property','Value',...) creates a new NEWTONRAPHSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newtonRaphson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newtonRaphson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newtonRaphson

% Last Modified by GUIDE v2.5 28-Nov-2018 11:20:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newtonRaphson_OpeningFcn, ...
                   'gui_OutputFcn',  @newtonRaphson_OutputFcn, ...
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


% --- Executes just before newtonRaphson is made visible.
function newtonRaphson_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newtonRaphson (see VARARGIN)

% Choose default command line output for newtonRaphson
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newtonRaphson wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newtonRaphson_OutputFcn(hObject, eventdata, handles) 
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
try
cf = get(handles.edit1,'string');

% Declaración de variable simbólica
syms x

% De cadena a función
f = inline(cf);

% Derivar la cadena "cf" y obtener la cadena "derivada"
derivada = diff(cf, x);

% De cadena a función
df = inline(derivada);

% Lectura de datos
x = str2double(get(handles.edit2,'string'));
tol = str2double(get(handles.edit3,'string'));


% Valores iniciales
error = 50;
n = 0;

% Imprimimos título de cabecera
set(handles.tabla,'Data',{})

hold off
cla
set(handles.tabla,'Data',{})
set(handles.respuesta,'string','No hay raiz');
% Iterar mientras el error sea mayor a la tolerancia
while (error > tol)
    
    
    x = x - (f(x)/df(x));
    error = abs(f(x));
    %mostar datos
     newRow ={n  x   error };
    oldData = get(handles.tabla,'Data');
    newData=[oldData; newRow];
    set(handles.tabla,'Data',newData)
    n = n+1;
end
respuesta=sprintf('%9.6f',x);
set(handles.respuesta,'string',respuesta);
%Grafica de la funcion
hold off
handles.axes1=ezplot(f);
grid on;
hold on;
zoom on

catch 
        msgbox('Un error ha ocurrido. Verifique que ha introducido todos los datos y de la forma adecuada','Error','error');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(newtonRaphson);
interfaz;
