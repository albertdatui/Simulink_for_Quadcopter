function [ViconPose] = GetViconPose(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 



% *********************************
% x330_1
% *********************************
% SubjectName = 'x330'; SegmentName = 'x330';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_1', 'x330_1');
ViconPose(1) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(2) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(3) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_1', 'x330_1');
ViconPose(4) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(5) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(6) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x330_2
% *********************************
% SubjectName = 'x330_2'; SegmentName = 'x330_2';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_7', 'x330_7');
ViconPose(7) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(8) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(9) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_7', 'x330_7');
ViconPose(10) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(11) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(12) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x330_3
% *********************************
% SubjectName = 'x330'; SegmentName = 'x330';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_3', 'x330_3');
ViconPose(13) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(14) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(15) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_3', 'x330_3');
ViconPose(16) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(17) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(18) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x330_4
% *********************************
% SubjectName = 'x330_4'; SegmentName = 'x330_4';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_4', 'x330_4');
ViconPose(19) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(20) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(21) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_4', 'x330_4');
ViconPose(22) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(23) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(24) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x330_5
% *********************************
% SubjectName = 'x330'; SegmentName = 'x330';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_5', 'x330_5');
ViconPose(25) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(26) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(27) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_5', 'x330_5');
ViconPose(28) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(29) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(30) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x330_6
% *********************************
% SubjectName = 'x330_6'; SegmentName = 'x330_6';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x330_6', 'x330_6');
ViconPose(31) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(32) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(33) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x330_6', 'x330_6');
ViconPose(34) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(35) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(36) = QuadEulerXYZ.Rotation(3); % Yaw


end 



