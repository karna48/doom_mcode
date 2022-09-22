classdef thinker_t < handle
    properties
        prev
        next
        function_handle  % fun
    end
    methods
        function self = thinker_t(function_handle)
            self.prev = [];
            self.next = [];
            if nargin < 1
                self.function_handle = @actions.NULL;
            else
                self.function_handle = function_handle;
            end
        end
    end
end

