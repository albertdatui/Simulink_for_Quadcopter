function Vicon_Filter(block)
% Level-2 MATLAB file S-Function for Vicon signal processing.
% Render signals invalid if local axis flips or tracking lost.

 setup(block);
  
%endfunction

function setup(block)
  
  block.NumDialogPrms  = 0;
  
  %% Register number of input and output ports
  block.NumInputPorts  = 1;
  block.NumOutputPorts = 1;

  %% Setup functional port properties to dynamically
  %% inherited.
  block.SetPreCompInpPortInfoToDynamic;
  block.SetPreCompOutPortInfoToDynamic;
 
  block.InputPort(1).Dimensions        = 6;
  block.InputPort(1).DirectFeedthrough = true;
  
  block.OutputPort(1).Dimensions       = 6;
  
  %% Set block sample time to inherited
  block.SampleTimes = [-1 0];
  
  %% Set the block simStateCompliance to default (i.e., same as a built-in block)
  block.SimStateCompliance = 'DefaultSimState';

  %% Register methods
  block.RegBlockMethod('PostPropagationSetup',    @DoPostPropSetup);
  block.RegBlockMethod('InitializeConditions',    @InitConditions);  
  block.RegBlockMethod('Outputs',                 @Output);  
  block.RegBlockMethod('Update',                  @Update);  
  
%endfunction

function DoPostPropSetup(block)

  %% Setup Dwork
  block.NumDworks = 2;
  
  block.Dwork(1).Name            = 'ViconPose'; 
  block.Dwork(1).Dimensions      = 6;
  block.Dwork(1).DatatypeID      = 0;
  block.Dwork(1).Complexity      = 'Real';
  block.Dwork(1).UsedAsDiscState = true;

  block.Dwork(2).Name            = 'InitFlag'; 
  block.Dwork(2).Dimensions      = 1;
  block.Dwork(2).DatatypeID      = 0;
  block.Dwork(2).Complexity      = 'Real';
  block.Dwork(2).UsedAsDiscState = true;
%endfunction



function InitConditions(block)

%% Initialize Dwork
block.Dwork(1).Data = zeros(6,1);
block.Dwork(2).Data = 1;      % Set InitFlag to 1 to initialize with InputPort(1)
%endfunction


function Output(block)

  block.OutputPort(1).Data = block.Dwork(1).Data;
  
%endfunction


function Update(block)

  InitFlag = block.Dwork(2).Data;
  
  if InitFlag == 1
      YawOld = block.InputPort(1).Data(6);           % Initial yaw angle
      block.Dwork(1).Data = block.InputPort(1).Data; % Initialization
      block.Dwork(2).Data = 0;                       % Reset InitFlag to 0
  end
      
  ViconPoseNew = block.InputPort(1).Data;
  YawNew       = ViconPoseNew(6);
  ZNew         = ViconPoseNew(3);
  ViconPoseOld = block.Dwork(1).Data;
  YawOld       = ViconPoseOld(6);
  
  
  % if in one step, the yaw jump is within 30 degree, and Znew not zero, 
  % then we will take the vicon data, otherwise we discard it.
  % 30deg is a good value. Smaller than that, the good signal is easily
  % misintepreted as bad. 
  if (abs(YawNew - YawOld) < 30*pi/180 &&  ZNew ~= 0 ) 
      block.Dwork(1).Data = ViconPoseNew;

  end
  
  if (abs(YawNew - YawOld) >= 2*pi*0.9 &&  ZNew ~= 0 )
      block.Dwork(1).Data = ViconPoseNew;
  end 

  
%endfunction

