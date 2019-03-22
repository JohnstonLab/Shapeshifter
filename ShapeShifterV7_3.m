

function varargout = ShapeShifterV7_3(varargin)
% ShapeShifterV7_3 M-file for ShapeShifterV7_3.fig
%      ShapeShifterV7_3, by itself, creates a new ShapeShifterV7_3 or raises the existing
%      singleton*.
%
%      H = ShapeShifterV7_3 returns the handle to a new ShapeShifterV7_3 or the
%      handle to
%      the existing singleton*.
%
%      ShapeShifterV7_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ShapeShifterV7_3.M with the given input arguments.
%
%      ShapeShifterV7_3('Property','Value',...) creates a new ShapeShifterV7_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the ShapeShifterV7_3 before ShapeShifterV7_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ShapeShifterV7_3_OpeningFcn via varargin.
%
%      *See ShapeShifterV7_3 Options on GUIDE's Tools menu.  Choose "ShapeShifterV7_3 allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ShapeShifterV7_3
% Last Modified by GUIDE v2.5 01-Dec-2015 16:52:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ShapeShifterV7_3_OpeningFcn, ...
                   'gui_OutputFcn',  @ShapeShifterV7_3_OutputFcn, ...
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
%//////////////////////////////////////////////////////////////////////////
%//////Above is for the ShapeShifterV7_3 only
%//////////////////////////////////////////////////////////////////////////
%
%
%
%  Written by Jamie Johnston
%  
%
%//////////////////////////////////////////////////////////////////////////
%//////Initializes default variables
%//////////////////////////////////////////////////////////////////////////
% --- Executes just before ShapeShifterV7_3 is made visible.
function ShapeShifterV7_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ShapeShifterV7_3 (see VARARGIN)




handles.scale =  1;    %for contrast of the box


% Choose default command line output for ShapeShifterV7_3
handles.output = hObject

% Update handles structure
guidata(hObject, handles)

% UIWAIT makes ShapeShifterV7_3 wait for user response (see UIRESUME)
% uiwait(handles.ShapeShifterV7_3);


% --- Outputs from this function are returned to the command line.
function varargout = ShapeShifterV7_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%///////////////////////Load Sequence//////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////

% --- Executes on button press in Load.
function Load_Callback(hObject, eventdata, handles)

%get(handles.Spot1,'Value')
[FileName,PathName,FilterIndex] = uigetfile();
if FileName == 0
    msgbox('Settings Not Loaded.', 'WARNING')
else
    filePath = fullfile([PathName,FileName]);
    c = importdata(filePath);

end

set(handles.Rback, 'String', c.Rback);
set(handles.Gback, 'String', c.Gback);
set(handles.Bback, 'String', c.Bback);

set(handles.Trig, 'String', c.Trig);
set(handles.Loop, 'String', c.Loop);

%EP1
set(handles.Motion1, 'Value', c.Motion1);
set(handles.Constant1, 'Value', c.Constant1);
set(handles.Flicker1, 'Value', c.Flicker1);
set(handles.Bar1, 'Value', c.Bar1);
set(handles.Spot1, 'Value', c.Spot1);
set(handles.Width1, 'String', c.Width1);
set(handles.Height1, 'String', c.Height1);
set(handles.Speed1, 'String', c.Speed1);
set(handles.Con1_1, 'String', c.Con1_1);
set(handles.Con1_2, 'String', c.Con1_2);
set(handles.Hz1, 'String', c.Hz1);
set(handles.D1, 'String', c.D1);
set(handles.ISI1, 'String', c.ISI1);
set(handles.Angle1, 'String', c.Angle1);
set(handles.Start1, 'String', c.Start1);
set(handles.End1, 'String', c.End1);
set(handles.WhichMask1, 'String', c.WhichMask1);
set(handles.Grating1,'Value', c.Grating1);


%EP2
set(handles.Motion2, 'Value', c.Motion2);
set(handles.Constant2, 'Value', c.Constant2);
set(handles.Flicker2, 'Value', c.Flicker2);
set(handles.Bar2, 'Value', c.Bar2);
set(handles.Spot2, 'Value', c.Spot2);
set(handles.Width2, 'String', c.Width2);
set(handles.Height2, 'String', c.Height2);
set(handles.Speed2, 'String', c.Speed2);
set(handles.Con2_1, 'String', c.Con2_1);
set(handles.Con2_2, 'String', c.Con2_2);
set(handles.Hz2, 'String', c.Hz2);
set(handles.D2, 'String', c.D2);
set(handles.ISI2, 'String', c.ISI2);
set(handles.Angle2, 'String', c.Angle2);
set(handles.Start2, 'String', c.Start2);
set(handles.End2, 'String', c.End2);
set(handles.WhichMask2, 'String', c.WhichMask2);
set(handles.Grating2,'Value', c.Grating2);

%EP3
set(handles.Motion3, 'Value', c.Motion3);
set(handles.Constant3, 'Value', c.Constant3);
set(handles.Flicker3, 'Value', c.Flicker3);
set(handles.Bar3, 'Value', c.Bar3);
set(handles.Spot3, 'Value', c.Spot3);
set(handles.Width3, 'String', c.Width3);
set(handles.Height3, 'String', c.Height3);
set(handles.Speed3, 'String', c.Speed3);
set(handles.Con3_1, 'String', c.Con3_1);
set(handles.Con3_2, 'String', c.Con3_2);
set(handles.Hz3, 'String', c.Hz3);
set(handles.D3, 'String', c.D3);
set(handles.ISI3, 'String', c.ISI3);
set(handles.Angle3, 'String', c.Angle3);
set(handles.Start3, 'String', c.Start3);
set(handles.End3, 'String', c.End3);
set(handles.WhichMask3, 'String', c.WhichMask3);
set(handles.Grating3,'Value', c.Grating3);

%EP4
set(handles.Motion4, 'Value', c.Motion4);
set(handles.Constant4, 'Value', c.Constant4);
set(handles.Flicker4, 'Value', c.Flicker4);
set(handles.Bar4, 'Value', c.Bar4);
set(handles.Spot4, 'Value', c.Spot4);
set(handles.Width4, 'String', c.Width4);
set(handles.Height4, 'String', c.Height4);
set(handles.Speed4, 'String', c.Speed4);
set(handles.Con4_1, 'String', c.Con4_1);
set(handles.Con4_2, 'String', c.Con4_2);
set(handles.Hz4, 'String', c.Hz4);
set(handles.D4, 'String', c.D4);
set(handles.ISI4, 'String', c.ISI4);
set(handles.Angle4, 'String', c.Angle4);
set(handles.Start4, 'String', c.Start4);
set(handles.End4, 'String', c.End4);
set(handles.WhichMask4, 'String', c.WhichMask4);
set(handles.Grating4,'Value', c.Grating4);

%EP5
set(handles.Motion5, 'Value', c.Motion5);
set(handles.Constant5, 'Value', c.Constant5);
set(handles.Flicker5, 'Value', c.Flicker5);
set(handles.Bar5, 'Value', c.Bar5);
set(handles.Spot5, 'Value', c.Spot5);
set(handles.Width5, 'String', c.Width5);
set(handles.Height5, 'String', c.Height5);
set(handles.Speed5, 'String', c.Speed5);
set(handles.Con5_1, 'String', c.Con5_1);
set(handles.Con5_2, 'String', c.Con5_2);
set(handles.Hz5, 'String', c.Hz5);
set(handles.D5, 'String', c.D5);
set(handles.ISI5, 'String', c.ISI5);
set(handles.Angle5, 'String', c.Angle5);
set(handles.Start5, 'String', c.Start5);
set(handles.End5, 'String', c.End5);
%set(handles.Whichmask5, 'String', c.Whichmask5);
set(handles.Grating5,'Value', c.Grating5);

%EP6
set(handles.Motion6, 'Value', c.Motion6);
set(handles.Constant6, 'Value', c.Constant6);
set(handles.Flicker6, 'Value', c.Flicker6);
set(handles.Bar6, 'Value', c.Bar6);
set(handles.Spot6, 'Value', c.Spot6);
set(handles.Width6, 'String', c.Width6);
set(handles.Height6, 'String', c.Height6);
set(handles.Speed6, 'String', c.Speed6);
set(handles.Con6_1, 'String', c.Con6_1);
set(handles.Con6_2, 'String', c.Con6_2);
set(handles.Hz6, 'String', c.Hz6);
set(handles.D6, 'String', c.D6);
set(handles.ISI6, 'String', c.ISI6);
set(handles.Angle6, 'String', c.Angle6);
set(handles.Start6, 'String', c.Start6);
set(handles.End6, 'String', c.End6);
set(handles.Whichmask6, 'String', c.WhichMask6);
set(handles.Grating6,'Value', c.Grating6);

%EP7
set(handles.Motion7, 'Value', c.Motion7);
set(handles.Constant7, 'Value', c.Constant7);
set(handles.Flicker7, 'Value', c.Flicker7);
set(handles.Bar7, 'Value', c.Bar7);
set(handles.Spot7, 'Value', c.Spot7);
set(handles.Width7, 'String', c.Width7);
set(handles.Height7, 'String', c.Height7);
set(handles.Speed7, 'String', c.Speed7);
set(handles.Con7_1, 'String', c.Con7_1);
set(handles.Con7_2, 'String', c.Con7_2);
set(handles.Hz7, 'String', c.Hz7);
set(handles.D7, 'String', c.D7);
set(handles.ISI7, 'String', c.ISI7);
set(handles.Angle7, 'String', c.Angle7);
set(handles.Start7, 'String', c.Start7);
set(handles.End7, 'String', c.End7);
set(handles.Whichmask7, 'String', c.WhichMask7);
set(handles.Grating7,'Value', c.Grating7);

%EP8
set(handles.Motion8, 'Value', c.Motion8);
set(handles.Constant8, 'Value', c.Constant8);
set(handles.Flicker8, 'Value', c.Flicker8);
set(handles.Bar8, 'Value', c.Bar8);
set(handles.Spot8, 'Value', c.Spot8);
set(handles.Width8, 'String', c.Width8);
set(handles.Height8, 'String', c.Height8);
set(handles.Speed8, 'String', c.Speed8);
set(handles.Con8_1, 'String', c.Con8_1);
set(handles.Con8_2, 'String', c.Con8_2);
set(handles.Hz8, 'String', c.Hz8);
set(handles.D8, 'String', c.D8);
set(handles.ISI8, 'String', c.ISI8);
set(handles.Angle8, 'String', c.Angle8);
set(handles.Start8, 'String', c.Start8);
set(handles.End8, 'String', c.End8);
set(handles.Whichmask8, 'String', c.WhichMask8);
set(handles.Grating8,'Value', c.Grating8);

%set(handles.RFangle, 'String', c.RFangle);
%set(handles.ONOFF, 'String', c.ONOFF);
%set(handles.RF_Delta_ang, 'String', c.RF_Delta_ang);
%set(handles.RF_loop, 'String', c.RF_loop);

%set(handles.WnoiseFram, 'String', c.WnoiseFram);


function n=ev(hand)
    n=str2double(get(hand, 'String'));

function put(hand, str)
    set(hand, 'String', str)







%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%///////////Run Sequence Start////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////

% --- Executes on button press in RunSeq.
function RunSeq_Callback(hObject, eventdata, handles)
win = handles.win;          % Finds window to update
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback]

Trig = ev(handles.Trig); % delay from trigger to movement in secs
scale= handles.scale;
Save = get(handles.Save,'Value');
Loop = ev(handles.Loop);
screenRect = handles.screenRect;

%epoch1
Motion1 = get(handles.Motion1,'Value');      %checkbox for motion
Constant1 = get(handles.Constant1,'Value');  %checkbox for constant
Flicker1 = get(handles.Flicker1,'Value');    %checkbox for flicker
Grating1 = get(handles.Grating1,'Value');
Bar1 = get(handles.Bar1,'Value');        % checkbox for bar
Spot1 = get(handles.Spot1,'Value');      % checkbox for spot
Width1 = ev(handles.Width1);     % In pixels
Height1 = ev(handles.Height1);   % In pixels
Speed1 = ev(handles.Speed1);      % in pixels per redraw
Con1_1 = ev(handles.Con1_1);     % gray value of box
Con1_2 = ev(handles.Con1_2);     % gray value of box
Hz1 = ev(handles.Hz1);          % frequency of flicker
D1 = ev(handles.D1);            % duration of static object
ISI1 = ev(handles.ISI1);        % interstimulus interval after 1st epoch
Angle1 = ev(handles.Angle1);
Start1 = ev(handles.Start1);
End1 = ev(handles.End1);
WhichMask1 = ev(handles.WhichMask1);

%epoch2
Motion2 = get(handles.Motion2,'Value');      %checkbox for motion
Constant2 = get(handles.Constant2,'Value');  %checkbox for constant
Flicker2 = get(handles.Flicker2,'Value');    %checkbox for flicker
Grating2 = get(handles.Grating2,'Value');
Bar2 = get(handles.Bar2,'Value');        % checkbox for bar
Spot2 = get(handles.Spot2,'Value');      % checkbox for spot
Width2 = ev(handles.Width2);     % In pixels
Height2 = ev(handles.Height2);   % In pixels
Speed2 = ev(handles.Speed2);      % in pixels per redraw
Con2_1 = ev(handles.Con2_1);     % gray value of box
Con2_2 = ev(handles.Con2_2);     % gray value of box
Hz2 = ev(handles.Hz2);          % frequency of flicker
D2 = ev(handles.D2);            % duration of static object
ISI2 = ev(handles.ISI2);        % interstimulus interval after 1st epoch
Angle2 = ev(handles.Angle2);
Start2 = ev(handles.Start2);
End2 = ev(handles.End2);
WhichMask2 = ev(handles.WhichMask2);

%epoch3
Motion3 = get(handles.Motion3,'Value');      %checkbox for motion
Constant3 = get(handles.Constant3,'Value');  %checkbox for constant
Flicker3 = get(handles.Flicker3,'Value');    %checkbox for flicker
Grating3 = get(handles.Grating3,'Value');
Bar3 = get(handles.Bar3,'Value');        % checkbox for bar
Spot3 = get(handles.Spot3,'Value');      % checkbox for spot
Width3 = ev(handles.Width3);     % In pixels
Height3 = ev(handles.Height3);   % In pixels
Speed3 = ev(handles.Speed3);      % in pixels per redraw
Con3_1 = ev(handles.Con3_1);     % gray value of box
Con3_2 = ev(handles.Con3_2);     % gray value of box
Hz3 = ev(handles.Hz3);          % frequency of flicker
D3 = ev(handles.D3);            % duration of static object
ISI3 = ev(handles.ISI3);        % interstimulus interval after 1st epoch
Angle3 = ev(handles.Angle3);
Start3 = ev(handles.Start3);
End3 = ev(handles.End3);
WhichMask3 = ev(handles.WhichMask3);

%epoch4
Motion4 = get(handles.Motion4,'Value');      %checkbox for motion
Constant4 = get(handles.Constant4,'Value');  %checkbox for constant
Flicker4 = get(handles.Flicker4,'Value');    %checkbox for flicker
Grating4 = get(handles.Grating4,'Value');
Bar4 = get(handles.Bar4,'Value');        % checkbox for bar
Spot4 = get(handles.Spot4,'Value');      % checkbox for spot
Width4 = ev(handles.Width4);     % In pixels
Height4 = ev(handles.Height4);   % In pixels
Speed4 = ev(handles.Speed4);      % in pixels per redraw
Con4_1 = ev(handles.Con4_1);     % gray value of box
Con4_2 = ev(handles.Con4_2);     % gray value of box
Hz4 = ev(handles.Hz4);          % frequency of flicker
D4 = ev(handles.D4);            % duration of static object
ISI4 = ev(handles.ISI4);        % interstimulus interval after 1st epoch
Angle4 = ev(handles.Angle4);
Start4 = ev(handles.Start4);
End4 = ev(handles.End4);
WhichMask4 = ev(handles.WhichMask4);

%epoch5
Motion5 = get(handles.Motion5,'Value');      %checkbox for motion
Constant5 = get(handles.Constant5,'Value');  %checkbox for constant
Flicker5 = get(handles.Flicker5,'Value');    %checkbox for flicker
Grating5 = get(handles.Grating5,'Value');
Bar5 = get(handles.Bar5,'Value');        % checkbox for bar
Spot5 = get(handles.Spot5,'Value');      % checkbox for spot
Width5 = ev(handles.Width5);     % In pixels
Height5 = ev(handles.Height5);   % In pixels
Speed5 = ev(handles.Speed5);      % in pixels per redraw
Con5_1 = ev(handles.Con5_1);     % gray value of box
Con5_2 = ev(handles.Con5_2);     % gray value of box
Hz5 = ev(handles.Hz5);          % frequency of flicker
D5 = ev(handles.D5);            % duration of static object
ISI5 = ev(handles.ISI5);        % interstimulus interval after 1st epoch
Angle5 = ev(handles.Angle5);
Start5 = ev(handles.Start5);
End5 = ev(handles.End5);
Whichmask5 = ev(handles.Whichmask5);

%epoch6
Motion6 = get(handles.Motion6,'Value');      %checkbox for motion
Constant6 = get(handles.Constant6,'Value');  %checkbox for constant
Flicker6 = get(handles.Flicker6,'Value');    %checkbox for flicker
Grating6 = get(handles.Grating6,'Value');
Bar6 = get(handles.Bar6,'Value');        % checkbox for bar
Spot6 = get(handles.Spot6,'Value');      % checkbox for spot
Width6 = ev(handles.Width6);     % In pixels
Height6 = ev(handles.Height6);   % In pixels
Speed6 = ev(handles.Speed6);      % in pixels per redraw
Con6_1 = ev(handles.Con6_1);     % gray value of box
Con6_2 = ev(handles.Con6_2);     % gray value of box
Hz6 = ev(handles.Hz6);          % frequency of flicker
D6 = ev(handles.D6);            % duration of static object
ISI6 = ev(handles.ISI6);        % interstimulus interval after 1st epoch
Angle6 = ev(handles.Angle6);
Start6 = ev(handles.Start6);
End6 = ev(handles.End6);
WhichMask6 = ev(handles.Whichmask6);

%epoch7
Motion7 = get(handles.Motion7,'Value');      %checkbox for motion
Constant7 = get(handles.Constant7,'Value');  %checkbox for constant
Flicker7 = get(handles.Flicker7,'Value');    %checkbox for flicker
Grating7 = get(handles.Grating7,'Value');
Bar7 = get(handles.Bar7,'Value');        % checkbox for bar
Spot7 = get(handles.Spot7,'Value');      % checkbox for spot
Width7 = ev(handles.Width7);     % In pixels
Height7 = ev(handles.Height7);   % In pixels
Speed7 = ev(handles.Speed7);      % in pixels per redraw
Con7_1 = ev(handles.Con7_1);     % gray value of box
Con7_2 = ev(handles.Con7_2);     % gray value of box
Hz7 = ev(handles.Hz7);          % frequency of flicker
D7 = ev(handles.D7);            % duration of static object
ISI7 = ev(handles.ISI7);        % interstimulus interval after 1st epoch
Angle7 = ev(handles.Angle7);
Start7 = ev(handles.Start7);
End7 = ev(handles.End7);
WhichMask7 = ev(handles.Whichmask7);

%epoch8
Motion8 = get(handles.Motion8,'Value');      %checkbox for motion
Constant8 = get(handles.Constant8,'Value');  %checkbox for constant
Flicker8 = get(handles.Flicker8,'Value');    %checkbox for flicker
Grating8 = get(handles.Grating8,'Value');
Bar8 = get(handles.Bar8,'Value');        % checkbox for bar
Spot8 = get(handles.Spot8,'Value');      % checkbox for spot
Width8 = ev(handles.Width8);     % In pixels
Height8 = ev(handles.Height8);   % In pixels
Speed8 = ev(handles.Speed8);      % in pixels per redraw
Con8_1 = ev(handles.Con8_1);     % gray value of box
Con8_2 = ev(handles.Con8_2);     % gray value of box
Hz8 = ev(handles.Hz8);          % frequency of flicker
D8 = ev(handles.D8);            % duration of static object
ISI8 = ev(handles.ISI8);        % interstimulus interval after 1st epoch
Angle8 = ev(handles.Angle8);
Start8 = ev(handles.Start8);
End8 = ev(handles.End8);
WhichMask8 = ev(handles.Whichmask8);


lj = handles.lj;
ifi = handles.ifi;



% for colour mask
maxback = max(RGBback);
colourmask = (RGBback/maxback)*255;%             For normal stuff
%colourmask = [0,0,255]; %% for Channelrhodopsin, comment out otherwise.

%ROI masks
global mask1;
global mask2;
global mask3;
global mask4;



% for the screen window, query the size, redraw interval, do initial flip
% to sync us to vertical retrace:

[w, h] = Screen('WindowSize', win);

x = w/2;
y = h/2;




%///////////////calculations for shapes/////////////////////////////////////

%///////////////for epoch 1////////////////////////////////////////////////

if Motion1 ==1 || Flicker1 == 1 || Constant1 == 1 
    
% create  box
    
    box = [(0-Width1/2),(0-Height1/2);(0+Width1/2),(0-Height1/2);(0+Width1/2),(0+Height1/2);(0-Width1/2),(0+Height1/2)];
%     circle1 = [(x-Width1),(y-Width1),(x+Width1),(y+Width1)];
%     circle2 = [(x-Height1),(y-Height1),(x+Height1),(y+Height1)];

    %calculation for movement on an angle
    angularspeed1 = [Speed1*cos(Angle1*(pi/180)),Speed1*sin(Angle1*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle1*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    
     %offset for start location
        OSX =(y-Start1)*cos(Angle1*(pi/180));
        OSY =(y-Start1)*sin(Angle1*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        epoch1 = epoch;
%         circle1_1 = circle1;
%         circle1_2 = circle2;
        
end    


%****************************Epoch1****************************************

    
    
    if Motion1 == 1;
        
  
           j=1;
        for p=Start1:Speed1:End1;
           
            

                    
            if Bar1 == 1;
                mat = poly2mask(epoch1(:,1),epoch1(:,2),h,w);
                mat = mat*Con1_1;   % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);       
               
                tex1(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch1(:,1) = epoch1(:,1) - angularspeed1(:,1);
            epoch1(:,2) = epoch1(:,2) - angularspeed1(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant1 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar1 == 1 
             mat = poly2mask(epoch1(:,1),epoch1(:,2),h,w);
                mat = mat*Con1_1;
                mat = mat+1;
                mat = mat*RGBback(1);% this is where any correction for screen input output nonlinearities should occour
                tex1(j) = Screen('MakeTexture',win,mat);
                
                
        elseif Spot1 == 1  && WhichMask1 == 1          % spot is acually ROI
                mat = mask1*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
        elseif Spot1 == 1  && WhichMask1 == 2          % spot is acually ROI
                mat = mask2*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
        elseif Spot1 == 1  && WhichMask1 == 3          % spot is acually ROI
                mat = mask3*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
        elseif Spot1 == 1  && WhichMask1 == 4          % spot is acually ROI
                mat = mask4*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
            
        end

        
        
    elseif Flicker1 == 1;           % Contrast////////////////////////////
        
        dur1 = (D1/(1/Hz1));             
            
      

       j = 1;
        for q = 1:dur1;
            
            
            
   
             if Bar1 == 1;        
                 
                 
                 mat = poly2mask(epoch1(:,1),epoch1(:,2),h,w);
                mat = mat*Con1_1;% this is where any correction for screen input output nonlinearities should occour
            
                mat = mat+1;
             
                mat = mat*RGBback(1);
             
                
                tex1(j) = Screen('MakeTexture',win,mat);
             
             elseif Spot1 == 1  && WhichMask1 == 1          % spot is acually ROI
                mat = mask1*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
             elseif Spot1 == 1  && WhichMask1 == 2          % spot is acually ROI
                mat = mask2*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
             elseif Spot1 == 1  && WhichMask1 == 3          % spot is acually ROI
                mat = mask3*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
             elseif Spot1 == 1  && WhichMask1 == 4          % spot is acually ROI
                mat = mask4*Con1_1;
                tex1(j) = Screen('MakeTexture',win,mat);
            end
            
            if Bar1 == 1;
                mat1 = poly2mask(epoch1(:,1),epoch1(:,2),h,w);
               mat1 = mat1*Con1_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
              
             
                
                
                tex1(j+1) = Screen('MakeTexture',win,mat1);
                
            elseif Spot1 == 1  && WhichMask1 == 1          % spot is acually ROI
                mat = mask1*Con1_2;
                tex1(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot1 == 1  && WhichMask1 == 2          % spot is acually ROI
                mat = mask2*Con1_2;
                tex1(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot1 == 1  && WhichMask1 == 3          % spot is acually ROI
                mat = mask3*Con1_2;
                tex1(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot1 == 1  && WhichMask1 == 4          % spot is acually ROI
                mat = mask4*Con1_2;
                tex1(j+1) = Screen('MakeTexture',win,mat);
            end
      
            j =j+ 2;

            
        end
    
    elseif Grating1 == 1;
        
        dur1 = (D1/(1/Hz1))             
            
        j = 1;
        for q = 1:2:(dur1*2); 
         
          
             texsize=Height1 / 2;
             p=Width1*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height1];%gray + inc*cos(fr*x);
            grating=255;
            for i=1:(Width1*2):(Height1+1)
               grating(i:i+(Width1-1))=0;
               grating(i+Width1:i+((2*Width1))-1)=(RGBback(1)*2);

            end
           
            
            
           % Store 1-D single row grating in texture:
            gratingtex1(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width1*2):(Height1+1)
               grating(i:i+(Width1-1))=(RGBback(1)*2);
               grating(i+Width1:i+((2*Width1)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex1(q+1)=Screen('MakeTexture', win, grating);
           
        end
         
    end
        
      


%****************************Epoch1****************************************



%///////////////calculations for shapes/////////////////////////////////////

%///////////////for epoch 2////////////////////////////////////////////////
 if Motion2 ==1 || Flicker2 == 1 || Constant2 == 1
       

    
    box = [(0-Width2/2),(0-Height2/2);(0+Width2/2),(0-Height2/2);(0+Width2/2),(0+Height2/2);(0-Width2/2),(0+Height2/2)];
%     circle1 = [(x-Width2),(y-Width2),(x+Width2),(y+Width2)];
%     circle2 = [(x-Height2),(y-Height2),(x+Height2),(y+Height2)];

    %calculation for movement on an angle
    angularspeed2 = [Speed2*cos(Angle2*(pi/180)),Speed2*sin(Angle2*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle2*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    %offset for start location
        OSX =(y-Start2)*cos(Angle2*(pi/180));
        OSY =(y-Start2)*sin(Angle2*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch2 = epoch;
%         circle2_1 = circle1;
%         circle2_2 = circle2;
        
 end   
%****************************Epoch2****************************************

    
    
    if Motion2 == 1;
        
  
           j=1;
        for p=Start2:Speed2:End2;
           
            

                    
            if Bar2 == 1;
                mat = poly2mask(epoch2(:,1),epoch2(:,2),h,w);
                mat = mat*Con2_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
             
                
                tex2(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch2(:,1) = epoch2(:,1) - angularspeed2(:,1);
            epoch2(:,2) = epoch2(:,2) - angularspeed2(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant2 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar2 == 1 
             mat = poly2mask(epoch2(:,1),epoch2(:,2),h,w);
                mat = mat*Con2_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
              mat = mat*RGBback(1);
            
                
                tex2(j) = Screen('MakeTexture',win,mat);
                
        elseif Spot2 == 1  && WhichMask2 == 1          % spot is acually ROI
                mat = mask1*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 2          % spot is acually ROI
                mat = mask2*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 3          % spot is acually ROI
                mat = mask3*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 4          % spot is acually ROI
                mat = mask4*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        end

        
        
    elseif Flicker2 == 1;           % Contrast////////////////////////////
        
        dur2 = (D2/(1/Hz2));             
            
      

       j = 1;
        for q = 1:dur2;
            
            
            
   
             if Bar2 == 1;
                mat = poly2mask(epoch2(:,1),epoch2(:,2),h,w);
                mat = mat*Con2_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
              
                
                
                tex2(j) = Screen('MakeTexture',win,mat);
                
        elseif Spot2 == 1  && WhichMask2 == 1          % spot is acually ROI
                mat = mask1*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 2          % spot is acually ROI
                mat = mask2*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 3          % spot is acually ROI
                mat = mask3*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 4          % spot is acually ROI
                mat = mask4*Con2_1;
                tex2(j) = Screen('MakeTexture',win,mat);
        end
            
            if Bar2 == 1;
                mat1 = poly2mask(epoch2(:,1),epoch2(:,2),h,w);
                mat1 = mat1*Con2_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
               mat1 = mat1*RGBback(1);
                   
                
                tex2(j+1) = Screen('MakeTexture',win,mat1);
                
        elseif Spot2 == 1  && WhichMask2 == 1          % spot is acually ROI
                mat = mask1*Con2_2;
                tex2(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 2          % spot is acually ROI
                mat = mask2*Con2_2;
                tex2(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 3          % spot is acually ROI
                mat = mask3*Con2_2;
                tex2(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot2 == 1  && WhichMask2 == 4          % spot is acually ROI
                mat = mask4*Con2_2;
                tex2(j+1) = Screen('MakeTexture',win,mat);
        end
      
            j =j+ 2;

            
        end
         elseif Grating2 == 1;
        
          dur2 = (D2/(1/Hz2));             
            
        j = 1;
        for q = 1:2:(dur2*2); 
         
          
             texsize=Height2 / 2;
             p=Width2*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height2];%gray + inc*cos(fr*x);

            for i=1:(Width2*2):(Height2+1)
               grating(i:i+(Width2-1))=0;
               grating(i+Width2:i+((2*Width2)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex2(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width2*2):(Height2+1)
               grating(i:i+(Width2-1))=(RGBback(1)*2);
               grating(i+Width2:i+((2*Width2)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex2(q+1)=Screen('MakeTexture', win, grating);
            
         end
    end
        
      


%****************************Epoch2****************************************
 

 

 %///////////////calculations for shapes/////////////////////////////////////

%///////////////for epoch 3////////////////////////////////////////////////
 
 
  if Motion3 == 1 || Flicker3 == 1 || Constant3 == 1
   
    
    box = [(0-Width3/2),(0-Height3/2);(0+Width3/2),(0-Height3/2);(0+Width3/2),(0+Height3/2);(0-Width3/2),(0+Height3/2)];
%     circle1 = [(x-Width3),(y-Width3),(x+Width3),(y+Width3)];
%     circle2 = [(x-Height3),(y-Height3),(x+Height3),(y+Height3)];

    %calculation for movement on an angle
    angularspeed3 = [Speed3*cos(Angle3*(pi/180)),Speed3*sin(Angle3*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle3*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
       %offset for start location
        OSX =(y-Start3)*cos(Angle3*(pi/180));
        OSY =(y-Start3)*sin(Angle3*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch3 = epoch;
%         circle3_1 = circle1;
%         circle3_2 = circle2;
      
        
        
  end
  
  
 %****************************Epoch2****************************************

    
    
    if Motion3 == 1;
        
  
           j=1;
        for p=Start3:Speed3:End3;
           
            

                    
            if Bar3 == 1;
                mat = poly2mask(epoch3(:,1),epoch3(:,2),h,w);
                mat = mat*Con3_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
               
                tex3(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch3(:,1) = epoch3(:,1) - angularspeed3(:,1);
            epoch3(:,2) = epoch3(:,2) - angularspeed3(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant3 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar3 == 1 
             mat = poly2mask(epoch3(:,1),epoch3(:,2),h,w);
                mat = mat*Con3_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
              mat = mat*RGBback(1);
             
                tex3(j) = Screen('MakeTexture',win,mat);
                
        elseif Spot3 == 1  && WhichMask3 == 1          % spot is acually ROI
                mat = mask1*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 2          % spot is acually ROI
                mat = mask2*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 3          % spot is acually ROI
                mat = mask3*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 4          % spot is acually ROI
                mat = mask4*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        end

        
        
    elseif Flicker3 == 1;           % Contrast////////////////////////////
        
        dur3 = (D3/(1/Hz3));             
            
      

       j = 1;
        for q = 1:dur3;
            
            
            
   
             if Bar3 == 1;
                mat = poly2mask(epoch3(:,1),epoch3(:,2),h,w);
                mat = mat*Con3_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
               
                
                tex3(j) = Screen('MakeTexture',win,mat);

        elseif Spot3 == 1  && WhichMask3 == 1          % spot is acually ROI
                mat = mask1*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 2          % spot is acually ROI
                mat = mask2*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 3          % spot is acually ROI
                mat = mask3*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 4          % spot is acually ROI
                mat = mask4*Con3_1;
                tex3(j) = Screen('MakeTexture',win,mat);
        end
            
            if Bar3 == 1;
                mat1 = poly2mask(epoch3(:,1),epoch3(:,2),h,w);
                mat1 = mat1*Con3_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
               mat1 = mat1*RGBback(1);
             
                tex3(j+1) = Screen('MakeTexture',win,mat1);
                
        elseif Spot3 == 1  && WhichMask3 == 1          % spot is acually ROI
                mat = mask1*Con3_2;
                tex3(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 2          % spot is acually ROI
                mat = mask2*Con3_2;
                tex3(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 3          % spot is acually ROI
                mat = mask3*Con3_2;
                tex3(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot3 == 1  && WhichMask3 == 4          % spot is acually ROI
                mat = mask4*Con3_2;
                tex3(j+1) = Screen('MakeTexture',win,mat);
        end
      
            j =j+ 2;

       
        end
        
          elseif Grating3 == 1;
        
          dur3 = (D3/(1/Hz3));             
            
        j = 1;
        for q = 1:2:(dur3*2); 
         
          
             texsize=Height3 / 2;
             p=Width3*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height3];%gray + inc*cos(fr*x);

            for i=1:(Width3*2):(Height3+1)
               grating(i:i+(Width3-1))=0;
               grating(i+Width3:i+((2*Width3)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex3(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width3*2):(Height3+1)
               grating(i:i+(Width3-1))=(RGBback(1)*2);
               grating(i+Width3:i+((2*Width3)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex3(q+1)=Screen('MakeTexture', win, grating);
            
         end

    end    
    
        
      


%****************************Epoch3****************************************
  
  
  %///////////////calculations for shapes/////////////////////////////////////

%///////////////for epoch 4////////////////////////////////////////////////
 
 if Motion4 ==1 || Flicker4 == 1 || Constant4 == 1
    
    
    
    box = [(0-Width4/2),(0-Height4/2);(0+Width4/2),(0-Height4/2);(0+Width4/2),(0+Height4/2);(0-Width4/2),(0+Height4/2)];
%     circle1 = [(x-Width4),(y-Width4),(x+Width4),(y+Width4)];
%     circle2 = [(x-Height4),(y-Height4),(x+Height4),(y+Height4)];

    %calculation for movement on an angle
    angularspeed4 = [Speed4*cos(Angle4*(pi/180)),Speed4*sin(Angle4*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle4*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    %offset for start location
        OSX =(y-Start4)*cos(Angle4*(pi/180));
        OSY =(y-Start4)*sin(Angle4*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch4 = epoch;
%         circle4_1 = circle1;
%         circle4_2 = circle2;
        
 end
 
 
 %****************************Epoch4****************************************

    
    
    if Motion4 == 1;
        
  
           j=1;
        for p=Start4:Speed4:End4;
           
            

                    
            if Bar4 == 1;
                mat = poly2mask(epoch4(:,1),epoch4(:,2),h,w);
                mat = mat*Con4_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
             
                tex4(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch4(:,1) = epoch4(:,1) - angularspeed4(:,1);
            epoch4(:,2) = epoch4(:,2) - angularspeed4(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant4 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar4 == 1 
             mat = poly2mask(epoch4(:,1),epoch4(:,2),h,w);
                mat = mat*Con4_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
               
                tex4(j) = Screen('MakeTexture',win,mat);

        elseif Spot4 == 1  && WhichMask4 == 1          % spot is acually ROI
                mat = mask1*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 2          % spot is acually ROI
                mat = mask2*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 3          % spot is acually ROI
                mat = mask3*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 4          % spot is acually ROI
                mat = mask4*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        end                

        
        
    elseif Flicker4 == 1;           % Contrast////////////////////////////
        
        dur4 = (D4/(1/Hz4));             
            
      

       j = 1;
        for q = 1:dur4;
            
            
            
   
       if Bar4 == 1;
                mat = poly2mask(epoch4(:,1),epoch4(:,2),h,w);
                mat = mat*Con4_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
              
                tex4(j) = Screen('MakeTexture',win,mat);

        elseif Spot4 == 1  && WhichMask4 == 1          % spot is acually ROI
                mat = mask1*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 2          % spot is acually ROI
                mat = mask2*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 3          % spot is acually ROI
                mat = mask3*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 4          % spot is acually ROI
                mat = mask4*Con4_1;
                tex4(j) = Screen('MakeTexture',win,mat);
        end                   
           
        if Bar4 == 1;
                mat1 = poly2mask(epoch4(:,1),epoch4(:,2),h,w);
                mat1 = mat1*Con4_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
             
                
                tex4(j+1) = Screen('MakeTexture',win,mat1);

        elseif Spot4 == 1  && WhichMask4 == 1          % spot is acually ROI
                mat = mask1*Con4_2;
                tex4(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 2          % spot is acually ROI
                mat = mask2*Con4_2;
                tex4(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 3          % spot is acually ROI
                mat = mask3*Con4_2;
                tex4(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot4 == 1  && WhichMask4 == 4          % spot is acually ROI
                mat = mask4*Con4_2;
                tex4(j+1) = Screen('MakeTexture',win,mat);
        end                   
      
            j =j+ 2;

            
        end
          elseif Grating4 == 1;
        
          dur4 = (D4/(1/Hz4));             
            
            j = 1;
        for q = 1:2:(dur4*2); 
         
          
             texsize=Height4 / 2;
             p=Width4*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height4];%gray + inc*cos(fr*x);

            for i=1:(Width4*2):(Height4+1)
               grating(i:i+(Width4-1))=0;
               grating(i+Width4:i+((2*Width4)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex4(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width4*2):(Height4+1)
               grating(i:i+(Width4-1))=(RGBback(1)*2);
               grating(i+Width4:i+((2*Width4)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex4(q+1)=Screen('MakeTexture', win, grating);
            
         end
       
    end
        
      


%****************************Epoch4****************************************

%///////////////for epoch 5////////////////////////////////////////////////

if Motion5 ==1 || Flicker5 == 1 || Constant5 == 1
    
% create  box
    
    box = [(0-Width5/2),(0-Height5/2);(0+Width5/2),(0-Height5/2);(0+Width5/2),(0+Height5/2);(0-Width5/2),(0+Height5/2)];
%     circle1 = [(x-Width1),(y-Width1),(x+Width1),(y+Width1)];
%     circle2 = [(x-Height1),(y-Height1),(x+Height1),(y+Height1)];

    %calculation for movement on an angle
    angularspeed5 = [Speed5*cos(Angle5*(pi/180)),Speed5*sin(Angle5*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle5*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    
     %offset for start location
        OSX =(y-Start5)*cos(Angle5*(pi/180));
        OSY =(y-Start5)*sin(Angle5*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        epoch5 = epoch;
%         circle1_1 = circle1;
%         circle1_2 = circle2;
        
end    


%****************************Epoch5****************************************

    
    
    if Motion5 == 1;
        
  
           j=1;
        for p=Start5:Speed5:End5;
           
            

                    
            if Bar5 == 1;
                mat = poly2mask(epoch5(:,1),epoch5(:,2),h,w);
                mat = mat*Con5_1;   % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);       
               
                tex5(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch5(:,1) = epoch5(:,1) - angularspeed5(:,1);
            epoch5(:,2) = epoch5(:,2) - angularspeed5(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant5 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar5 == 1 
             mat = poly2mask(epoch5(:,1),epoch5(:,2),h,w);
                mat = mat*Con5_1;
                mat = mat+1;
                mat = mat*RGBback(1);% this is where any correction for screen input output nonlinearities should occour
                tex5(j) = Screen('MakeTexture',win,mat);
                
                
        elseif Spot5 == 1  && Whichmask5 == 1          % spot is acually ROI
                mat = mask1*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
        elseif Spot5 == 1  && Whichmask5 == 2          % spot is acually ROI
                mat = mask2*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
        elseif Spot5 == 1  && Whichmask5 == 3          % spot is acually ROI
                mat = mask3*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
        elseif Spot5 == 1  && Whichmask5 == 4          % spot is acually ROI
                mat = mask4*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
            
        end

        
        
    elseif Flicker5 == 1;           % Contrast////////////////////////////
        
        dur5 = (D5/(1/Hz5));             
            
      

       j = 1;
        for q = 1:dur5;
            
            
            
   
             if Bar5 == 1;        
                 
                 
                 mat = poly2mask(epoch5(:,1),epoch5(:,2),h,w);
                mat = mat*Con5_1;% this is where any correction for screen input output nonlinearities should occour
            
                mat = mat+1;
             
                mat = mat*RGBback(1);
             
                
                tex5(j) = Screen('MakeTexture',win,mat);
             
             elseif Spot5 == 1  && Whichmask5 == 1          % spot is acually ROI
                mat = mask1*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
             elseif Spot5 == 1  && Whichmask5 == 2          % spot is acually ROI
                mat = mask2*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
             elseif Spot5 == 1  && Whichmask5 == 3          % spot is acually ROI
                mat = mask3*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
             elseif Spot5 == 1  && Whichmask5 == 4          % spot is acually ROI
                mat = mask4*Con5_1;
                tex5(j) = Screen('MakeTexture',win,mat);
            end
            
            if Bar5 == 1;
                mat1 = poly2mask(epoch5(:,1),epoch5(:,2),h,w);
               mat1 = mat1*Con5_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
              
             
                
                
                tex5(j+1) = Screen('MakeTexture',win,mat1);
                
            elseif Spot5 == 1  && Whichmask5 == 1          % spot is acually ROI
                mat = mask1*Con5_2;
                tex5(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot5 == 1  && Whichmask5 == 2          % spot is acually ROI
                mat = mask2*Con5_2;
                tex5(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot5 == 1  && Whichmask5 == 3          % spot is acually ROI
                mat = mask3*Con5_2;
                tex5(j+1) = Screen('MakeTexture',win,mat);
           elseif Spot5 == 1  && Whichmask5 == 4          % spot is acually ROI
                mat = mask4*Con5_2;
                tex5(j+1) = Screen('MakeTexture',win,mat);
            end
      
            j =j+ 2;

            
        end
          elseif Grating5 == 1;
        
           dur5 = (D5/(1/Hz5));             
            
        j = 1;
        for q = 1:2:(dur5*2); 
         
          
             texsize=Height5 / 2;
             p=Width5*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height5];%gray + inc*cos(fr*x);

            for i=1:(Width5*2):(Height5+1)
               grating(i:i+(Width5-1))=0;
               grating(i+Width5:i+((2*Width5)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex5(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width5*2):(Height5+1)
               grating(i:i+(Width5-1))=(RGBback(1)*2);
               grating(i+Width5:i+((2*Width5)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex5(q+1)=Screen('MakeTexture', win, grating);

    end    
   end
        
      


%****************************Epoch5****************************************

%///////////////for epoch 6////////////////////////////////////////////////
 
 if Motion6 ==1 || Flicker6 == 1 || Constant6 == 1
    
    
    
    box = [(0-Width6/2),(0-Height6/2);(0+Width6/2),(0-Height6/2);(0+Width6/2),(0+Height6/2);(0-Width6/2),(0+Height6/2)];
%     circle1 = [(x-Width4),(y-Width4),(x+Width4),(y+Width4)];
%     circle2 = [(x-Height4),(y-Height4),(x+Height4),(y+Height4)];

    %calculation for movement on an angle
    angularspeed6 = [Speed6*cos(Angle6*(pi/180)),Speed6*sin(Angle6*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle6*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    %offset for start location
        OSX =(y-Start6)*cos(Angle6*(pi/180));
        OSY =(y-Start6)*sin(Angle6*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch6 = epoch;
%         circle4_1 = circle1;
%         circle4_2 = circle2;
        
 end
 
 
 %****************************Epoch6****************************************

    
    
    if Motion6 == 1;
        
  
           j=1;
        for p=Start6:Speed6:End6;
           
            

                    
            if Bar6 == 1;
                mat = poly2mask(epoch6(:,1),epoch6(:,2),h,w);
                mat = mat*Con6_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
             
                tex6(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch6(:,1) = epoch6(:,1) - angularspeed6(:,1);
            epoch6(:,2) = epoch6(:,2) - angularspeed6(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant6 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar6 == 1 
             mat = poly2mask(epoch6(:,1),epoch6(:,2),h,w);
                mat = mat*Con6_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
               
                tex6(j) = Screen('MakeTexture',win,mat);

        elseif Spot6 == 1  && WhichMask6 == 1          % spot is acually ROI
                mat = mask1*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 2          % spot is acually ROI
                mat = mask2*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 3          % spot is acually ROI
                mat = mask3*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 4          % spot is acually ROI
                mat = mask4*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        end                

        
        
    elseif Flicker6 == 1;           % Contrast////////////////////////////
        
        dur6 = (D6/(1/Hz6));             
            
      

       j = 1;
        for q = 1:dur6;
            
            
            
   
       if Bar6 == 1;
                mat = poly2mask(epoch6(:,1),epoch6(:,2),h,w);
                mat = mat*Con6_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
              
                tex6(j) = Screen('MakeTexture',win,mat);

        elseif Spot6 == 1  && WhichMask6 == 1          % spot is acually ROI
                mat = mask1*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 2          % spot is acually ROI
                mat = mask2*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 3          % spot is acually ROI
                mat = mask3*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 4          % spot is acually ROI
                mat = mask4*Con6_1;
                tex6(j) = Screen('MakeTexture',win,mat);
        end                   
           
        if Bar6 == 1;
                mat1 = poly2mask(epoch6(:,1),epoch6(:,2),h,w);
                mat1 = mat1*Con6_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
             
                
                tex6(j+1) = Screen('MakeTexture',win,mat1);

        elseif Spot6 == 1  && WhichMask6 == 1          % spot is acually ROI
                mat = mask1*Con6_2;
                tex6(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 2          % spot is acually ROI
                mat = mask2*Con6_2;
                tex6(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 3          % spot is acually ROI
                mat = mask3*Con6_2;
                tex6(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot6 == 1  && WhichMask6 == 4          % spot is acually ROI
                mat = mask4*Con6_2;
                tex6(j+1) = Screen('MakeTexture',win,mat);
        end                   
      
            j =j+ 2;

            
        end
          elseif Grating6 == 1;
        
          dur6 = (D6/(1/Hz6));             
            
            j = 1;
        for q = 1:2:(dur6*2); 
         
          
             texsize=Height6 / 2;
             p=Width6*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height6];%gray + inc*cos(fr*x);

            for i=1:(Width6*2):(Height6+1)
               grating(i:i+(Width6-1))=0;
               grating(i+Width6:i+((2*Width6)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex6(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width6*2):(Height6+1)
               grating(i:i+(Width6-1))=(RGBback(1)*2);
               grating(i+Width6:i+((2*Width6)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex6(q+1)=Screen('MakeTexture', win, grating);
            
         end
       
    end 
         
%           
%          texsize=Height6 / 2;
%          p=Width6*2;%ceil(1/f);
%     
%     
%         visiblesize=2*texsize+1;
% 
%         x = meshgrid(-texsize:texsize + p, 1);
%     
%         % Compute actual cosine grating:
%         grating=[1:Height6];%gray + inc*cos(fr*x);
%         for i=1:(Width6*2):(Height6+1)
%            grating(i:i+Width6)=0;
%            grating(i+Width6+1:i+(2*Width6)+1)=(RGBback(1)*2);
% 
%         end
%         
%         % Store 1-D single row grating in texture:
%         gratingtex6=Screen('MakeTexture', win, grating);
% 
%         
%     end
%         
      


%****************************Epoch6****************************************

%///////////////for epoch 7////////////////////////////////////////////////
 
 if Motion7 ==1 || Flicker7 == 1 || Constant7 == 1
    
    
    
    box = [(0-Width7/2),(0-Height7/2);(0+Width7/2),(0-Height7/2);(0+Width7/2),(0+Height7/2);(0-Width7/2),(0+Height7/2)];
%     circle1 = [(x-Width4),(y-Width4),(x+Width4),(y+Width4)];
%     circle2 = [(x-Height4),(y-Height4),(x+Height4),(y+Height4)];

    %calculation for movement on an angle
    angularspeed7 = [Speed7*cos(Angle7*(pi/180)),Speed7*sin(Angle7*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle7*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    %offset for start location
        OSX =(y-Start7)*cos(Angle7*(pi/180));
        OSY =(y-Start7)*sin(Angle7*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch7 = epoch;
%         circle4_1 = circle1;
%         circle4_2 = circle2;
        
 end
 
 
 %****************************Epoch7****************************************

    
    
    if Motion7 == 1;
        
  
           j=1;
        for p=Start7:Speed7:End7;
           
            

                    
            if Bar7 == 1;
                mat = poly2mask(epoch7(:,1),epoch7(:,2),h,w);
                mat = mat*Con7_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
             
                tex7(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch7(:,1) = epoch7(:,1) - angularspeed7(:,1);
            epoch7(:,2) = epoch7(:,2) - angularspeed7(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant7 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar7 == 1 
             mat = poly2mask(epoch7(:,1),epoch7(:,2),h,w);
                mat = mat*Con7_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
               
                tex7(j) = Screen('MakeTexture',win,mat);

        elseif Spot7 == 1  && WhichMask7 == 1          % spot is acually ROI
                mat = mask1*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 2          % spot is acually ROI
                mat = mask2*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 3          % spot is acually ROI
                mat = mask3*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 4          % spot is acually ROI
                mat = mask4*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        end                

        
        
    elseif Flicker7 == 1;           % Contrast////////////////////////////
        
        dur7 = (D7/(1/Hz7));             
            
      

       j = 1;
        for q = 1:dur7;
            
            
            
   
       if Bar7 == 1;
                mat = poly2mask(epoch7(:,1),epoch7(:,2),h,w);
                mat = mat*Con7_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
              
                tex7(j) = Screen('MakeTexture',win,mat);

        elseif Spot7 == 1  && WhichMask7 == 1          % spot is acually ROI
                mat = mask1*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 2          % spot is acually ROI
                mat = mask2*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 3          % spot is acually ROI
                mat = mask3*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 4          % spot is acually ROI
                mat = mask4*Con7_1;
                tex7(j) = Screen('MakeTexture',win,mat);
        end                   
           
        if Bar7 == 1;
                mat1 = poly2mask(epoch7(:,1),epoch7(:,2),h,w);
                mat1 = mat1*Con7_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
             
                
                tex7(j+1) = Screen('MakeTexture',win,mat1);

        elseif Spot7 == 1  && WhichMask7 == 1          % spot is acually ROI
                mat = mask1*Con7_2;
                tex7(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 2          % spot is acually ROI
                mat = mask2*Con7_2;
                tex7(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 3          % spot is acually ROI
                mat = mask3*Con7_2;
                tex7(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot7 == 1  && WhichMask7 == 4          % spot is acually ROI
                mat = mask4*Con7_2;
                tex7(j+1) = Screen('MakeTexture',win,mat);
        end                   
      
            j =j+ 2;

            
        end
        
    elseif Grating7 == 1;
        
          dur7 = (D7/(1/Hz7));             
            
            j = 1;
        for q = 1:2:(dur7*2); 
         
          
             texsize=Height7 / 2;
             p=Width7*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height7];%gray + inc*cos(fr*x);

            for i=1:(Width7*2):(Height7+1)
               grating(i:i+(Width7-1))=0;
               grating(i+Width7:i+((2*Width7)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex7(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width7*2):(Height7+1)
               grating(i:i+(Width7-1))=(RGBback(1)*2);
               grating(i+Width7:i+((2*Width7)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex7(q+1)=Screen('MakeTexture', win, grating);
            
         end
       
    end 
%          
%           
%          texsize=Height7 / 2;
%          p=Width7*2;%ceil(1/f);
%     
%     
%         visiblesize=2*texsize+1;
% 
%         x = meshgrid(-texsize:texsize + p, 1);
%     
%         % Compute actual cosine grating:
%         grating=[1:Height7];%gray + inc*cos(fr*x);
%         for i=1:(Width7*2):(Height7+1)
%            grating(i:i+Width7)=0;
%            grating(i+Width7+1:i+(2*Width7)+1)=(RGBback(1)*2);
% 
%         end
%         
%         % Store 1-D single row grating in texture:
%         gratingtex7=Screen('MakeTexture', win, grating);
% 
%     end
%         
%       


%****************************Epoch7****************************************

%///////////////for epoch 8////////////////////////////////////////////////
 
 if Motion8 ==1 || Flicker8 == 1 || Constant8 == 1
    
    
    
    box = [(0-Width8/2),(0-Height8/2);(0+Width8/2),(0-Height8/2);(0+Width8/2),(0+Height8/2);(0-Width8/2),(0+Height8/2)];
%     circle1 = [(x-Width4),(y-Width4),(x+Width4),(y+Width4)];
%     circle2 = [(x-Height4),(y-Height4),(x+Height4),(y+Height4)];

    %calculation for movement on an angle
    angularspeed8 = [Speed8*cos(Angle8*(pi/180)),Speed8*sin(Angle8*(pi/180))];


    %rotate box to specified angle
    [theta,mag] = cart2pol(box(:,1),box(:,2));

    theta = theta + (Angle8*(pi/180));

    [xx,yy]=pol2cart(theta,mag);
    epoch = [xx,yy];

    %bring rotated box to the centre of the screen
    epoch(:,1) = epoch(:,1) + x;
    epoch(:,2) = epoch(:,2) + y;
    
    %offset for start location
        OSX =(y-Start8)*cos(Angle8*(pi/180));
        OSY =(y-Start8)*sin(Angle8*(pi/180));

        epoch(:,1) = epoch(:,1)+OSX;
        epoch(:,2) = epoch(:,2)+OSY;
%         circle1(1:2:3) = circle1(1:2:3) + OSX;
%         circle1(2:2:4) = circle1(2:2:4) + OSY;
%         circle2(1:2:3) = circle2(1:2:3) + OSX;
%         circle2(2:2:4) = circle2(2:2:4) + OSY;
        
        
        epoch8 = epoch;
%         circle4_1 = circle1;
%         circle4_2 = circle2;
        
 end
 
 
 %****************************Epoch8****************************************

    
    
    if Motion8 == 1;
        
  
           j=1;
        for p=Start8:Speed8:End8;
           
            

                    
            if Bar8 == 1;
                mat = poly2mask(epoch8(:,1),epoch8(:,2),h,w);
                mat = mat*Con8_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
                mat = mat*RGBback(1);
             
                tex8(j) = Screen('MakeTexture',win,mat);
%             elseif Spot1 == 1;
%                 Screen('FillOval', win, colour1_2, circle1_2);
%                 Screen('FillOval', win, colour1_1, circle1_1);
            end
        
            

            %Pixel advance per frame
            epoch8(:,1) = epoch8(:,1) - angularspeed8(:,1);
            epoch8(:,2) = epoch8(:,2) - angularspeed8(:,2);
            
%             circle1_1(1:2:3) = circle1_1(1:2:3) - angularspeed1(:,1);
%             circle1_1(2:2:4) = circle1_1(2:2:4) - angularspeed1(:,2);
%             circle1_2(1:2:3) = circle1_2(1:2:3) - angularspeed1(:,1);
%             circle1_2(2:2:4) = circle1_2(2:2:4) - angularspeed1(:,2);
            
            j=j+1;
          
        end
        
        
        
        
    elseif Constant8 == 1;          % Flash////////////////////////////
          

        j=1;
        if Bar8 == 1 
             mat = poly2mask(epoch8(:,1),epoch8(:,2),h,w);
                mat = mat*Con8_1; % this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
               
                tex8(j) = Screen('MakeTexture',win,mat);

        elseif Spot8 == 1  && WhichMask8 == 1          % spot is acually ROI
                mat = mask1*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 2          % spot is acually ROI
                mat = mask2*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 3          % spot is acually ROI
                mat = mask3*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 4          % spot is acually ROI
                mat = mask4*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        end                

        
        
    elseif Flicker8 == 1;           % Contrast////////////////////////////
        
        dur8 = (D8/(1/Hz8));             
            
      

       j = 1;
        for q = 1:dur8;
            
            
            
   
       if Bar8 == 1;
                mat = poly2mask(epoch8(:,1),epoch8(:,2),h,w);
                mat = mat*Con8_1;% this is where any correction for screen input output nonlinearities should occour
                mat = mat+1;
               mat = mat*RGBback(1);
              
                tex8(j) = Screen('MakeTexture',win,mat);

        elseif Spot8 == 1  && WhichMask8 == 1          % spot is acually ROI
                mat = mask1*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 2          % spot is acually ROI
                mat = mask2*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 3          % spot is acually ROI
                mat = mask3*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 4          % spot is acually ROI
                mat = mask4*Con8_1;
                tex8(j) = Screen('MakeTexture',win,mat);
        end                   
           
        if Bar8 == 1;
                mat1 = poly2mask(epoch8(:,1),epoch8(:,2),h,w);
                mat1 = mat1*Con8_2;% this is where any correction for screen input output nonlinearities should occour
                mat1 = mat1+1;
                mat1 = mat1*RGBback(1);
             
                
                tex8(j+1) = Screen('MakeTexture',win,mat1);

        elseif Spot8 == 1  && WhichMask8 == 1          % spot is acually ROI
                mat = mask1*Con8_2;
                tex8(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 2          % spot is acually ROI
                mat = mask2*Con8_2;
                tex8(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 3          % spot is acually ROI
                mat = mask3*Con8_2;
                tex8(j+1) = Screen('MakeTexture',win,mat);
        elseif Spot8 == 1  && WhichMask8 == 4          % spot is acually ROI
                mat = mask4*Con8_2;
                tex8(j+1) = Screen('MakeTexture',win,mat);
        end                   
      
            j =j+ 2;

            
        end
        
          elseif Grating8 == 1;
        
           dur8 = (D8/(1/Hz8));             
            
            j = 1;
        for q = 1:2:(dur8*2); 
         
          
             texsize=Height8 / 2;
             p=Width8*2;%ceil(1/f);


            visiblesize=2*texsize+1;

            x = meshgrid(-texsize:texsize + p, 1);

            % Compute actual cosine grating:
            grating=[1:Height8];%gray + inc*cos(fr*x);

            for i=1:(Width8*2):(Height8+1)
               grating(i:i+(Width8-1))=0;
               grating(i+Width8:i+((2*Width8)-1))=(RGBback(1)*2);

            end
           % Store 1-D single row grating in texture:
            gratingtex8(q)=Screen('MakeTexture', win, grating);
            
            for i=1:(Width8*2):(Height8+1)
               grating(i:i+(Width8-1))=(RGBback(1)*2);
               grating(i+Width8:i+((2*Width8)-1))=0;

            end
           % Store 1-D single row grating in texture:
            gratingtex8(q+1)=Screen('MakeTexture', win, grating);
            
         end
       
    end
         
%           
%          texsize=Height8 / 2;
%          p=Width8*2;%ceil(1/f);
%     
%     
%         visiblesize=2*texsize+1;
% 
%         x = meshgrid(-texsize:texsize + p, 1);
%     
%         % Compute actual cosine grating:
%         grating=[1:Height8];%gray + inc*cos(fr*x);
%         for i=1:(Width8*2):(Height8+1)
%            grating(i:i+Width8)=0;
%            grating(i+Width8+1:i+(2*Width8)+1)=(RGBback(1)*2);
% 
%         end
%         
%         % Store 1-D single row grating in texture:
%         gratingtex8=Screen('MakeTexture', win, grating);
% 
%     end    
%     
%         
%       


%****************************Epoch8****************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%THE IMPORTNAT BIT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%set matlab to highest priority

priorityLevel=MaxPriority(win);
Priority(priorityLevel);    



% for the screen window, query the size, redraw interval, do initial flip
% to sync us to vertical retrace:

[w, h] = Screen('WindowSize', win);

x = w/2;
y = h/2;


Screen('FillRect', win, RGBback);
 timeErr = 0  ;
[vbl, on, fliptime, miss,beam] = Screen('Flip', win,0);
timeErr = ((ifi*0.5)+fliptime-on);  %this measures the time a flip actually takes and is used to correct for timing errors, the 1/2 screen referesh is to give some overhead




j=1; %counter for generating screen data
for i=1:1:Loop
    
lj.toggleFIO(5);
timeErr = timeErr-Trig     
   
   

    
%%%////////////////////Epoch1//////////////////////////////////////////////
%%%////////////////////Epoch1//////////////////////////////////////////////
%%%////////////////////Epoch1//////////////////////////////////////////////

    if Motion1 == 1;
        dur = (End1 - Start1)/Speed1;
              
       
       
        for q =1:dur;
          
           Screen('DrawTexture',win,tex1(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
        
           lj.toggleFIO(7);
           
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant1 == 1;
     
                 
           Screen('DrawTexture',win,tex1,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D1);
           
           lj.toggleFIO(7);
           
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker1 == 1;
      
       
       dur = (D1/((1/Hz1)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex1(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz1)*0.5)-timeErr);
           
           lj.toggleFIO(7);
           
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
    
    if Grating1 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect,[0,0,w,h]);% [0,0,1280,720]);
        xoffset = (Width1/2)+Start1;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D1/((1/Hz1)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex1(q),srcRect, dstRect, Angle1);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz1)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
               
% % %         %waitframes = 1 means: Redraw every monitor refresh. If your GPU is
% % %         % not fast enough to do this, you can increment this to only redraw
% % %         % every n'th refresh. All animation paramters will adapt to still
% % %         % provide the proper grating
% % %         waitframes = 1;
% % % 
% % %         % Translate frames into seconds for screen update interval:
% % %         waitduration = waitframes * ifi;
% % % 
% % %         % Recompute p, this time without the ceil() operation from above.
% % %         % Otherwise we will get wrong drift speed due to rounding errors!
% % %         p=Width1*2; %1/f;  % pixels/cycle    
% % % 
% % %         % Translate requested speed of the grating (in cycles per second) into
% % %         % a shift value in "pixels per frame", for given waitduration: This is
% % %         % the amount of pixels to shift our srcRect "aperture" in horizontal
% % %         % directionat each redraw:
% % %         shiftperframe= Speed1 * p * waitduration;
% % % 
% % %         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
% % %         vblendtime = timeErr + D1;
% % %         i=0;
% % %        
% % %         % Animationloop:
% % %         for q=1:(D1*(1/ifi)) %while(timeErr < vblendtime)
% % %            
% % %             
% % %             xoffset = mod(i*shiftperframe,p);
% % %             i=i+1;
% % % 
% % %             % Define shifted srcRect that cuts out the properly shifted rectangular
% % %             % area from the texture: We cut out the range 0 to visiblesize in
% % %             % the vertical direction although the texture is only 1 pixel in
% % %             % height! This works because the hardware will automatically
% % %             % replicate pixels in one dimension if we exceed the real borders
% % %             % of the stored texture. This allows us to save storage space here,
% % %             % as our 2-D grating is essentially only defined in 1-D:
% % %             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% % % 
% % %             % Draw grating texture, rotated by "angle":
% % %             Screen('DrawTexture', win, gratingtex1, srcRect, dstRect, Angle1);
% % % 
% % %              
% % %             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
% % %             if q==1
% % %                 lj.toggleFIO(7);
% % %             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;
        end
      lj.toggleFIO(7);
    end
    
    if ISI1 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
        timeErr = (ifi*0.5)+fliptime-on;
        j=j+1;
       timeErr = -ISI1 ;
    end
%%%////////////////////Epoch1//////////////////////////////////////////////
%%%////////////////////Epoch1//////////////////////////////////////////////
%%%////////////////////Epoch1//////////////////////////////////////////////
   
%%%////////////////////Epoch2//////////////////////////////////////////////
%%%////////////////////Epoch2//////////////////////////////////////////////
%%%////////////////////Epoch2//////////////////////////////////////////////

    if Motion2 == 1;
        dur = (End2 - Start2)/Speed2;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex2(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant2 == 1;
     
                 
           Screen('DrawTexture',win,tex2,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D2);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker2 == 1;
    
       
       dur = (D2/((1/Hz2)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex2(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz2)*0.5)-timeErr);
           
           lj.toggleFIO(7);
           
         stimrate(j) = fliptime;
         missed(j) = miss;
          timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
      
             
    end
     if Grating2 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width2/2)+Start2;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D2/((1/Hz2)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex2(q),srcRect, dstRect, Angle2);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz2)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
         
         
%          dstRect=[0 0 visiblesize visiblesize];
%         dstRect=CenterRect(dstRect, [0,0,1280,720]);
% 
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width2*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed2 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D2;
%         i=0;
%         
%         % Animationloop:
%           for q=1:(D2*(1/ifi))  %while(vbl < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex2, srcRect, dstRect, Angle2);
% 
%   
%          [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;
        end
         lj.toggleFIO(7);
    end

    if ISI2 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
        timeErr = (ifi*0.5)+fliptime-on;
        j=j+1;
        timeErr = -ISI2;
    end
%%%////////////////////Epoch2//////////////////////////////////////////////
%%%////////////////////Epoch2//////////////////////////////////////////////
%%%////////////////////Epoch2//////////////////////////////////////////////

%%%////////////////////Epoch3//////////////////////////////////////////////
%%%////////////////////Epoch3//////////////////////////////////////////////
%%%////////////////////Epoch3//////////////////////////////////////////////

    if Motion3 == 1;
        dur = (End3 - Start3)/Speed3;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex3(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss; 
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant3 == 1;
     
                 
           Screen('DrawTexture',win,tex3,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D3);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker3 == 1;
      
       
       dur = (D3/((1/Hz3)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex3(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz3)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
     if Grating3 ==1
        
         dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width3/2)+Start3;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D3/((1/Hz3)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex3(q),srcRect, dstRect, Angle3);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz3)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
         
%          
%          dstRect=[0 0 visiblesize visiblesize];
%         dstRect=CenterRect(dstRect, [0,0,1280,720]);
% 
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width3*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed3 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D3;
%         i=0;
%         % Animationloop:
%         for q=1:(D3*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex3, srcRect, dstRect, Angle3);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;
 
        end
         lj.toggleFIO(7);
    end
    if ISI3 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI3;
    end
%%%////////////////////Epoch3//////////////////////////////////////////////
%%%////////////////////Epoch3//////////////////////////////////////////////
%%%////////////////////Epoch3//////////////////////////////////////////////

%%%////////////////////Epoch4//////////////////////////////////////////////
%%%////////////////////Epoch4//////////////////////////////////////////////
%%%////////////////////Epoch4//////////////////////////////////////////////

    if Motion4 == 1;
        dur = (End4 - Start4)/Speed4;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex4(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant4 == 1;
     
                 
           Screen('DrawTexture',win,tex4,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D4);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker4 == 1;
      
       
       dur = (D4/((1/Hz4)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex4(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz4)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
     if Grating4 ==1
        
         dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width4/2)+Start4;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D4/((1/Hz4)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex4(q),srcRect, dstRect, Angle4);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz4)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
         
         
%          dstRect=[0 0 visiblesize visiblesize];
%         dstRect=CenterRect(dstRect, [0,0,1280,720]);
% 
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width4*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed4 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D4;
%         i=0;
%         
%         % Animationloop:
%         for q=1:(D4*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex4, srcRect, dstRect, Angle4);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;

        end
         lj.toggleFIO(7);
    end
    if ISI4 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI4;
    end
%%%////////////////////Epoch4//////////////////////////////////////////////
%%%////////////////////Epoch4//////////////////////////////////////////////
%%%////////////////////Epoch4//////////////////////////////////////////////

%%%////////////////////Epoch5//////////////////////////////////////////////
%%%////////////////////Epoch5//////////////////////////////////////////////
%%%////////////////////Epoch5//////////////////////////////////////////////

    if Motion5 == 1;
        dur = (End5 - Start5)/Speed5;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex5(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant5 == 1;
     
                 
           Screen('DrawTexture',win,tex5,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D5);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker5 == 1;
      
       
       dur = (D5/((1/Hz5)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex5(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz5)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
     if Grating5 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width5/2)+Start5;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D5/((1/Hz5)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex5(q),srcRect, dstRect, Angle5);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz5)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
        
        
        
        
%         
%         
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width5*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed5 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D5;
%         i=0;
%          
%         % Animationloop:
%         for q=1:(D5*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex5, srcRect, dstRect, Angle5);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;

        end
         lj.toggleFIO(7);
    end
    if ISI5 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI5;
    end
%%%////////////////////Epoch5//////////////////////////////////////////////
%%%////////////////////Epoch5//////////////////////////////////////////////
%%%////////////////////Epoch5//////////////////////////////////////////////

%%%////////////////////Epoch6//////////////////////////////////////////////
%%%////////////////////Epoch6//////////////////////////////////////////////
%%%////////////////////Epoch6//////////////////////////////////////////////

    if Motion6 == 1;
        dur = (End6 - Start6)/Speed6;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex6(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant6 == 1;
     
                 
           Screen('DrawTexture',win,tex6,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D6);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker6 == 1;
      
       
       dur = (D6/((1/Hz6)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex6(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz6)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
     if Grating6 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width6/2)+Start6;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D6/((1/Hz6)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex6(q),srcRect, dstRect, Angle6);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz5)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
%         waitframes = 1;
%         
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width6*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed6 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D6;
%         i=0;
%         
%         % Animationloop:
%          for q=1:(D6*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex6, srcRect, dstRect, Angle6);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;
 
        end
         lj.toggleFIO(7);
    end
    if ISI6 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI6;
    end
%%%////////////////////Epoch6//////////////////////////////////////////////
%%%////////////////////Epoch6//////////////////////////////////////////////
%%%////////////////////Epoch6//////////////////////////////////////////////

%%%////////////////////Epoch7//////////////////////////////////////////////
%%%////////////////////Epoch7//////////////////////////////////////////////
%%%////////////////////Epoch7//////////////////////////////////////////////

    if Motion7 == 1;
        dur = (End7 - Start7)/Speed7;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex7(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant7 == 1;
     
                 
           Screen('DrawTexture',win,tex7,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D7);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker7 == 1;
      
       
       dur = (D7/((1/Hz7)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex7(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz7)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
     if Grating7 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width7/2)+Start7;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D7/((1/Hz7)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex7(q),srcRect, dstRect, Angle7);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz5)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width7*2; %1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed7 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D7;
%         i=0;
%         
%         % Animationloop:
%         for q=1:(D7*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex7, srcRect, dstRect, Angle7);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;

        end
         lj.toggleFIO(7);
    end
    if ISI7 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI7;
    end
%%%////////////////////Epoch7//////////////////////////////////////////////
%%%////////////////////Epoch7//////////////////////////////////////////////
%%%////////////////////Epoch7//////////////////////////////////////////////

%%%////////////////////Epoch8//////////////////////////////////////////////
%%%////////////////////Epoch8//////////////////////////////////////////////
%%%////////////////////Epoch8//////////////////////////////////////////////

    if Motion8 == 1;
        dur = (End8 - Start8)/Speed8;
              
       
       
        for q =1:dur;
             
           Screen('DrawTexture',win,tex8(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           stimrate(j) = fliptime;
           missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
        j=j+1;
       end
        
    end
    
    
    if Constant8 == 1;
     
                 
           Screen('DrawTexture',win,tex8,[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
           
           lj.toggleFIO(7);
           
           WaitSecs(D8);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
                  
    end
    
    
    if Flicker8 == 1;
      
       
       dur = (D8/((1/Hz8)*0.5));
                  
           for q = 1:dur;
             
           
           Screen('DrawTexture',win,tex8(q),[],[],[],[],[],colourmask);
           [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz8)*0.5)-timeErr);
           
           lj.toggleFIO(7);
         stimrate(j) = fliptime;
         missed(j) = miss;
           timeErr = (ifi*0.5)+fliptime-on;
      
           j=j+1;
           end
       
             
    end
    if Grating8 ==1
        dstRect=[0 0 visiblesize visiblesize];
        dstRect=CenterRect(dstRect, [0,0,w,h]);
        xoffset = (Width8/2)+Start8;
        srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
        dur = (D8/((1/Hz8)*0.5));
                  
           for q = 1:dur;
               Screen('DrawTexture',win,gratingtex8(q),srcRect, dstRect, Angle8);
               [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+((1/Hz5)*0.5)-timeErr);
                if q==1
                    lj.toggleFIO(7);
                end
%                 
%         waitframes = 1;
% 
%         % Translate frames into seconds for screen update interval:
%         waitduration = waitframes * ifi;
% 
%         % Recompute p, this time without the ceil() operation from above.
%         % Otherwise we will get wrong drift speed due to rounding errors!
%         p=Width8*2;%1/f;  % pixels/cycle    
% 
%         % Translate requested speed of the grating (in cycles per second) into
%         % a shift value in "pixels per frame", for given waitduration: This is
%         % the amount of pixels to shift our srcRect "aperture" in horizontal
%         % directionat each redraw:
%         shiftperframe= Speed8 * p * waitduration;
% 
%         % We run at most 'movieDurationSecs' seconds if user doesn't abort via keypress.
%         vblendtime = timeErr + D8;
%         i=0;
%         
%         % Animationloop:
%         for q=1:(D8*(1/ifi)) %while(timeErr < vblendtime)
% 
%             
%             xoffset = mod(i*shiftperframe,p);
%             i=i+1;
% 
%             % Define shifted srcRect that cuts out the properly shifted rectangular
%             % area from the texture: We cut out the range 0 to visiblesize in
%             % the vertical direction although the texture is only 1 pixel in
%             % height! This works because the hardware will automatically
%             % replicate pixels in one dimension if we exceed the real borders
%             % of the stored texture. This allows us to save storage space here,
%             % as our 2-D grating is essentially only defined in 1-D:
%             srcRect=[xoffset 0 xoffset + visiblesize visiblesize];
% 
%             % Draw grating texture, rotated by "angle":
%             Screen('DrawTexture', win, gratingtex8, srcRect, dstRect, Angle8);
% 
%   
%             [vbl, on, fliptime, miss, beam] = Screen('Flip', win, (vbl + 0 -timeErr)); 
%             if q==1
%                 lj.toggleFIO(7);
%             end
            stimrate(j) = fliptime;
            missed(j) = miss;
            timeErr = (ifi*0.5)+fliptime-on;

        end
        lj.toggleFIO(7);
    end 
    if ISI8 >0
        Screen('FillRect', win, RGBback);
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
         stimrate(j) = fliptime;
         missed(j) = miss;
         timeErr = (ifi*0.5)+fliptime-on;
         j=j+1;
        timeErr = -ISI8;
    end
%%%////////////////////Epoch8//////////////////////////////////////////////
%%%////////////////////Epoch8//////////////////////////////////////////////
%%%////////////////////Epoch8//////////////////////////////////////////////

%/// the end of 

lj.toggleFIO(5);

   
end

y = diff(stimrate);
[n,xout] = hist(y,50);
figure('Name','Stimulation frame rate'); bar(xout,n);
figure('Name','any missed frames?'); plot(missed);
       




Priority(0);        % turns off max priority


if Save == 1;
    uisave
end

clear


%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%///////////White Noise Start////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////



% --- Executes on button press in Wnoise.
function Wnoise_Callback(hObject, eventdata, handles)
mov=importdata('/Users/jamiejohnston/Documents/MATLAB/m.mat');
win = handles.win; 
lj = handles.lj;
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];

Trig = ev(handles.Trig);

Save = get(handles.Save,'Value');


frames= ev(handles.WnoiseFram) ;
t=uint8(zeros(frames,1));
[vbl StimulusOnsetTime FlipTimestamp Missed Beampos]= Screen('Flip',win);

lj.timedTTL(5,10)
WaitSecs(Trig)

priorityLevel=MaxPriority(win);
Priority(priorityLevel);

for i = 1:frames
   
    imInit = mov(:,:,i);
    imTemp=reshape(repmat(imInit',1,12)', length(imInit(:,1)), 12*length(imInit(1,: )));
    imTemp=imTemp';
    imTemp=reshape(repmat(imTemp',1,12)', length(imTemp(:,1)), 12*length(imTemp(1,: )));
    im=imTemp';
    textureIndex=Screen('MakeTexture', win, im);
    Screen('DrawTexture', win, textureIndex,[],[],0,1,1,RGBback);
    ti=vbl;
    [vbl StimulusOnsetTime FlipTimestamp Missed Beampos]= Screen('Flip',win,vbl+0.008);
    t(i)=(vbl-ti)*1000;
    Screen('Close', textureIndex);
   lj.toggleFIO(7);
   clearvars imInit imTemp im
  
end

       Screen('FillRect', win, RGBback)
         Screen('Flip', win,0);
Priority(0);
figure
plot(t)
title('time of each frame in ms')

if Save == 1;
    uisave
end

%//////////////////////////////////////////////////////////////////////////
%///////////Receptive field mapping///////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%////
% --- Executes on button press in R_Field.
function R_Field_Callback(hObject, eventdata, handles)


Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];


% for colour mask
maxback = max(RGBback);
colourmask = (RGBback/maxback)*255;%             For normal stuff

win = handles.win;          % Finds window to update
RFangle = ev(handles.RFangle) ;
lj = handles.lj;

width=60;
siz=width/2;
loopy=1;

%modified 15/02/17 by Lea
%Jamie's parameters
dur=0.5; %in secs
duty=1.5; % actually ISI in secs

%Lea's parameters
%dur=1; %in secs
%duty=6;%in secs

ONOFF= ev(handles.ONOFF) ; % 0= off, 2 = on




Trig=4;

RF_Delta_ang = ev(handles.RF_Delta_ang);
RF_loop = ev(handles.RF_loop);

%sets the rback of the screen


[w, h] = Screen('WindowSize', win);
ifi = Screen('GetFlipInterval', win); 
vbl=Screen('Flip', win);

mx=w/2;
my=h/2;
x=w/2;
y=h/2;


random = importdata('/Volumes/LocalDataHD/ll275/Documents/MATLAB/RFsequence.mat');

leng = length(random);

%random=[80,20,-130,-50,140,0,-110,-80,100,-10,30,-70,130,70,-40,50,-100,110,-30,60,-140,-90,10,-20,-60,90,40,120,-120];

%TTL pulse to trigger imaging/ephys


k=1;

% loop all
for qq=1:1:RF_loop;
    
    for j=1:1:loopy;


        %x Forward
        for i=1:1:leng;
            l=random(i);

           rect=[((0)-siz),(0-h);((0)+siz),(0-h);((0)+siz),(0+h);((0)-siz),(0+h)];

            %rotate box to specified angle
        [theta,mag] = cart2pol(rect(:,1),rect(:,2));

        theta = theta + (RFangle*(pi/180));

        [xx,yy]=pol2cart(theta,mag);
        epoch = [xx,yy];

        %bring rotated box to the centre of the screen
        epoch(:,1) = epoch(:,1) + (mx);
        epoch(:,2) = epoch(:,2) + (my);


         %offset for start location
            OSX =(l)*cos(RFangle*(pi/180));
            OSY =(l)*sin(RFangle*(pi/180));

            epoch(:,1) = epoch(:,1)+OSX;
            epoch(:,2) = epoch(:,2)+OSY;

            
            mat = poly2mask(epoch(:,1),epoch(:,2),h,w);
            mat = mat*ONOFF; % this is where any correction for screen input output nonlinearities should occour
            mat = mat+1;
            mat = mat*RGBback(1);
            
            
            
            tex(k) = Screen('MakeTexture',win,mat);
            mat = mat*0;
            mat = mat+1;
            mat = mat*RGBback(1);
            tex(k+1) = Screen('MakeTexture',win,mat);
        
            k=k+2;
  

        end

    end

    RFangle = RFangle + RF_Delta_ang;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%Displaying it all%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%set matlab to highest priority

%set matlab to highest priority

priorityLevel=MaxPriority(win);
Priority(priorityLevel);    



% for the screen window, query the size, redraw interval, do initial flip
% to sync us to vertical retrace:

[w, h] = Screen('WindowSize', win);

x = w/2;
y = h/2;


Screen('FillRect', win, RGBback);
 timeErr = 0  ;
[vbl, on, fliptime, miss,beam] = Screen('Flip', win,0);
timeErr = ((ifi*0.5)+fliptime-on);


lj.toggleFIO(5);
timeErr = timeErr-Trig;


j=1;
for p =1:(k-1);
        
    Screen('DrawTexture',win,tex(p),[],[],[],[],[],colourmask);
    
    if mod(p,2)==0
    
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
        lj.toggleFIO(7);
        timeErr = (ifi*0.5)+fliptime-on;
        timeErr = timeErr - duty;
    
    else
        
        [vbl, on, fliptime, miss, beam]= Screen('Flip',win,vbl+0-timeErr);
        lj.toggleFIO(7);
        timeErr = (ifi*0.5)+fliptime-on;
        timeErr = timeErr - dur;
    end
    
    
    stimrate(j) = fliptime;
    missed(j) = miss;
   
      
        j=j+1;
end    


lj.toggleFIO(5);
    %   Screen('FillRect', win, RGBback)
    %     Screen('Flip', win,0);
Priority(0);

y = diff(stimrate);
[n,xout] = hist(y,50);
figure('Name','Stimulation frame rate'); bar(xout,n);
figure('Name','any missed frames?'); plot(missed);
    
    
clear


%/////////////////


%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%///////////Screen Control Panel Start////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////


%//////////////////////////////////////////////////////////////////////////
%//////Button to initialize screen and TTL port
%//////////////////////////////////////////////////////////////////////////
% --- Executes on button press in ScreenStart.
function [win, screenRect]=ScreenStart_Callback(hObject, eventdata, handles)


%get ID of Screen
screenid = max(Screen('Screens'));
Screen('Preference','SyncTestSettings', 0.1 , 50,1,5)   % delete before sending back
%bring in RGB value for rback
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];
% open window on the screen with the rback value and a window number
% of win
[win, screenRect] = Screen('OpenWindow', screenid, RGBback);%, [0,0,400,400]);
%output the window number
handles.win = win; %///////////////////////////////////Generates the
handles.screenRect = screenRect;
[w, h] = Screen('WindowSize', win);
ifi = Screen('GetFlipInterval', win); 

set(handles.pixel, 'String', h);
set(handles.Refresh, 'String', (1/ifi));

handles.ifi = ifi;

handles.lj = labJack('deviceID', 3, 'verbose', false);


guidata(hObject, handles);%/////////////////////////// window number





%//////////////////////////////////////////////////////////////////////////
%//////Centre screen button
%//////////////////////////////////////////////////////////////////////////
% --- Executes on button press in Centrescreen.
function Centrescreen_Callback(hObject, eventdata, handles)
% hObject    handle to Centrescreen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
win = handles.win;          % Finds window to update
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];

[w,h] = Screen('WindowSize', win);

Screen('FillRect', win, 0);
Screen('Flip', win);

% Hint: get(hObject,'Value') returns toggle state of Centrescreen
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	Screen('DrawLine', win, 250, 0, 0, w, h);
    Screen('DrawLine', win, 250, 0, h, w, 0);
    
    Screen('Flip', win);
 %   clear all;
elseif button_state == get(hObject,'Min')
	Screen('FillRect', win, RGBback);
    Screen('Flip',win);
end




%///////////////////////////////////////////////////////////
%//////////Button to dim screen while not in use////////////
%///////////////////////////////////////////////////////////
% --- Executes on button press in Dimmer.
function Dimmer_Callback(hObject, eventdata, handles)
win = handles.win;          % Finds window to update
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];

[w,h] = Screen('WindowSize', win);
ifi = Screen('GetFlipInterval', win); 

set(handles.pixel, 'String', h);
set(handles.Refresh, 'String', (1/ifi));


Screen('FillRect', win, 0);
Screen('Flip', win);

% Hint: get(hObject,'Value') returns toggle state of Centrescreen
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	Screen('FillRect', win, 0);
Screen('Flip', win);
    
    Screen('Flip', win);
elseif button_state == get(hObject,'Min')
Screen('FillRect', win, RGBback);
Screen('Flip',win);

end




% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

win = handles.win;          % Finds window to update
Rback = ev(handles.Rback) ;
Gback = ev(handles.Gback) ;
Bback = ev(handles.Bback) ;

RGBback = [Rback,Gback,Bback];

[w,h] = Screen('WindowSize', win);

Screen('FillRect', win, 0);
Screen('Flip', win);

% Hint: get(hObject,'Value') returns toggle state of Centrescreen
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	 Screen('Drawline', win, 255, 390, 300, 410, 300);
    Screen('Drawline', win, 255, 420, 300, 400, 330);
    
    Screen('Flip', win);
elseif button_state == get(hObject,'Min')
	Screen('FillRect', win, RGBback);
    Screen('Flip',win);
end

%//////////////////////////////////////////////////////////////////////////
%//////Quit button
%//////////////////////////////////////////////////////////////////////////

% --- Executes on button press in Quit.
function Quit_Callback(hObject, eventdata, handles)


Screen('CloseAll');


%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%///////////Screen Control Panel End//////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////






%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%///////////Trigger only Button Start///////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////
%/////////////////////////////////////////////////////////////////////////



% --- Executes on button press in Triggeronly.
function Triggeronly_Callback(hObject, eventdata, handles)


lj = handles.lj;
lj.timedTTL(5,10)



%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%/////////////All the buttons and that
%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////
%//////////////////////////////////////////////////////////////////////////

function Rback_Callback(hObject, eventdata, handles)
function Gback_Callback(hObject, eventdata, handles)
function Bback_Callback(hObject, eventdata, handles)

function Trig_Callback(hObject, eventdata, handles)

function Motion1_Callback(hObject, eventdata, handles)
function Speed1_Callback(hObject, eventdata, handles)
function Start1_Callback(hObject, eventdata, handles)
function End1_Callback(hObject, eventdata, handles)
function Angle1_Callback(hObject, eventdata, handles)
function Bar1_Callback(hObject, eventdata, handles)
function Spot1_Callback(hObject, eventdata, handles)
function Con1_1_Callback(hObject, eventdata, handles)
function Con1_2_Callback(hObject, eventdata, handles)
function Grating1_Callback(hObject, eventdata, handles)
function Constant1_Callback(hObject, eventdata, handles)
function Flicker1_Callback(hObject, eventdata, handles)
function D1_Callback(hObject, eventdata, handles)
function Width1_Callback(hObject, eventdata, handles)
function Height1_Callback(hObject, eventdata, handles)
function Hz1_Callback(hObject, eventdata, handles)
function WhichMask1_Callback(hObject, eventdata, handles)


function ISI1_Callback(hObject, eventdata, handles)


% --- Executes on button press in Constant2.
function D2_Callback(hObject, eventdata, handles)
function Constant2_Callback(hObject, eventdata, handles)
function Flicker2_Callback(hObject, eventdata, handles)
function Hz2_Callback(hObject, eventdata, handles)
function Con2_2_Callback(hObject, eventdata, handles)
function Height2_Callback(hObject, eventdata, handles)
function Width2_Callback(hObject, eventdata, handles)
function Grating2_Callback(hObject, eventdata, handles)
function Bar2_Callback(hObject, eventdata, handles)
function Spot2_Callback(hObject, eventdata, handles)
function Speed2_Callback(hObject, eventdata, handles)
function Start2_Callback(hObject, eventdata, handles)
function End2_Callback(hObject, eventdata, handles)
function Angle2_Callback(hObject, eventdata, handles)
function Motion2_Callback(hObject, eventdata, handles)
function Con2_1_Callback(hObject, eventdata, handles)
function WhichMask2_Callback(hObject, eventdata, handles)

    
function ISI2_Callback(hObject, eventdata, handles)


% --- Epoch 3
function Constant3_Callback(hObject, eventdata, handles)
function Flicker3_Callback(hObject, eventdata, handles)
function D3_Callback(hObject, eventdata, handles)
function Con3_1_Callback(hObject, eventdata, handles)
function Hz3_Callback(hObject, eventdata, handles)
function Con3_2_Callback(hObject, eventdata, handles)
function Height3_Callback(hObject, eventdata, handles)
function Grating3_Callback(hObject, eventdata, handles)
function Width3_Callback(hObject, eventdata, handles)
function Bar3_Callback(hObject, eventdata, handles)
function Spot3_Callback(hObject, eventdata, handles)
function Speed3_Callback(hObject, eventdata, handles)
function Start3_Callback(hObject, eventdata, handles)
function End3_Callback(hObject, eventdata, handles)
function Angle3_Callback(hObject, eventdata, handles)
function Motion3_Callback(hObject, eventdata, handles)
function WhichMask3_Callback(hObject, eventdata, handles)


function ISI3_Callback(hObject, eventdata, handles)

% --- Epoch 4
function Constant4_Callback(hObject, eventdata, handles)
function Flicker4_Callback(hObject, eventdata, handles)
function D4_Callback(hObject, eventdata, handles)
function Con4_1_Callback(hObject, eventdata, handles)
function Hz4_Callback(hObject, eventdata, handles)
function Con4_2_Callback(hObject, eventdata, handles)
function Height4_Callback(hObject, eventdata, handles)
function Width4_Callback(hObject, eventdata, handles)
function Grating4_Callback(hObject, eventdata, handles)
function Bar4_Callback(hObject, eventdata, handles)
function Spot4_Callback(hObject, eventdata, handles)
function Speed4_Callback(hObject, eventdata, handles)
function Start4_Callback(hObject, eventdata, handles)
function End4_Callback(hObject, eventdata, handles)
function Angle4_Callback(hObject, eventdata, handles)
function Motion4_Callback(hObject, eventdata, handles)
function WhichMask4_Callback(hObject, eventdata, handles)

function ISI4_Callback(hObject, eventdata, handles)    

% --- Epoch 5

function Constant5_Callback(hObject, eventdata, handles)
function Flicker5_Callback(hObject, eventdata, handles)
function D5_Callback(hObject, eventdata, handles)
function Width5_Callback(hObject, eventdata, handles)
function Con5_1_Callback(hObject, eventdata, handles)
function Height5_Callback(hObject, eventdata, handles)
function Con5_2_Callback(hObject, eventdata, handles)
function Hz5_Callback(hObject, eventdata, handles)
function Speed5_Callback(hObject, eventdata, handles)
function Start5_Callback(hObject, eventdata, handles)
function End5_Callback(hObject, eventdata, handles)
function Angle5_Callback(hObject, eventdata, handles)
function Bar5_Callback(hObject, eventdata, handles)
function Motion5_Callback(hObject, eventdata, handles)
function Grating5_Callback(hObject, eventdata, handles)
function Spot5_Callback(hObject, eventdata, handles)
function Whichmask5_Callback(hObject, eventdata, handles)

function ISI5_Callback(hObject, eventdata, handles)

% --- Epoch 6

function Flicker6_Callback(hObject, eventdata, handles)
function Constant6_Callback(hObject, eventdata, handles)
function Motion6_Callback(hObject, eventdata, handles)
function Grating6_Callback(hObject, eventdata, handles)
function Bar6_Callback(hObject, eventdata, handles)
function Hz6_Callback(hObject, eventdata, handles)
function Con6_2_Callback(hObject, eventdata, handles)
function Height6_Callback(hObject, eventdata, handles)
function Con6_1_Callback(hObject, eventdata, handles)
function Width6_Callback(hObject, eventdata, handles)
function D6_Callback(hObject, eventdata, handles)
function Speed6_Callback(hObject, eventdata, handles)
function Start6_Callback(hObject, eventdata, handles)
function End6_Callback(hObject, eventdata, handles)
function Angle6_Callback(hObject, eventdata, handles)
function Spot6_Callback(hObject, eventdata, handles)
function Whichmask6_Callback(hObject, eventdata, handles)

function ISI6_Callback(hObject, eventdata, handles)

% --- Epoch 7

function Flicker7_Callback(hObject, eventdata, handles)
function Constant7_Callback(hObject, eventdata, handles)
function Motion7_Callback(hObject, eventdata, handles)
function Grating7_Callback(hObject, eventdata, handles)
function Bar7_Callback(hObject, eventdata, handles)
function Hz7_Callback(hObject, eventdata, handles)
function Con7_2_Callback(hObject, eventdata, handles)
function Height7_Callback(hObject, eventdata, handles)
function Con7_1_Callback(hObject, eventdata, handles)
function Width7_Callback(hObject, eventdata, handles)
function D7_Callback(hObject, eventdata, handles)
function Speed7_Callback(hObject, eventdata, handles)
function Start7_Callback(hObject, eventdata, handles)
function End7_Callback(hObject, eventdata, handles)
function Angle7_Callback(hObject, eventdata, handles)
function Spot7_Callback(hObject, eventdata, handles)
function Whichmask7_Callback(hObject, eventdata, handles)

function ISI7_Callback(hObject, eventdata, handles)

% --- Epoch 8

function Flicker8_Callback(hObject, eventdata, handles)
function Constant8_Callback(hObject, eventdata, handles)
function Motion8_Callback(hObject, eventdata, handles)
function Grating8_Callback(hObject, eventdata, handles)
function Bar8_Callback(hObject, eventdata, handles)
function D8_Callback(hObject, eventdata, handles)
function Width8_Callback(hObject, eventdata, handles)
function Con8_1_Callback(hObject, eventdata, handles)
function Height8_Callback(hObject, eventdata, handles)
function Con8_2_Callback(hObject, eventdata, handles)
function Hz8_Callback(hObject, eventdata, handles)
function Speed8_Callback(hObject, eventdata, handles)
function Start8_Callback(hObject, eventdata, handles)
function End8_Callback(hObject, eventdata, handles)
function Angle8_Callback(hObject, eventdata, handles)
function Spot8_Callback(hObject, eventdata, handles)
function Whichmask8_Callback(hObject, eventdata, handles)

function ISI8_Callback(hObject, eventdata, handles)


function Loop_Callback(hObject, eventdata, handles)

%RF mapping
function RFangle_Callback(hObject, eventdata, handles)
function ONOFF_Callback(hObject, eventdata, handles)
function RF_Delta_ang_Callback(hObject, eventdata, handles)
function RF_loop_Callback(hObject, eventdata, handles)


function WnoiseFram_Callback(hObject, eventdata, handles)



function Save_Callback(hObject, eventdata, handles)





% --- Executes on button press in LoadImage.
function LoadImage_Callback(hObject, eventdata, handles)
% hObject    handle to LoadImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName;
global mask1
global mask2
global mask3
global mask4
[FileName,PathName,FilterIndex] = uigetfile;
prep = imread(FileName);
figure(5); imshow(prep);
sss=size(prep);


mask1=zeros(sss(1),sss(2));
mask2=zeros(sss(1),sss(2));
mask3=zeros(sss(1),sss(2));
mask4=zeros(sss(1),sss(2));

% --- Executes on button press in ShowPrep.
function ShowPrep_Callback(hObject, eventdata, handles)
% hObject    handle to ShowPrep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName;
prep = imread(FileName);
figure(5); imshow(prep);



% --- Executes on button press in ROI1ADD.
function ROI1ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ROI1ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%ROI = handles.ROI
global mask1

figure(5);
A = impoly;
BW = createMask(A);

mask1 = BW + mask1;
figure(6); imshow(mask1);

% --- Executes on button press in ROI2ADD.
function ROI2ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ROI2ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask2

figure(5);
A = impoly;
BW = createMask(A);

mask2 = BW + mask2;
figure(7); imshow(mask2);

% --- Executes on button press in ROI3ADD.
function ROI3ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ROI3ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask3

figure(5);
A = impoly;
BW = createMask(A);

mask3 = BW + mask3;
figure(8); imshow(mask3);


% --- Executes on button press in ROI4ADD.
function ROI4ADD_Callback(hObject, eventdata, handles)
% hObject    handle to ROI4ADD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask4

figure(5);
A = impoly;
BW = createMask(A);

mask4 = BW + mask4;
figure(9); imshow(mask4);

%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
% --- Executes on button press in ShowROI1.
function ShowROI1_Callback(hObject, eventdata, handles)
% hObject    handle to ShowROI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask1

figure(6); imshow(mask1);

% --- Executes on button press in ShowROI2.
function ShowROI2_Callback(hObject, eventdata, handles)
% hObject    handle to ShowROI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask2

figure(7); imshow(mask2);

% --- Executes on button press in ShowROI3.
function ShowROI3_Callback(hObject, eventdata, handles)
% hObject    handle to ShowROI3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask3
figure(8); imshow(mask3);

% --- Executes on button press in ShowROI4.
function ShowROI4_Callback(hObject, eventdata, handles)
% hObject    handle to ShowROI4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask4
figure(9); imshow(mask4);

%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
% --- Executes on button press in ClearROI1.
function ClearROI1_Callback(hObject, eventdata, handles)
% hObject    handle to ClearROI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask1
mask1=mask1*0;
figure(6); imshow(mask1);


% --- Executes on button press in ClearROI2.
function ClearROI2_Callback(hObject, eventdata, handles)
% hObject    handle to ClearROI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask2
mask2=mask2*0;
figure(7); imshow(mask2);


% --- Executes on button press in ClearROI3.
function ClearROI3_Callback(hObject, eventdata, handles)
% hObject    handle to ClearROI3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask3
mask3=mask3*0;
figure(8); imshow(mask3);

% --- Executes on button press in ClearROI4.
function ClearROI4_Callback(hObject, eventdata, handles)
% hObject    handle to ClearROI4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask4
mask4=mask4*0;
figure(9); imshow(mask4);
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
