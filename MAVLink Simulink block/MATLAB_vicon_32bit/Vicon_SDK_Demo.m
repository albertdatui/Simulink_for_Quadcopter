function Vicon_SDK_Demo(subjectName, markerName)

MyClient = Client();
% Connect to a server
fprintf( 'Connecting...' );
while ~MyClient.IsConnected().Connected
    MyClient.Connect( '10.0.0.1:801' );
    fprintf( '.' );
end
fprintf( 'Connected OK\n' );

MyClient.EnableSegmentData();
MyClient.EnableMarkerData();

i=1;
X=[];
Y=[];
Z=[];
t=[];

f1 = figure;
set(f1,'ButtonDownFcn',@button_down);
px = subplot(3,1,1);
hold on
plot(0,0,'EraseMode','none');
py = subplot(3,1,2);
hold on
plot(0,0,'EraseMode','none');
pz = subplot(3,1,3);
hold on
plot(0,0,'EraseMode','none');

set([px py pz],'DrawMode','Fast');

invalidSubject = 0;
invalidMarker = 0;

% clicked = 0;

while true
    % Get a frame
    %     fprintf( 'Waiting for new frame...' );
    while MyClient.GetFrame().Result.Value ~= Result.Success
        fprintf( '.' );
    end% while
    %     frameNumber = MyClient.GetFrameNumber().FrameNumber;
    %     fprintf('Frame Number: %d\n', frameNumber);

    %     subjectCount = MyClient.GetSubjectCount().SubjectCount;

    %     subjectName = MyClient.GetSubjectName(1).SubjectName;
    %     markerName = MyClient.GetMarkerName(subjectName, 1).MarkerName;
    %     fprintf('Marker Name: %s\n', markerName);
    output = MyClient.GetMarkerGlobalTranslation(subjectName,markerName);
    if output.Result.Value == Result.InvalidSubjectName
        invalidSubject = 1;
        close(f1);
        break;
    elseif output.Result.Value == Result.InvalidMarkerName
        invalidMarker = 1;
        close(f1);
        break;
    end
    if output.Occluded% || output.Result.Value == Result.InvalidSubjectName || output.Result.Value == Result.InvalidMarkerName
        X(i) = 0;
        Y(i) = 0;
        Z(i) = 0;
    else
        X(i) = output.Translation(1);
        Y(i) = output.Translation(2);
        Z(i) = output.Translation(3);
    end
    t(i) = i;
    %     fprintf('X: %g\n', X);
    if min(X) == max(X)
        upX = min(X)+1;
    else
        upX = max(X);
    end
    if min(Y) == max(Y)
        upY = min(Y)+1;
    else
        upY = max(Y);
    end
    if min(Z) == max(Z)
        upZ = min(Z)+1;
    else
        upZ = max(Z);
    end
    
    if ishandle(f1)
        axis(px,[0 t(i)+t(i)/2 min(X) upX]);
        title(px,[markerName,': X component']);
        ppx = plot(px,t,X);
        set(ppx,'Color','red');
    else
        break;
    end
    if ishandle(f1)
        axis(py,[0 t(i)+t(i)/2 min(Y) upY]);
        title(py,[markerName,': Y component']);
        ppy = plot(py,t,Y);
        set(ppy,'Color','green');
    else
        break;
    end
    if ishandle(f1)
        axis(pz,[0 t(i)+t(i)/2 min(Z) upZ]);
        title(pz,[markerName,': Z component']);
        ppz = plot(pz,t,Z);
        set(ppz,'Color','blue');
    else
        break;
    end
    drawnow;

    i=i+1;

end% while

if invalidSubject || invalidMarker
    f2 = figure;
    a2 = axes;
    if invalidSubject
        text(0.25,0.5,'INVALID SUBJECT NAME','FontSize',16,'FontWeight','bold');
    elseif invalidMarker
        text(0.25,0.5,'INVALID MARKER NAME','FontSize',16,'FontWeight','bold');
    end
end
end% function

function button_down(src,evnt)
% src - the object that is the source of the event
% evnt - empty for this property
sel_typ = get(gcbf,'SelectionType');
switch sel_typ
    case 'normal'
        disp('User clicked left-mouse button')
        close(gcf);
        return;
    case 'extend'
        disp('User did a shift-click')
        close(gcf);
        return;
    case 'alt'
        disp('User did a control-click')
        close(gcf)
        return;
end

end