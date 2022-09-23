classdef doom < handle
    properties
        wadfiles  % cell of char
        devparm
        nomonsters
        respawnparm
        fastparm
        drone
        singletics

        inhelpscreens
        startskill  % skill_t
        startepisode
        startmap
        autostart

        debugfile  % filehandle
        advancedemo

        basedefault

        events_
        eventhead
        eventtail

        gamemode
        gamemission

        modifiedgame
        wipegamestate
        setsizeneeded
        showMessages
    end

    methods
        function self = doom(varargin)
            self.singletics = false;
            self.eventhead = 1;
            self.eventtail = 1;
            for i = 1:cg.MAX_EVENTS
                self.events_(i) = t_factory.event_t(0, 0, 0, 0)
            end
            self.gamemode = cg.indetermined;
            self.gamemission = cg.doom;
            modifiedgame = false;
            wipegamestate = cg.GS_DEMOSCREEN
        end

        function D_PostEvent (self, ev)
            self.events_(self.eventhead) = ev;
            self.eventhead = mod(self.eventhead, cg.MAX_EVENTS)+1;
        end

        function D_ProcessEvents(self)
            if self.game == commercial && W_CheckNumForName("map01")<0
                return  %  // IF STORE DEMO, DO NOT ACCEPT INPUT
            end

            while self.eventtail != self.eventhead
                ev = events_(eventtail);
                if (M_Responder (ev))
                    continue; % // menu ate the event
                G_Responder (ev);
                self.eventtail = mod(self.eventtail, cg.MAX_EVENTS)+1;
            end
        end
    end
end

