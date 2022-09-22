function h = plot_ldef (ldef, map, tickLen)
    v0 = map.VERTEXES(:, ldef.v0);
    v1 = map.VERTEXES(:, ldef.v1);

    V = v1 - v0;
    S = v0 + 0.9 * V;
    Vn = [V(2); -V(1)];
    l = sqrt(Vn.^2);

    S2 = S + tickLen*Vn./l;

    h = plot([v0(1), v1(1)], [v0(2), v1(2)], 'k-', [S(1), S2(1)], [S(2), S2(2)], 'k-');
end
