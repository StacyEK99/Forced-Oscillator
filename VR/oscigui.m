function varargout = oscigui(varargin)
% OSCIGUI MATLAB code for oscigui.fig
%      OSCIGUI, by itself, creates a new OSCIGUI or raises the existing
%      singleton*.
%
%      H = OSCIGUI returns the handle to a new OSCIGUI or the handle to
%      the existing singleton*.
%
%      OSCIGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OSCIGUI.M with the given input arguments.
%
%      OSCIGUI('Property','Value',...) creates a new OSCIGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before oscigui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to oscigui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help oscigui

% Last Modified by GUIDE v2.5 01-Feb-2021 17:38:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @oscigui_OpeningFcn, ...
                   'gui_OutputFcn',  @oscigui_OutputFcn, ...
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


% --- Executes just before oscigui is made visible.
function oscigui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to oscigui (see VARARGIN)

% Choose default command line output for oscigui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes oscigui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = oscigui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.deplacement, 'enable', 'off')
set(handles.frottement, 'enable', 'off')
set(handles.masse, 'enable', 'off')
set(handles.raideur, 'enable', 'off')

% This creates the 'background' axes

ha = axes('units','normalized', 'position',[0 0 1 1]);
% Move the background axes to the bottom

uistack(ha,'bottom');

% Load in a background image and display it using the correct colors

% The image used below, is in the Image Processing Toolbox.  If you do not have %access to this toolbox, you can use another image file instead.

I=imread('sky.png');

hi = imagesc(I)

colormap gray

% Turn the handlevisibility off so that we don't inadvertently plot into the axes again

% Also, make the axes invisible

set(ha,'handlevisibility','off','visible','off')




function deplacement_Callback(hObject, eventdata, handles)
% hObject    handle to deplacement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of deplacement as text
%        str2double(get(hObject,'String')) returns contents of deplacement as a double


% --- Executes during object creation, after setting all properties.
function deplacement_CreateFcn(hObject, eventdata, handles)
% hObject    handle to deplacement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function masse_Callback(hObject, eventdata, handles)
% hObject    handle to masse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of masse as text
%        str2double(get(hObject,'String')) returns contents of masse as a double


% --- Executes during object creation, after setting all properties.
function masse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to masse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frottement_Callback(hObject, eventdata, handles)
% hObject    handle to frottement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frottement as text
%        str2double(get(hObject,'String')) returns contents of frottement as a double


% --- Executes during object creation, after setting all properties.
function frottement_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frottement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function raideur_Callback(hObject, eventdata, handles)
% hObject    handle to raideur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of raideur as text
%        str2double(get(hObject,'String')) returns contents of raideur as a double


% --- Executes during object creation, after setting all properties.
function raideur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to raideur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% clear all;
% clc;

a1=get(handles.deplacement,'String');
x0=str2double(a1);
a2=get(handles.masse,'String');
m=str2double(a2);
a3=get(handles.frottement,'String');
c=str2double(a3);
a4=get(handles.raideur,'String');
k=str2double(a4);
  
save valeurs.mat x0 m c k

[y,t]=wsecRK4(@fs,x0,0,0,1,100);
axes(handles.axes3)
plot(t,y(1,:),'b','LineWidth',2);
ylabel('position');
xlabel('temps');
grid;


handles.myworld = vrworld('oscillator.wrl');
open(handles.myworld);
view(handles.myworld);

handles.myworld.Spring.translation = [-4.1766  1.2808 0.0392];
 
for i=1:1:100
handles.myworld.Mass.translation = [1.8712+y(1,i)/10  1.2728 0.1067];
handles.myworld.Spring.scale = [1.0000 1.000 1.000+y(1,i)/50];
pause(0.01)
end
close(handles.myworld);

% Update handles structure
guidata(hObject, handles);


% --- Executes on slider movement.
function slider_dep_Callback(hObject, eventdata, handles)
% hObject    handle to slider_dep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x=get(handles.slider_dep,'value');
set(handles.deplacement,'string',x);



% --- Executes during object creation, after setting all properties.
function slider_dep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_dep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_masse_Callback(hObject, eventdata, handles)
% hObject    handle to slider_masse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x=get(handles.slider_masse,'value');
set(handles.masse,'string',x);


% --- Executes during object creation, after setting all properties.
function slider_masse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_masse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_frott_Callback(hObject, eventdata, handles)
% hObject    handle to slider_frott (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of sliderx=get(handles.slider_dep,'value');
x=get(handles.slider_frott,'value');
set(handles.frottement,'string',x);



% --- Executes during object creation, after setting all properties.
function slider_frott_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_frott (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider_raideur_Callback(hObject, eventdata, handles)
% hObject    handle to slider_raideur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x=get(handles.slider_raideur,'value');
set(handles.raideur,'string',x);


% --- Executes during object creation, after setting all properties.
function slider_raideur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_raideur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in forcer.
function forcer_Callback(hObject, eventdata, handles)
% hObject    handle to forcer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% a55=get(handles.slider11,'String');
% f=str2double(a55);
% a66=get(handles.slider12,'String');
% w=str2double(a66);
h8=get(handles.edit5,'String');
w=str2double(h8);
h9=get(handles.edit6,'String');
f=str2double(h9);
ab=[0 10]; 
a1=get(handles.deplacement,'String');
x0=str2double(a1);
INI=[x0 0];
h=0.01;
% save vala.mat w f
save newval.mat w f

a2=get(handles.masse,'String');
m=str2double(a2);
a4=get(handles.raideur,'String');
k=str2double(a4);
save valeurs.mat x0 m  k

[t, x, u] = Sys2ODEsRKclas('ODEsHW8_24a',ab,h,INI);
axes(handles.axes2)
plot(t,u(1,:),'b','LineWidth',2);
ylabel('vitesse');
xlabel('temps');
grid;
axes(handles.axes1)
plot(t,x,'b','LineWidth',2);
ylabel('position');
xlabel('temps');

handles.myworld = vrworld('oscillator.wrl');
open(handles.myworld);
view(handles.myworld);

handles.myworld.Spring.translation = [-4.1766  1.2808 0.0392];
 
for i=1:1:500
handles.myworld.Mass.translation = [1.8712+x(1,i)/10  1.2728 0.1067];
handles.myworld.Spring.scale = [1.0000 1.000 1.000+x(1,i)/50];
pause(0.01)
end
close(handles.myworld);



% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
