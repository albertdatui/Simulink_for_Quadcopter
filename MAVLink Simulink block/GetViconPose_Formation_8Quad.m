function [ViconPose] = GetViconPose(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 


% *********************************
% x240
% *********************************
% SubjectName = 'x240'; SegmentName = 'x240';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240', 'x240');
ViconPose(1) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(2) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(3) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240', 'x240');
ViconPose(4) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(5) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(6) = QuadEulerXYZ.Rotation(3); % Yaw


% *********************************
% x240_2
% *********************************
% SubjectName = 'x240_2'; SegmentName = 'x240_2';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_2', 'x240_2');
ViconPose(7) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(8) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(9) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_2', 'x240_2');
ViconPose(10) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(11) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(12) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_3
% *********************************
% SubjectName = 'x240_3'; SegmentName = 'x240_3';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_3', 'x240_3');
ViconPose(13) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(14) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(15) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_3', 'x240_3');
ViconPose(16) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(17) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(18) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_4
% *********************************
% SubjectName = 'x240_4'; SegmentName = 'x240_4';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_4', 'x240_4');
ViconPose(19) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(20) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(21) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_4', 'x240_4');
ViconPose(22) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(23) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(24) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_5
% *********************************
% SubjectName = 'x240_5'; SegmentName = 'x240_5';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_5', 'x240_5');
ViconPose(25) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(26) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(27) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_5', 'x240_5');
ViconPose(28) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(29) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(30) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_6
% *********************************
% SubjectName = 'x240_6'; SegmentName = 'x240_6';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_6', 'x240_6');
ViconPose(31) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(32) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(33) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_6', 'x240_6');
ViconPose(34) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(35) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(36) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_7
% *********************************
% SubjectName = 'x240_7'; SegmentName = 'x240_7';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_7', 'x240_7');
ViconPose(37) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(38) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(39) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_7', 'x240_7');
ViconPose(40) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(41) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(42) = QuadEulerXYZ.Rotation(3); % Yaw

% *********************************
% x240_8
% *********************************
% SubjectName = 'x240_8'; SegmentName = 'x240_8';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240_8', 'x240_8');
ViconPose(43) = Output_GetSegmentGlobalTranslation.Translation(1);  % X-coordinate
ViconPose(44) = Output_GetSegmentGlobalTranslation.Translation(2);  % Y-coordinate
ViconPose(45) = Output_GetSegmentGlobalTranslation.Translation(3);  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240_8', 'x240_8');
ViconPose(46) = QuadEulerXYZ.Rotation(1); % Roll
ViconPose(47) = QuadEulerXYZ.Rotation(2); % Pitch
ViconPose(48) = QuadEulerXYZ.Rotation(3); % Yaw


end 




