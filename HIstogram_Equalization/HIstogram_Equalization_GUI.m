function varargout = HIstogram_Equalization_GUI(varargin)
% HISTOGRAM_EQUALIZATION_GUI MATLAB code for HIstogram_Equalization_GUI.fig
%      HISTOGRAM_EQUALIZATION_GUI, by itself, creates a new HISTOGRAM_EQUALIZATION_GUI or raises the existing
%      singleton*.
%
%      H = HISTOGRAM_EQUALIZATION_GUI returns the handle to a new HISTOGRAM_EQUALIZATION_GUI or the handle to
%      the existing singleton*.
%
%      HISTOGRAM_EQUALIZATION_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HISTOGRAM_EQUALIZATION_GUI.M with the given input arguments.
%
%      HISTOGRAM_EQUALIZATION_GUI('Property','Value',...) creates a new HISTOGRAM_EQUALIZATION_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HIstogram_Equalization_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HIstogram_Equalization_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HIstogram_Equalization_GUI

% Last Modified by GUIDE v2.5 08-Oct-2022 09:48:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HIstogram_Equalization_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @HIstogram_Equalization_GUI_OutputFcn, ...
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


% --- Executes just before HIstogram_Equalization_GUI is made visible.
function HIstogram_Equalization_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HIstogram_Equalization_GUI (see VARARGIN)

% Choose default command line output for HIstogram_Equalization_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Global variables 
global isFileChosen;
isFileChosen = 0;

% UIWAIT makes HIstogram_Equalization_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HIstogram_Equalization_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in chooseFileBtn.
function chooseFileBtn_Callback(hObject, eventdata, handles)
% hObject    handle to chooseFileBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A isFileChosen;  
[FileName,PathName] = uigetfile({'*.png*'; '*.jpg*'}, 'Select image file');
if ([FileName,PathName])  
    isFileChosen = 1;
    set(handles.warning, 'String', '');
    
    A = imread([PathName,FileName]);
    axes(handles.axes1);
    imshow(A);
    
    % color image to gray image 
    if length(size(A)) == 3                
        A = rgb2gray(A);
    end
    
    % Histogram of A
    axes(handles.axes2);
    imhist(A);
    ylim('auto');
    
    % reset enhanced Image
    cla(handles.axes3, 'reset');
    cla(handles.axes4, 'reset');
else
    if (~isFileChosen)
        set(handles.warning, 'String', 'No File Chosen !!!');
    end
end



% --- Executes on button press in enhanceBtn.
function enhanceBtn_Callback(hObject, eventdata, handles)
% hObject    handle to enhanceBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A isFileChosen;
if (isFileChosen)
    B = histeq(A, 256);
    axes(handles.axes3);
    imshow(B);

    axes(handles.axes4);
    imhist(B);
    ylim('auto');
else
    set(handles.warning, 'String', 'No File Chosen !!!');
end
