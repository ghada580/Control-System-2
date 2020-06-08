%............GUI..................%
%created 15/5/2020
%...........................%
%......comments......%
%simulation time must be 100 as function plot from scope...
%...........................%

function varargout = RST(varargin)
% RST MATLAB code for RST.fig
%      RST, by itself, creates a new RST or raises the existing
%      singleton*.
%
%      H = RST returns the handle to a new RST or the handle to
%      the existing singleton*.
%
%      RST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RST.M with the given input arguments.
%
%      RST('Property','Value',...) creates a new RST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RST_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RST_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RST

% Last Modified by GUIDE v2.5 02-Jun-2020 02:21:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RST_OpeningFcn, ...
                   'gui_OutputFcn',  @RST_OutputFcn, ...
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


% --- Executes just before RST is made visible.
function RST_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RST (see VARARGIN)

% Choose default command line output for RST
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RST wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.edit1, 'string','1');%Ts
set(handles.edit2, 'string','0.6');%delay  
set(handles.edit7, 'string','1');%den
set(handles.edit6, 'string','[10 1]');%num
%set(handles.checkbox1, 'value',0);%discrete plant
set(handles.edit4, 'string','[0 0.1 0.2]');%Bplant
set(handles.edit5, 'string','[1 -1.3 0.42]');%Aplant
%set(handles.checkbox2, 'value',1);%continuous design criteria
%......settind deafult values...........%
        %reguation P(z)
set(handles.edit8, 'string','0.4');%w0
set(handles.edit10, 'string','0.9');%zeta
set(handles.edit12, 'string','[1 -1.3741 0.4867]');%P 

        %tracking Bm(z)/Am(z)
set(handles.edit9, 'string','0.5');%w0
set(handles.edit11, 'string','0.9');%zeta
set(handles.edit13, 'string','[0.16148]');%Bm 
set(handles.edit14, 'string','[1 -1.2451 0.4066]');%Am 
set(handles.edit3, 'string','1');%Hr
set(handles.edit18, 'string','1');%Hs
set(handles.edit19, 'string','0');%disturcance cosine frequency
%set(handles.edit16, 'string','[1 -1]');%disturbance den
%set(handles.checkbox3, 'value',0);
pushbutton2_Callback(0, 0, handles);



% --- Outputs from this function are returned to the command line.
function varargout = RST_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function edit3_Callback(~, eventdata, handles)
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

%..............................%
%..........comment.............%

%...............................%

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
[Ts Bp Ap Hr Hs dist P Bm Am]=achieve_data(handles);
% R S T values
R=str2num(get(handles.edit15, 'string'));
S=str2num(get(handles.edit16, 'string'));
T=str2num(get(handles.edit17, 'string'));

R=conv(R, Hr);
S=conv(S, Hs);
simulate_RST(Ts, Bp, Ap, R, S, T, Bm, Am, dist, handles);
%%%
function P=z_polynomial(w0, zeta, Ts)
s=w0*(-zeta+1i*sqrt(1-zeta*zeta));
z=exp(s*Ts);
rez=real(z); imz=imag(z);
P=[1, -2*rez, rez*rez+imz*imz];
%%%

function lz=count_leading_zeros(v)
size_v=size(v);
if size_v(1)<size_v(2)%horizontal vector
    v=v';
end
size_v=size(v);
lz=0;
for k=1:size_v(1)
    if v(k)==0
        lz=lz+1;
    else
        break;
    end
end
%%%

function [Ts B A Hr Hs dist P Bm Am]=achieve_data(handles)
c=clock;
iteration_time=sprintf('%d-%d-%d %d:%d:%f', c(1), c(2), c(3), c(4), c(5), c(6))

Ts=str2double(get(handles.edit1, 'string'));
BW=0;%(rad/s)
    B=str2num(get(handles.edit4, 'string'));
    A=str2num(get(handles.edit5, 'string'));

     P =str2num(get(handles.edit12, 'string'));
     Am=str2num(get(handles.edit14, 'string'));
 	Bm=str2num(get(handles.edit13, 'string'));

Hr=str2num(get(handles.edit3, 'string'));
Hs=str2num(get(handles.edit18, 'string'));
%Distenation cosin frequency
distf=str2double(get(handles.edit19, 'string'));
if distf==0
    dist=[1 -1];
else
    dist=[1, -2*cos(2*pi*distf*Ts), 1];
end

function no_int=has_no_integrator(A)%finds if A has no integrator
r=roots(A);
sr=size(r);
no_int=true;
for k=1:sr(1)
    if r(k)==1
        no_int=false;
    end
end
%not needed for now%%%%%%%%
%%%%
function [B_stable B_unstable]=separate_B(B)
lz=count_leading_zeros(B);
gain=B(lz+1);%find polynomial gain
r=roots(B);
B_stable=1; B_unstable=1;
sr=size(r);
for k=1:sr(1)
    if abs(r(k))>=1 %unstable & critical zeros
        B_unstable=conv(B_unstable, [1 -r(k)]);
    else            %stable zeros
        B_stable=conv(B_stable, [1 -r(k)]);
    end
end
B_stable=B_stable*gain;%put the gain in the cancelled part
B_unstable=padarray(B_unstable', lz, 0, 'pre')';%put the delays in non-cancelled part
%%%%%


%%%%Simulatefunction [t X ref_size]=sim_response(sim_time, t_ref, t_dist, TF_ref, TF_dist, Ts)
res_ref =step(TF_ref, 0:(sim_time-t_ref));
res_dist=impulse(TF_dist, 0:(sim_time-t_dist));
ref_size=size(res_ref);
res_ref  =padarray(res_ref,  t_ref,  0, 'pre');
res_dist =padarray(res_dist, t_dist, 0, 'pre');
t=0:Ts:(sim_time*Ts);
X=res_ref-0.25*res_dist;%disturbance is a negative quarter-step
den=AS+BR;

%'c(z)/r(z):'
c_r=minreal(track*filt(conv(T, B), den));

%'Output sensitivity fn c(z)/D(z):'
c_D=minreal(filt(AS, den));

%'U(z)/r(z):'
U_r=minreal(track*filt(conv(T, A), den));

%'U(z)/D(z):'
U_D=minreal(filt(conv(A, -R), den));

D=filt(1, dist);

%RESPONSE PLOTS
sim_time=100; t_ref=5; t_dist=50;
continuous_curve=get(handles.checkbox4, 'value');
[t PlantOutput ref_size]=sim_response(sim_time, t_ref, t_dist, c_r, c_D*D, Ts);
reference=ones(ref_size);
reference=padarray(reference, t_ref, 0, 'pre');
%stairs(handles.axes1, t,PlantOutput);
if continuous_curve
    plot(handles.axes1, t,reference,'-', t,PlantOutput,'-');
else
    plot(handles.axes1, t,reference,'.', t,PlantOutput,'o');
end
set(handles.axes1, 'XMinorGrid','on', 'YMinorGrid','on');
title(handles.axes1, sprintf('Plant output, step disturbance at %g s', t_dist*Ts));

[t ControlSignal ref_size]=sim_response(sim_time, t_ref, t_dist, U_r, U_D*D, Ts);
%stairs(handles.axes2, t,ControlSignal);
if continuous_curve
    plot(handles.axes2, t,ControlSignal,'-');
else
    plot(handles.axes2, t,ControlSignal,'o');
end
set(handles.axes2, 'XMinorGrid','on', 'YMinorGrid','on');
title(handles.axes2, sprintf('Control signal, step disturbance at %g s', t_dist*Ts));
function simulate_RST(Ts, B, A, R, S, T, Bm, Am, dist, handles)
%CALCULATE TFs:
track=filt(Bm, Am); %tracking
AS=conv(A, S);
BR=conv(B, R);
size_AS=size(AS);
size_BR=size(BR);
if size_AS(2)>size_BR(2)%AS longer than BR
    BR=padarray(BR', size_AS(2)-size_BR(2), 0, 'post')';
else
    if size_AS(2)<size_BR(2)%BR longer than AS
        AS=padarray(AS', size_BR(2)-size_AS(2), 0, 'post')';
    end
end

% --- Executes on button press in pushbutton1.
%%Update
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Ts Bp Ap Hr Hs dist P Bm Am]=achieve_data(handles);
%RST values 
R=str2num(get(handles.edit15, 'string'));
S=str2num(get(handles.edit16, 'string'));
T=str2num(get(handles.edit17, 'string'));

R=conv(R, Hr);
S=conv(S, Hs);
simulate_RST(Ts, Bp, Ap, R, S, T, Bm, Am, dist, handles);
%............................................................................................................%
%1- Configuration tool to define controlled process model and closed loop desired performance. 
%    No restriction on tool, language, or script is assumed. The output should be .h file of all definitions.
%.............................................................................................................%
%input.h file
%created 19/5/2020
%.............................................................................................................%

fileID2 = fopen('input.h','w');
fprintf(fileID2,'B=\n\n' );
fprintf(fileID2,'%f\n',Bp);
fprintf(fileID2,'A=\n\n' );
fprintf(fileID2,'%f\n',Ap);
fprintf(fileID2,'P=\n\n' );
fprintf(fileID2,'%f\n',P);
fclose(fileID2);

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



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
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
%.......................................%
%created 15/5/2020
%Author:Karim
%........................................%

[Ts Bp Ap Hr Hs dist P Bm Am]=achieve_data(handles);
%no cancelled zero
%c/c's equation
%Ap(z)Hs(z)Bps(z)S(z)+Bpu(z)Hr(z)R(z)
%Bps=1 & Bpu=Bp
%Ap(s)Hs(z)*intgerator*S(z)+Bp(z)Hr(z)R(z)
%A S(z)+B R(z)
Bps=[]; Bpu=[];
    Bps=1; Bpu=Bp;
S_has_integrator=has_no_integrator(Ap);
Hs_dash=[]; %Hs with intgerator
if S_has_integrator
    Hs_dash=conv(Hs, [1 -1]); % (1-q^-1).. intgerator*Hs
else
    Hs_dash=Hs;
end
A=conv(Ap, Hs_dash)';%transpose of vetor A
B=conv(Bpu, Hr)'; %transpose of vetor B
nA=size(A);%degree (coeff. of A)
nA=nA(1)-1;%power =size-1
nB=size(B);%degree (coeff. of A)
nB=nB(1)-1;
%A = PADARRAY(A,PADSIZE,PADVAL,DIRECTION)
%PADVAL =SCALER INSTEAD OF ZEROS
A=padarray(A, nB-1, 0, 'post');
B=padarray(B, nA-1, 0, 'post');
M=[];
for k=1:nB %from 1 to length(B)
    M=[M A];%fill matrix with A coeff.
    A=circshift(A, 1);%shift for new iteration
end
for k=(nB+1):(nB+nA) %from [size(B)+1]to [size(B)+size(A)
    M=[M B];
    B=circshift(B, 1);
end
%M
n=size(M);
n=n(1); %M is a square matrix
nP=size(P);  
nP=nP(2);
P_full=padarray(P', n-nP, 0, 'post');%desired equation
SR=M\P_full;% vector of S&R coeff.
   %Extract STR controller parameters
   %slides laws part2
R=SR((nB+1):(nB+nA))';
S=SR(1:nB)';
if S_has_integrator
    S=conv(S, [1, -1]);%resulting vector(S)=length MAX([LENGTH(S)+LENGTH(intgerator)-1,LENGTH(S),LENGTH(intgerator)]).
end
S=conv(S, Bps);
T=P/sum(Bpu);%(no zeros cancelled)
set(handles.edit15, 'string',['[' num2str(R) ']']);%full R S T values for Update plant & Simulink buttons
set(handles.edit16, 'string',['[' num2str(S) ']']);
set(handles.edit17, 'string',['[' num2str(T) ']']);

R=conv(R, Hr);
S=conv(S, Hs);
simulate_RST(Ts, Bp, Ap, R, S, T, Bm, Am, dist, handles);
%.........................................................................................................%
%2- Calculation engine that takes configuration of last step and calculates RST structure and parameters.
%    The output is another .h file that includes RST parameters. (20%).
%..........................................................................................................%
%RST.h file & RST.cpp file
%created 19/5/2020
%..........................................................................................................%

size_R=size(R);
size_R=size_R(2);
size_S=size(S);
size_S=size_S(2);
size_T=size(T);
size_T=size_T(2);
fileID = fopen('RST.h','w');
fprintf(fileID, '#ifndef RST_H\n');
fprintf(fileID, '#define RST_H\n');
fprintf(fileID, 'extern const float R[');
fprintf(fileID, num2str(size_R));
fprintf(fileID, '];\n');
fprintf(fileID, 'extern const float S[');
fprintf(fileID, num2str(size_S));
fprintf(fileID, '];\n');
fprintf(fileID, 'extern const float T[');
fprintf(fileID, num2str(size_T));
fprintf(fileID, '];\n');
fprintf(fileID, '#endif');
fclose(fileID);
fileID1 = fopen('RST.cpp','w');


fprintf(fileID1, '#include\"RST.h\"\n');

fprintf(fileID1, 'const float R[]=\n');
fprintf(fileID1, '{\n');
for k=1:size_R
 	fprintf(fileID1, [num2str(R(k)) ',\n']);
end
fprintf(fileID1, '};\n');
fprintf(fileID1, 'const float S[]=\n');
fprintf(fileID1, '{\n');
for k=1:size_S
	fprintf(fileID1, [num2str(S(k)) ',\n']);
end
fprintf(fileID1, '};\n');

fprintf(fileID1, 'const float T[]=\n');
fprintf(fileID1, '{\n');
for k=1:size_T
	fprintf(fileID1, [num2str(T(k)) ',\n']);
end
fprintf(fileID1, '};\n');








function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
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
%.................................................%
%.................................................%
[Ts Bp Ap Hr Hs dist P Bm Am]=achieve_data(handles);
%RST values
R=str2num(get(handles.edit15, 'string'));
S=str2num(get(handles.edit16, 'string'));
T=str2num(get(handles.edit17, 'string'));
%....................................................................................%
%
%.....................................................................................%
%Automated(Simulink model creation)
%created:19/5/2020
%......................................................................................%
sim_time=100;
t_ref=5;
t_dist=50; %disturbance "delay"
str_Ts=num2str(Ts);
x=0; y=0;
new_system('Sim')

%...............criteria...........................%
%add_block(sourc,destination/name,position,data)
%width
%add_line(destination,start pt,end pt)
%space
%...................................................%
add_block('simulink/Sources/Step','Sim/step fcn','position',[x, y, x+30, y+30],'Time','5','Before','0','After','1','SampleTime',str_Ts)
x=x+30;
x=x+35;
%delete_block('test5/step fcn')
add_block('simulink/Discrete/Discrete Filter','Sim/Bm\Am','position',[x, y, x+195, y+30],'numerator',['[' num2str(Bm) ']'],'denominator',['[' num2str(Am) ']'],'SampleTime',str_Ts)
x=x+195;
add_line('Sim','step fcn/1','Bm\Am/1')
x=x+35;
add_block('simulink/Discrete/Discrete Filter','Sim/T(z)', 'position',[x, y, x+195, y+30],'numerator',['[' num2str(T) ']'],'denominator','1','SampleTime',str_Ts)
x=x+195;
add_line('Sim','Bm\Am/1','T(z)/1')
x=x+25;
add_block('simulink/Math Operations/Sum','Sim/sum1','position',[x, y+5, x+20, y+5+20],'Inputs','|+-')
x=x+20;
add_line('Sim','T(z)/1','sum1/1')
x=x+20;
add_block('simulink/Discrete/Discrete Filter','Sim/1\Hs(z)','position',[x, y, x+20, y+30],'numerator','1','denominator','1','SampleTime','1')
x=x+20;
add_line('Sim','sum1/1','1\Hs(z)/1')
x=x+20;
add_block('simulink/Discrete/Discrete Filter','Sim/1\S(z)','position',[x, y, x+195, y+30],'numerator','1','denominator',['[' num2str(S) ']'],'SampleTime',str_Ts)
x=x+195;
add_line('Sim','1\Hs(z)/1','1\S(z)/1')
x=x+80;
add_block('simulink/Discrete/Discrete Filter','Sim/B(z)\A(z)','position',[x, y, x+195, y+30],'numerator',['[' num2str(Bp) ']'],'denominator',['[' num2str(Ap) ']'],'SampleTime',str_Ts)
x=x+195;
add_line('Sim','1\S(z)/1','B(z)\A(z)/1')
x=x+20;%%
add_block('simulink/Math Operations/Sum','Sim/sum2','position',[x, y+5, x+20, y+5+20],'Inputs','++|')
x=x+35;
add_line('Sim','B(z)\A(z)/1','sum2/2')
x=x+35;
add_block('simulink/Signal Routing/Mux','Sim/mux','position',[x, y, x+10, y+30])
x=x+10;
add_line('Sim','sum2/1','mux/2')
x=x+30;
add_block('simulink/Sinks/Scope','Sim/scope1','position',[x, y, x+30, y+35])
x=x+30;
add_line('Sim','mux/1','scope1/1')
x=x+30;
add_line('Sim','1\S(z)/1','mux/1')
x=x+110;
x=x-465;
y=y+110;
add_block('simulink/Discrete/Discrete Filter','Sim/R(z)','position',[x, y, x+195, y+30],'numerator',['[' num2str(R) ']'], 'denominator','[1]','SampleTime',str_Ts,'orientation','left')
x=x-35;
add_line('Sim','sum2/1','R(z)/1')
x=x-80;
add_block('simulink/Discrete/Discrete Filter','Sim/Hr(z)','position',[x, y, x+20, y+30],'numerator','[1]', 'denominator','[1]','SampleTime','1','orientation','left')
x=x-30;
add_line('Sim','R(z)/1','Hr(z)/1')
x=x-20;
add_line('Sim','Hr(z)/1','sum1/2')
x=x-20;
%disturbance 
%x=x+35;
x=x-130;
add_block('simulink/Sources/Sine Wave','Sim/signal','position',[x,y-180, x+30, y-180+30],'amplitude','-0.25', 'frequency',get(handles.edit19,'string'), 'phase','pi/2','SampleTime',str_Ts)
x=x+30;
x=x+40;
add_block('simulink/Continuous/Transport Delay','Sim/delay','position',[x, y-180, x+30, y-180+30],'delaytime',num2str(t_dist*Ts))
x=x+30;
add_line('Sim','signal/1','delay/1')
add_line('Sim','delay/1','sum2/1')
x=x+110;

open_system('Sim')
%....................................................................................%
%3- C-Code generator, using configurations of last two steps,
%    is to produce well-structured c-code for the closed loop control system.(30%)
%.....................................................................................%
%Automated(Subsystem-C code generation)
%created:19/5/2020
%......................................................................................%
%subsystem automaticlly
% c code generation
Simulink.BlockDiagram.createSubSystem([getSimulinkBlockHandle('Sim/T(z)'), getSimulinkBlockHandle('Sim/sum1'), getSimulinkBlockHandle('Sim/1\Hs(z)'), getSimulinkBlockHandle('Sim/1\S(z)'), getSimulinkBlockHandle('Sim/R(z)'), getSimulinkBlockHandle('Sim/Hr(z)')]);
cs = getActiveConfigSet('Sim');
stf = 'ert.tlc';
tmf = 'ert_default_tmf';
mc  = 'make_rtw';
switchTarget(cs,stf,[]);
set_param(cs,'TemplateMakefile',tmf);
set_param(cs,'MakeCommand',mc);
set_param('Sim','ProdHWDeviceType','NXP->Cortex—M4');
rtwbuild('Sim/Subsystem','generateCodeOnly',true)






function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
