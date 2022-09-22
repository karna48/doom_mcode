classdef m_fixed
    % constants global - dependancy solution
    properties (Constant)
        FRACBITS = 16
        % 1 << FRACBITS
        FRACUNIT = bitshift(1, 16)
    end

    methods (Static = true)
        function r = FixedMul(a, b)
            r = int32(bitshift(int64(a)*int64(b), -m_fixed.FRACBITS));
        end

        function r = FixedDiv(a, b)
            if bitshift(abs(a), -14) >= abs(b)
                if bitxor(a, b) < 0
                    r = cg.MININT;
                    return
                else
                    r = cg.MAXINT;
                    return
                end
            else
                r = FixedDiv2(a, b);
            end
        end

        function r = FixedDiv2(a, b)
            c = double(a) / double(b) * F
            if (c >= 2147483648.0 || c < -2147483648.0)
	            error("FixedDiv: divide by zero");
            end
            r = int32(c);
        end
    end
end

