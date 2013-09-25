function [ViconPose] = GetViconPose(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 


% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(1);
ViconPose(1) = Output.Translation(1);  % X-coordinate
ViconPose(2) = Output.Translation(2);  % Y-coordinate
ViconPose(3) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(2);
ViconPose(4) = Output.Translation(1);  % X-coordinate
ViconPose(5) = Output.Translation(2);  % Y-coordinate
ViconPose(6) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(3);
ViconPose(7) = Output.Translation(1);  % X-coordinate
ViconPose(8) = Output.Translation(2);  % Y-coordinate
ViconPose(9) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(4);
ViconPose(10) = Output.Translation(1);  % X-coordinate
ViconPose(11) = Output.Translation(2);  % Y-coordinate
ViconPose(12) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(5);
ViconPose(13) = Output.Translation(1);  % X-coordinate
ViconPose(14) = Output.Translation(2);  % Y-coordinate
ViconPose(15) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(6);
ViconPose(16) = Output.Translation(1);  % X-coordinate
ViconPose(17) = Output.Translation(2);  % Y-coordinate
ViconPose(18) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(7);
ViconPose(19) = Output.Translation(1);  % X-coordinate
ViconPose(20) = Output.Translation(2);  % Y-coordinate
ViconPose(21) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(8);
ViconPose(22) = Output.Translation(1);  % X-coordinate
ViconPose(23) = Output.Translation(2);  % Y-coordinate
ViconPose(24) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(9);
ViconPose(25) = Output.Translation(1);  % X-coordinate
ViconPose(26) = Output.Translation(2);  % Y-coordinate
ViconPose(27) = Output.Translation(3);  % Z-coordinate

% X, Y, Z Global Coordinates
Output = MyClient.GetUnlabeledMarkerGlobalTranslation(10);
ViconPose(28) = Output.Translation(1);  % X-coordinate
ViconPose(29) = Output.Translation(2);  % Y-coordinate
ViconPose(30) = Output.Translation(3);  % Z-coordinate
