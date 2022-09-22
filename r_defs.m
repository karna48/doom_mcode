classdef r_defs
    % constants global - dependancy solution
    properties (Constant)
        SIL_NONE = 0
        SIL_BOTTOM = 1
        SIL_TOP = 2
        SIL_BOTH = 3

        MAXDRAWSEGS = 256

        % enum slopetype_t
        ST_HORIZONTAL = 0
        ST_VERTICAL = 1
        ST_POSITIVE = 2
        ST_NEGATIVE = 3
    end
    methods (Static = true)
        function r = vertex_t(x, y)
            r = struct('x', int32(x), 'y', int32(y));
        end
    end
end

