clear all;
clear functions;

[lumps, maps, colors] = wad('DOOM1.WAD');
%    for fnc = fieldnames(lumps).'
%       fn = fnc{1};
%       fprintf("%s (%d B)\n", fn, numel(lumps.(fn)));
%    end

##figure(1)
##
##subplot(2,2,1)
##imagesc(colors.palletes)
##
##subplot(2,2,2)
##imagesc(reshape(colors.colormaps_pallette(1, :, :, :), [], 256, 3));
##title('colormaps of pallette 1');
##
##subplot(2,2,4)


figure(2)
ENDOOM = lumps.ENDOOM;
txt = ENDOOM(1:2:end);
fgbg = ENDOOM(2:2:end);

VGA_TXT_16c_cmap = double([0,0,0; 0,0,0xAA; 0,0xAA,0; 0,0xAA,0xAA; 0xAA,0,0; 0xAA,0,0xAA;
                    0xAA,0x55,0; 0xAA,0xAA,0xAA; 0x55,0x55,0x55; 0x55,0x55,0xFF; 0x55,0xFF,0x55;
                    0x55,0xFF,0xFF; 0xFF,0x55,0x55; 0xFF,0x55,0xFF; 0xFF,0xFF,0x55; 0xFF,0xFF,0xFF]) ...
                    / 255;

fm = fontmat('DOSVGATTF.png');
screen = zeros(fm.h*25, fm.w*80, 3);

for i = 0:length(txt)-1
    col = mod(i, 80);
    row = floor(i / 80);
    c = txt(i+1);

    fg = bitand(fgbg(i+1), 0x0F) + 1;
    bg = bitshift(bitand(fgbg(i+1), 0x70), -4) + 1;

    screen(1+row*fm.h:(row+1)*fm.h, 1+col*fm.w:(col+1)*fm.w, :) = fm.colored(c, VGA_TXT_16c_cmap(fg, :), VGA_TXT_16c_cmap(bg, :));

    if c == 223 || c == 220
        c = '■';
    elseif c == 196
        c = '—';
    end

    fprintf("%c", c);
    if col>=79
        fprintf("\n");
    end
end
imagesc(screen);
axis('equal')

%%% map E1M1
##figure(2)
##vtx = maps.E1M1.VERTEXES;
##hold('on')
##for ld = maps.E1M1.LINEDEFS
##    v0 = vtx(:, ld.v0);
##    v1 = vtx(:, ld.v1);
##    plot([v0(1), v1(1)], [v0(2), v1(2)], 'b-');
##end
##hold('off')
##axis('equal')

map = load_map(maps.E1M1);

figure(3);
clf;
hold('on');
for ldef_i = 1:length(map.LINEDEFS)
    ldef = map.LINEDEFS(ldef_i);
    plot_ldef (ldef, map, 15);
end
axis('equal');



sectors_sdefs = cell(1, length(map.SECTORS));
sectors_ldefs = cell(1, length(map.SECTORS));
for ldef_i = 1:length(map.LINEDEFS)
    ldef = map.LINEDEFS(ldef_i);
    for sdf_i = [ldef.right_sidedef, ldef.left_sidedef]
        if sdf_i ~= 65535
            sdf = map.SIDEDEFS(sdf_i+1);
            if sdf.sector ~= 65535
                si = sdf.sector+1;
                if isempty(sectors_ldefs{si})
                    sectors_ldefs{si} = {};
                end
                if isempty(sectors_sdefs{si})
                    sectors_sdefs{si} = {};
                end
                sectors_ldefs{si} = [sectors_ldefs{si}, ldef_i];
                sectors_sdefs{si} = [sectors_sdefs{si}, sdf_i];
            end
        end
    end
end

