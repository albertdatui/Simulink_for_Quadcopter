%% Initialization_Simulink_Vicon.m
%
%% Program options
% 
% TransmitMulticast = false;


%% Load the SDK
% 
% fprintf( 'Loading SDK...' );
Client.LoadViconDataStreamSDK();
% fprintf( 'done\n' );

%% Program options
% 
HostName = '10.0.0.1';

% Make a new client
global MyClient;
MyClient = Client();


% Connect to a server
% fprintf( 'Connecting to %s ...', HostName );
while ~MyClient.IsConnected().Connected
  % Direct connection
  MyClient.Connect( HostName );
  
  % Multicast connection
  % MyClient.ConnectToMulticast( HostName, '224.0.0.0' );
  
%   fprintf( '.' );
end
% fprintf( '\n' );

%% Enable some different data types
% Enable some different data types
MyClient.EnableSegmentData();
MyClient.EnableMarkerData();
MyClient.EnableUnlabeledMarkerData(); %csh: try single marker detection

% fprintf( 'Segment Data Enabled: %d\n',          MyClient.IsSegmentDataEnabled().Enabled );
% fprintf( 'Marker Data Enabled: %d\n',           MyClient.IsMarkerDataEnabled().Enabled );

%% Set the streaming mode
% 
MyClient.SetStreamMode( StreamMode.ClientPull );
% MyClient.SetStreamMode( StreamMode.ClientPullPreFetch );
% MyClient.SetStreamMode( StreamMode.ServerPush );

%% Set the global up axis
% 
MyClient.SetAxisMapping( Direction.Forward, ...
                         Direction.Left,    ...
                         Direction.Up );    % Z-up
% MyClient.SetAxisMapping( Direction.Forward, ...
%                          Direction.Up,      ...
%                          Direction.Right ); % Y-up

% Output_GetAxisMapping = MyClient.GetAxisMapping();
% fprintf( 'Axis Mapping: X-%s Y-%s Z-%s\n', Output_GetAxisMapping.XAxis.ToString(), ...
%                                            Output_GetAxisMapping.YAxis.ToString(), ...
%                                            Output_GetAxisMapping.ZAxis.ToString() );


  
% if TransmitMulticast
%   MyClient.StartTransmittingMulticast( 'localhost', '224.0.0.0' );
% end  

%% fprintf( 'Waiting for new frame...' );

 while MyClient.GetFrame().Result.Value ~= Result.Success
    fprintf( '.' );
  end% while