function Last_Position_Hold(block)
% Level-2 MATLAB file S-Function for safe take-off.
% Set current position and yaw from Vicon as set point for safe take-off.

 setup(block);
  
%endfunction

function setup(block)
  
  block.NumDialogPrms  = 0;
  
  %% Register number of input and output ports
  block.NumInputPorts  = 4;
  block.NumOutputPorts = 1;

  %% Setup functional port properties to dynamically
  %% inherited.
  block.SetPreCompInpPortInfoToDynamic;
  block.SetPreCompOutPortInfoToDynamic;
  
  block.InputPort(1).Dimensions        = 4;     % Desired Setpoint
  block.InputPort(1).DirectFeedthrough = true;
  
  block.InputPort(2).Dimensions        = 3;     % Vicon's position
  block.InputPort(2).DirectFeedthrough = true;
  
  block.InputPort(3).Dimensions        = 3;     % Vicon's attitude
  block.InputPort(3).DirectFeedthrough = true;
  
  block.InputPort(4).Dimensions        = 1;     % Channel 6 (to enable trajectory tracking)
  block.InputPort(4).DirectFeedthrough = true;
  
  block.OutputPort(1).Dimensions       = 4;     % Processed Setpoint
  
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
  block.Dwork(1).Dimensions      = 4;
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
block.Dwork(1).Data = zeros(4,1);
block.Dwork(2).Data = 1;      % Set Flag to 1 to initialize with InputPort(1) 

%endfunction


function Output(block)

  block.OutputPort(1).Data = block.Dwork(1).Data;
  
%endfunction


function Update(block)
  
  initflag = block.Dwork(2).Data;
  z_vicon  = block.InputPort(2).Data(3); 
  chan5    = block.InputPort(4).Data;      % Channel 5 from RC
  
  % If the quadrotor is on the floor and Z~=0 (valid Vicon signal), 
  % let setpoint be the current pose, take off and maintain height of 0.5m.   
  
  if (initflag == 1) && (z_vicon > -0.1) && (z_vicon ~= 0) 
      Setpoint = [block.InputPort(2).Data;block.InputPort(3).Data(3)];     % Initial Vicon Pose
      Setpoint(3) = -0.5;                                                  % Desired height 0.5m
      block.Dwork(1).Data = Setpoint;                                      % Processed setpoint
      block.Dwork(2).Data = 0;                                             % Reset flag to 0                                        
  end
  
  if (chan5 > 1750)
      Setpoint = [block.InputPort(4).Data];
      block.Dwork(1).Data = Setpoint; 
  end
  
%endfunction

