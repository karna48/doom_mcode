classdef fontmat < handle
    properties (Access = public)
        charmap
        w
        h
    end
    methods (Access = public)
        function self = fontmat(filename)
            font_img = imread(filename);
            if strcmpi('DOSVGATTF.png', filename)
                x_o = 6;
                y_o = 35;
                cols = '@'-'!'+1;
                self.w = 8;
                self.h = 16;
            end
            w = self.w;
            h = self.h;
            self.charmap = cell(1, 255);
            for c = 1 : '!'-2
                self.charmap{c} = zeros(self.h, self.w, 'uint8');
            end
            self.charmap{' '} = ones(self.h, self.w, 'uint8');
            for c = '!' : 255
                idx = c - '!';
                col = mod(idx, cols);
                row = floor(idx / cols);

                x = x_o + col*(w+1);
                y = y_o + row*(h);
                A = font_img(y:y+h-1, x:x+w-1);
                self.charmap{uint32(c)} = A;
            end
        end

        function blit_alpha(self, screen, c, x, y)

        end

        function img=colored(self, c, fg, bg)
            img = zeros(self.h, self.w, 3);
            img_1c = zeros(self.h, self.w);
            cm = self.charmap{c};
            for channel = 1 : 3
                img_1c(cm==0) = fg(channel);
                img_1c(cm~=0) = bg(channel);
                img(:, :, channel) = img_1c;
            end
        end

        function show_charmap(self)
            figure;
            hold('on');
            axis('equal');
            colormap('gray');
            cmm = cell2mat(self.charmap);
            if max(cmm) <= 1
                coef = 255;
            else
                coef = 1;
            end

            for c = 1:255
                row = 8-floor((c) / 32);
                col = mod(c, 32);
                x = col*(self.w+2);
                y = row*(self.h+2);
                image(x+[0, self.w], y+[self.h, 0], self.charmap{uint32(c)}*coef);
            end
            hold('off')
        end
    end
end

