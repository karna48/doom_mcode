function name = keynames (doom_name)
    switch doom_name
        case 'KEY_BACKSPACE'
            if isoctave, name = 'backspace'; else name = 'bsp'; end

        %case 'KEY_'
    end

    fprintf(2, 'keynames TODO: %s', doom_name);
    name = 'xxxxx'
end

