function [Quad_Coordinates] = GetQuadPose_Wand(u)
global MyClient;
global QuadRotationMatix;

while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
	fprintf( '.' );
end 
  
SubjectName = 'point_H';
% MarkerName = 'QuadOrigin';
SegmentName = 'point_H';

% **************************************
% X, Y, Z Global Coordinates of the Quad
% **************************************
Output_GetSegmentGlobalTranslation = MyClient.GetSegmentGlobalTranslation( SubjectName, SegmentName );
Quad_Coordinates(1) = Output_GetSegmentGlobalTranslation.Translation( 1 );  % X-coordinate
Quad_Coordinates(2) = Output_GetSegmentGlobalTranslation.Translation( 2 );  % Y-coordinate
Quad_Coordinates(3) = Output_GetSegmentGlobalTranslation.Translation( 3 );	% Z-coordinate

% uncomment for debugging:
% fprintf('Quad X: %d\n',Quad_Coordinates(1));
% fprintf('Quad Y: %d\n',Quad_Coordinates(2));
% fprintf('Quad Z: %d\n',Quad_Coordinates(3);

% ************
% Euler Angles
% ************
QuadEulerXYZ = MyClient.GetSegmentGlobalRotationEulerXYZ( SubjectName, SegmentName );
Quad_Coordinates(4) = QuadEulerXYZ.Rotation( 1 ); % Roll
Quad_Coordinates(5) = QuadEulerXYZ.Rotation( 2 ); % Pitch
Quad_Coordinates(6) = QuadEulerXYZ.Rotation( 3 ); % Yaw

% uncomment for debugging:
% fprintf('Quad Roll: %d\n',Quad_Coordinates(4);
% fprintf('Quad Pitch: %d\n',Quad_Coordinates(5));
% fprintf('Quad Yaw: %d\n',Quad_Coordinates(6));


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



%% for the virtual leader
% VL_SubjectName = 'point_H';
% VL_SegmentName = 'point_H';
% % MarkerName = 'X';
% % Output_GetMarkerGlobalTranslation = MyClient.GetMarkerGlobalTranslation( SubjectName, MarkerName );
% 
% Output_GetSegmentGlobalTranslation_VL = MyClient.GetSegmentGlobalTranslation( VL_SubjectName, VL_SegmentName );
% 
% Quad_Coordinates(7) = Output_GetSegmentGlobalTranslation_VL.Translation( 1 );
% Quad_Coordinates(8) = Output_GetSegmentGlobalTranslation_VL.Translation( 2 );
% Quad_Coordinates(9) = Output_GetSegmentGlobalTranslation_VL.Translation( 3 );
% 
% QuadEulerXYZ_VL = MyClient.GetSegmentGlobalRotationEulerXYZ( VL_SubjectName, VL_SegmentName );
% Quad_Coordinates(10) = QuadEulerXYZ_VL.Rotation( 3 );

end 




