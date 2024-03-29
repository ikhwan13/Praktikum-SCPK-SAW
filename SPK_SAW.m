function varargout = SPK_SAW(varargin)
% SPK_SAW MATLAB code for SPK_SAW.fig
%      SPK_SAW, by itself, creates a new SPK_SAW or raises the existing
%      singleton*.
%
%      H = SPK_SAW returns the handle to a new SPK_SAW or the handle to
%      the existing singleton*.
%
%      SPK_SAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPK_SAW.M with the given input arguments.
%
%      SPK_SAW('Property','Value',...) creates a new SPK_SAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SPK_SAW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SPK_SAW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SPK_SAW

% Last Modified by GUIDE v2.5 23-Jun-2021 21:02:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SPK_SAW_OpeningFcn, ...
                   'gui_OutputFcn',  @SPK_SAW_OutputFcn, ...
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


% --- Executes just before SPK_SAW is made visible.
function SPK_SAW_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SPK_SAW (see VARARGIN)

% Choose default command line output for SPK_SAW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SPK_SAW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SPK_SAW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=[3,4,4,1,4;2,3,3,2,4;4,4,2,1,5;4,4,4,2,5;3,4,3,2,4];%input data berdasarkan kriteria
k=[0,1,1,1,1];%nilai atribut, dimana 0= atribut biaya &1= atribut keuntungan
w=[0.35,0.10,0.15,0.15,0.25];% bobot untuk masing-masing kriteria
%tahapan 1. normalisasi matriks
[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n,
 if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end;
end;
%tahapan kedua, proses perangkingan

 V(1)= sum(w.*R(1,:))
 hasil = V(1);
 V(2)= sum(w.*R(2,:))
 hasil2 = V(2);
 V(3)= sum(w.*R(3,:))
 hasil3 = V(3);
 V(4)= sum(w.*R(4,:))
 hasil4 = V(4);
 V(5)= sum(w.*R(5,:))
 hasil5 = V(5);

set(handles.hasil, 'String', hasil);
set(handles.hasil2, 'String', hasil2);
set(handles.hasil3, 'String', hasil3);
set(handles.hasil4, 'String', hasil4);
set(handles.hasil5, 'String', hasil5);
