classdef bbox_t < handle
    % m_bbox.{c,h}
    % replacement for fixed_t[4]
    properties
        box
    end
    methods
        function self = bbox_t()
            self.box = zeros(1, 4, 'int32');
            self.clear();
        end

        % M_ClearBox
        function clear(self)
            self.box(cg.BOXTOP) = cg.MININT;
            self.box(cg.BOXRIGHT) = cg.MININT;
            self.box(cg.BOXLEFT) = cg.MAXINT;
            self.box(cg.BOXBOTTOM) = cg.MAXINT;
        end

        % M_AddToBox
        function add(self, x, y)
            if (x<self.box(cg.BOXLEFT))
                self.box(cg.BOXLEFT) = x;
            elseif (x>self.box(cg.BOXRIGHT))
                self.box(cg.BOXRIGHT) = x;
            end

            if (y<self.box(cg.BOXBOTTOM))
                self.box(cg.BOXBOTTOM) = y;
            elseif (y>self.box(cg.BOXTOP))
                self.box(cg.BOXTOP) = y;
            end
        end
    end
end
