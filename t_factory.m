classdef t_factory
    methods (Static = true)

        function r = state_t(sprite, frame, tics, action_handle, nextstate, misc1, misc2)
            if ~strcmp(class(action_handle), 'function_handle')
                error('state_t.action_handle must be a function_handle')
            end
            r = struct('sprite', sprite,
                       'frame', int32(frame),
                       'tics', int32(tics),
                       'action_handle', action_handle,
                       'nextstate', nextstate);
        end

        function r = mobjinfo_t(doomednum, spawnstate, spawnhealth, seestate, seesound,
            reactiontime, attacksound, painstate, painchance, painsound,
            meleestate,	missilestate, deathstate, xdeathstate, deathsound,
            speed, radius, height, mass, damage, activesound, flags, raisestate)
            r = struct('doomednum', int32(doomednum), 'spawnstate', int32(spawnstate),
                    'spawnhealth', int32(spawnhealth), 'seestate', int32(seestate),
                    'seesound', int32(seesound), 'reactiontime', int32(reactiontime),
                    'attacksound', int32(attacksound), 'painstate', int32(painstate),
                    'painchance', int32(painchance), 'painsound', int32(painsound),
                    'meleestate', int32(meleestate), 'missilestate', int32(missilestate),
                    'deathstate', int32(deathstate), 'xdeathstate', int32(xdeathstate),
                    'deathsound', int32(deathsound), 'speed', int32(speed),
                    'radius', int32(radius), 'height', int32(height),
                    'mass', int32(mass), 'damage', int32(damage),
                    'activesound', int32(activesound), 'flags', int32(flags),
                    'raisestate', int32(raisestate))
        end

        function r = event_t(type, data1, data2, data3)
            r = struct('type', type, 'data1', int32(data1), 'data2', int32(data2), 'data3', int32(data3))
        end
    end
end
