function [ViconPose] = GetViconPose(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 



% *********************************
% x330
% *********************************
% SubjectName = 'x330'; SegmentName = 'x330';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('test', 'test');
ViconPose(1) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(2) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(3) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('test', 'test');
ViconPose(4) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(5) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(6) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% Perching Stand (bar)
% *********************************
% SubjectName = 'bar'; SegmentName = 'bar';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('bar', 'bar');
ViconPose(7) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(8) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(9) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('bar', 'bar');
ViconPose(10) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(11) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(12) = QuadEulerXYZ.Rotation(3); % Yaw
end 



