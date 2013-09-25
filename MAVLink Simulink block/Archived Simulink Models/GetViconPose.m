function [ViconPose] = GetViconPose(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 

% *********************************
% Wand
% *********************************
% SubjectName = 'point_H'; SegmentName = 'point_H';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('point_H', 'point_H');
ViconPose(1) = Output_GetSegmentGlobalTranslation.Translation( 1 );  % X-coordinate
ViconPose(2) = Output_GetSegmentGlobalTranslation.Translation( 2 );  % Y-coordinate
ViconPose(3) = Output_GetSegmentGlobalTranslation.Translation( 3 );	% Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('point_H', 'point_H');
ViconPose(4) = QuadEulerXYZ.Rotation( 1 ); % Roll
ViconPose(5) = QuadEulerXYZ.Rotation( 2 ); % Pitch
ViconPose(6) = QuadEulerXYZ.Rotation( 3 ); % Yaw


% *********************************
% Lambo1
% *********************************
% SubjectName = 'Lambo1'; SegmentName = 'Lambo1';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('Lambo1', 'Lambo1');
ViconPose(7) = Output_GetSegmentGlobalTranslation.Translation( 1 );  % X-coordinate
ViconPose(8) = Output_GetSegmentGlobalTranslation.Translation( 2 );  % Y-coordinate
ViconPose(9) = Output_GetSegmentGlobalTranslation.Translation( 3 );  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('Lambo1', 'Lambo1');
ViconPose(10) = QuadEulerXYZ.Rotation( 1 ); % Roll
ViconPose(11) = QuadEulerXYZ.Rotation( 2 ); % Pitch
ViconPose(12) = QuadEulerXYZ.Rotation( 3 ); % Yaw


% *********************************
% X400
% *********************************
% SubjectName = 'X400'; SegmentName = 'X400';

% X, Y, Z Global Coordinates of the Quad
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation('x240', 'x240');
ViconPose(13) = Output_GetSegmentGlobalTranslation.Translation( 1 );  % X-coordinate
ViconPose(14) = Output_GetSegmentGlobalTranslation.Translation( 2 );  % Y-coordinate
ViconPose(15) = Output_GetSegmentGlobalTranslation.Translation( 3 );  % Z-coordinate

% Euler Angles
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ('x240', 'x240');
ViconPose(16) = QuadEulerXYZ.Rotation( 1 ); % Roll
ViconPose(17) = QuadEulerXYZ.Rotation( 2 ); % Pitch
ViconPose(18) = QuadEulerXYZ.Rotation( 3 ); % Yaw


% **********
% Quaternion
% **********
% QuadQuaternion = MyClient.GetS egmentGlobalRotationQuaternion( SubjectName, SegmentName );
% Quad_Coordinates(7)  = QuadQuaternion.Rotation(1);
% Quad_Coordinates(8)  = QuadQuaternion.Rotation(2);
% Quad_Coordinates(9)  = QuadQuaternion.Rotation(3);
% Quad_Coordinates(10) = QuadQuaternion.Rotation(4);


% *********************
% QuadRotational Matrix
% *********************
% Output_GetSegmentGlobalRotationMatrix = MyClient.GetSegmentGlobalRotationMatrix( SubjectName, SegmentName );
% QuadRotationMatix = ...
% [Output_GetSegmentGlobalRotationMatrix.Rotation( 1 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 2 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 3 );
%  Output_GetSegmentGlobalRotationMatrix.Rotation( 4 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 5 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 6 );
%  Output_GetSegmentGlobalRotationMatrix.Rotation( 7 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 8 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 9 );];
% QuadRotationMatix = ...
% [Output_GetSegmentGlobalRotationMatrix.Rotation( 1 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 2 );
%  Output_GetSegmentGlobalRotationMatrix.Rotation( 4 ),Output_GetSegmentGlobalRotationMatrix.Rotation( 5 )];

% Quad_Coordinates(5) = Output_GetSegmentGlobalRotationMatrix.Rotation( 1 );
% Quad_Coordinates(6) = Output_GetSegmentGlobalRotationMatrix.Rotation( 4 );
% Quad_Coordinates(7) = Output_GetSegmentGlobalRotationMatrix.Rotation( 2 );
% Quad_Coordinates(8) = Output_GetSegmentGlobalRotationMatrix.Rotation( 5 );

end 




