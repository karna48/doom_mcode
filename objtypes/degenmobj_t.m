classdef degenmobj_t < handle
    properties
        % thinker  % not used for anything
        x
        y
        z
    end
    methods
        function self = degenmobj_t(x, y, z)
            self.x = int32(x);
            self.y = int32(y);
            self.z = int32(z);
        end
    end
end

