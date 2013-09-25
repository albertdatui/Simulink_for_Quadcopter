%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Copyright (C) OMG Plc 2009.
%% All rights reserved.  This software is protected by copyright
%% law and international treaties.  No part of this software / document
%% may be reproduced or distributed in any form or by any means,
%% whether transiently or incidentally to some other use of this software,
%% without the written permission of the copyright owner.
%%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Part of the ViconDataStream SDK for MATLAB.
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
classdef Unit
  properties (Constant = true)
    Unknown     = 0;
    Volt        = 1;
    Newton      = 2;
    NewtonMeter = 3;
    Meter       = 4;
  end
  
  properties
    Value
  end
  
  methods
    function obj = Unit( value )
      obj.Value = value;
    end% Constructor
    
    function String = ToString( obj )
      switch obj.Value 
        case Unit.Unknown
          String = 'Unknown';
        case Unit.Volt
          String = 'Volt';
        case Unit.Newton
          String = 'Newton';
        case Unit.NewtonMeter
          String = 'NewtonMeter';
        case Unit.Meter
          String = 'Meter';
        otherwise
          String = 'Unknown';
      end    
    end    
    
  end% methods
  
end% classdef
