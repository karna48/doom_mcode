% made with https://doom.fandom.com/wiki/WAD

function [lumps, maps, colors, gfx] = wad (filename)
    f = fopen(filename, 'rb');
    header = read_header(f);

    fprintf("Loading %s\n", filename);
    fprintf("  WAD type: %s\n", header.identification);
    fprintf("  lumps: %d\n", header.numlumps);

    dictionary = read_dictionary(f, header);
    fprintf("  total lumps size: %d B\n", sum(arrayfun(@(d)d.size, dictionary)));

    lumps = struct();
    maps = struct();

    map_name = 'NONE';

    inside_block = struct('flats', false, 'sprites', false);

    for entry = dictionary
        fseek(f, entry.filepos, SEEK_SET);
        data = fread(f, entry.size, "uint8=>uint8").';
        if is_a_map_name(entry.name)
            map_name = entry.name;
            maps.(map_name) = struct('name', map_name);
        end
        if is_standalone_lump(entry.name)
            lumps.(entry.name) = data;
        else
            maps.(map_name).(entry.name) = data;
        end
    end

    n_palletes = numel(lumps.PLAYPAL) / (256*3);
    palletes = zeros(n_palletes, 256, 3, 'uint8');
    for i = 1 : n_palletes
        offset = (i-1) * 256 * 3;
        palletes(i, :, :) = reshape(reshape(lumps.PLAYPAL(offset+1:offset+256*3), 3, 256).', 1, 256, 3);
    end

    colors.palletes = palletes;

    n_colormaps = numel(lumps.COLORMAP) / 256;
    colors.colormaps = reshape(lumps.COLORMAP, 256, n_colormaps).';

    colors.colormaps_pallette = zeros(n_palletes, n_colormaps, 256, 3);
    for p = 1 : n_palletes
        for i = 1 : n_colormaps
            for j = 1 : 256
                colors.colormaps_pallette(p, i, j, :) = palletes(p, colors.colormaps(i, j)+1, :);
            end
        end
    end

    fclose(f);
end

function [header] = read_header(f)
    % 0x00	4	identification	The ASCII characters "IWAD" or "PWAD". Defines whether the WAD is an IWAD or a PWAD.
    % 0x04	4	numlumps	An integer specifying the number of lumps in the WAD.
    % 0x08	4	infotableofs	An integer holding a pointer to the location of the directory.
    fseek(f, 0, SEEK_SET);

    header.identification = fread(f, 4, "char=>char").';
    header.numlumps = fread(f, 1, "int32=>int32");
    header.infotableofs = fread(f, 1, "int32=>int32");
end

function [dictionary] = read_dictionary(f, header)
    % 0x00	4	filepos	An integer holding a pointer to the start of the lump's data in the file.
    % 0x04	4	size	An integer representing the size of the lump in bytes.
    % 0x08	8	name	An ASCII string defining the lump's name.
    %   Only the characters A-Z (uppercase), 0-9, and [] - _
    %   should be used in lump names
    %   (an exception has to be made for some of the Arch-Vile sprites, which use "\").
    %   When a string is less than 8 bytes long, it should be null-padded to the tight byte.
    fseek(f, header.infotableofs, SEEK_SET);
    dictionary = struct('name', [], 'size', [], 'filepos', []);
    for i = 1 : header.numlumps
        dictionary(i).filepos = fread(f, 1, "int32=>int32");
        dictionary(i).size = fread(f, 1, "int32=>int32");
        dictionary(i).name = deblank(fread(f, 8, "char=>char").');
    end
end

function [r] = is_a_map_name(lump_name)
    is_doom1 = length(lump_name) == 4 ...
            && lump_name(1) == 'E' ...
            && isdigit(lump_name(2)) ...
            && lump_name(2) >= '1' ...
            && lump_name(2) <= '4' ...
            && lump_name(3) == 'M' ...
            && isdigit(lump_name(4)) ...
            && lump_name(4) >= '1'...
            && lump_name(4) <= '9';

    is_doom2 = length(lump_name) == 5 ...
            && strcmp(lump_name(1:3), 'MAP') ...
            && isdigit(lump_name(4)) ...
            && isdigit(lump_name(5))...
            && (lump_name(4)-'0')*10+(lump_name(5)-'0') >= 1 ...
            && (lump_name(4)-'0')*10+(lump_name(5)-'0') <= 32;

    r = is_doom1 || is_doom2;
end

function [r] = is_standalone_lump(lump_name)
    r = ~(strcmp(lump_name, 'THINGS') ...
       || strcmp(lump_name, 'LINEDEFS') ...
       || strcmp(lump_name, 'SIDEDEFS') ...
       || strcmp(lump_name, 'VERTEXES') ...
       || strcmp(lump_name, 'SEGS') ...
       || strcmp(lump_name, 'SSECTORS') ...
       || strcmp(lump_name, 'NODES') ...
       || strcmp(lump_name, 'SECTORS') ...
       || strcmp(lump_name, 'REJECT') ...
       || strcmp(lump_name, 'BLOCKMAP') ...
       || strcmp(lump_name, 'BEHAVIOR') ...
       );
end

