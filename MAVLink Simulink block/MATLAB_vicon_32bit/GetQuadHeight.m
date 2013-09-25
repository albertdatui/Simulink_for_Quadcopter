function QuadHeight = GetQuadHeight(u)
global MyClient

 while (MyClient.GetFrame().Result.Value) ~= (Result.Success)
    fprintf( '.' );
  end% while
  
SubjectName = 'QuadRotor_2';
MarkerName = 'QuadOrigin';
% MarkerName = 'Y';
% MarkerName = 'Y';

Output_GetMarkerGlobalTranslation = MyClient.GetMarkerGlobalTranslation( SubjectName, MarkerName );

QuadHeight = Output_GetMarkerGlobalTranslation.Translation( 3 );






