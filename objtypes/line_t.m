
classdef line_t < handle
    properties
        v1
        v2

        dx
        dy

        flags
        special
        tag

        sidenum

        bbox

        slopetype

        frontsector
        backsector

        validcount

        specialdata  % thinker_t
    end
    methods
        function self = line_t(doom, wad_map, line_idx)

        end
    end
end

