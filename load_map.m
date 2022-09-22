function map=load_map(map)
    % TODO: containers.Map for sector_tag lookup

    map.VERTEXES = reshape(typecast(reshape(map.VERTEXES, [], 2), 'int16'), 2, []);
    linedefs = typecast(reshape(map.LINEDEFS, [], 2), 'uint16');
    map.LINEDEFS = struct('v0', [], 'v1', [], 'flags', [], 'special_type', [], 'sector_tag', [], 'right_sidedef', [], 'left_sidedef', []);
    j = 1;
    for i = 1:7:numel(linedefs)
        map.LINEDEFS(j).v0 = linedefs(i) + 1;
        map.LINEDEFS(j).v1 = linedefs(i+1) + 1;
        map.LINEDEFS(j).flags = linedefs(i+2);
        map.LINEDEFS(j).special_type = linedefs(i+3);
        map.LINEDEFS(j).sector_tag = linedefs(i+4);
        map.LINEDEFS(j).right_sidedef = linedefs(i+5);
        map.LINEDEFS(j).left_sidedef = linedefs(i+6);
        j = j + 1;
    end

    # 2	x offset
    # 2	y offset
    # 8	Name of upper texture
    # 8	Name of lower texture
    # 8	Name of middle texture
    # 2	Sector number this sidedef 'faces'

    sidedefs = map.SIDEDEFS;
    map.SIDEDEFS = struct('x', [], 'y', [], 'upper', [], 'lower', [], 'middle', [], 'sector_number', []);
    for i = 1 : numel(sidedefs) / 30
        offset = ((i-1)*30) + 1;
        map.SIDEDEFS(i).x = typecast(sidedefs(offset+[0:1]), 'int16');
        map.SIDEDEFS(i).y = typecast(sidedefs(offset+[2:3]), 'int16');
        map.SIDEDEFS(i).upper = char(sidedefs(offset+[4:11]));
        map.SIDEDEFS(i).lower = char(sidedefs(offset+[12:19]));
        map.SIDEDEFS(i).middle = char(sidedefs(offset+[20:27]));
        map.SIDEDEFS(i).sector = typecast(sidedefs(offset+[28:29]), 'uint16');
    end

#   0	2	Floor height
#   2	2	Ceiling height
#   4	8	Name of floor texture
#   12	8	Name of ceiling texture
#   20	2	Light level
#   22	2	Type
#   24	2	Tag number

    sectors = map.SECTORS;
    map.SECTORS = struct('floor_height', [], 'ceiling_height', [], 'floor', [], 'ceiling', [], 'light', [], 'type', [], 'tag', []);
    for i = 1 : numel(sectors) / 26
        offset = ((i-1)*26) + 1;
        map.SECTORS(i).floor_height = typecast(sectors(offset+[0:1]), 'uint16');
        map.SECTORS(i).ceiling_height = typecast(sectors(offset+[2:3]), 'uint16');
        map.SECTORS(i).floor = char(sectors(offset+[4:11]));
        map.SECTORS(i).ceiling = char(sectors(offset+[12:19]));
        map.SECTORS(i).light = typecast(sectors(offset+[20:21]), 'uint16');
        map.SECTORS(i).type = typecast(sectors(offset+[22:23]), 'uint16');
        map.SECTORS(i).tag = typecast(sectors(offset+[24:25]), 'uint16');
    end

end

