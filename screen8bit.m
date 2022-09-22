classdef screen8bit < handle
    properties (Access = public)
        data
        cmap
        figureObj
        axesObj
        imageObj
    end
    methods (Access = public)
        function self = screen8bit(width, height, dispSize)
            self.data = zeros(height, width, 'uint8');
            %self.data = 255*ones(height, width, 'uint8');
            self.cmap = jet(256);
            rows = floor(height/10)
            cols = floor(width/10)
            for i = 0:rows
                for j = 0:cols
                    c = mod(i*cols+j, 255);
                    x = j*10 + 1;
                    y = i*10 + 1;
                    x2 = min([x+10, width]);
                    y2 = min([y+10, height]);
                    self.data(y:y2, x:x2) = c;
                end
            end

            self.figureObj = figure(...
                'Position', [0, 0, dispSize],
                'Name', 'Screen8bit',
                'Color', [0.75, 0.75, 1],
                'MenuBar', 'none',
                'Toolbar', 'none',
                'Resize', 'off');

            self.axesObj = axes(...
                self.figureObj,
                'Position', [0, 0, 1, 1]);

            % Show the figure after all components are created
            %set(self.figureObj, );

            %self.figureObj = figure('Position', [0, 0, dispSize]);
            %self.axesObj = axes(self.figureObj, 'Position', [0, 0, dispSize]);

            %colormap(self.axesObj, self.cmap);
            self.imageObj = image(self.axesObj, self.data)
            axis(self.axesObj, 'image');
            set(self.axesObj,
                'XColor', 'none',
                'YColor', 'none')

        end

        function blit_alpha(self, img, x, y, masking_color)

        end

        function set_colormap(cmap)
            self.cmap = cmap;
            colormap(self.axesObj, self.cmap);
        end

        function show_frame(self)
            set(self.imageObj, 'CData', self.data);
        end
    end
end


