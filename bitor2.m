function r = bitor2(varargin)
    r = varargin{1};
    for i = 2:nargin
        r = bitor(r, varargin{i});
    end
end

