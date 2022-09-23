classdef cg
    % constants global - main
    properties (Constant)

        %   -------------------------------------------------------------
        %   dstrings.h
        SAVEGAMENAME = "doomsav";
        DEVMAPS = "devmaps";
        DEVDATA = "devdata";
        NUM_QUITMESSAGES = 22;

        %   -------------------------------------------------------------
        % part of d_englsh.h, rest in cg2  : included from dstrings.h
        PRESSKEY  = 'Press a key.'
        PRESSYN  = 'Press y or n.'

        %   -------------------------------------------------------------
        %   doomtype.h : included from many
        MAXCHAR	= intmax('int8')
        MAXSHORT = intmax('int16')

        % Max pos 32-bit int.
        MAXINT = intmax('int32')
        MAXLONG	= intmax('int32')
        MINCHAR = intmin('int8')
        MINSHORT = intmin('int16')

        % Max negative 32-bit integer.
        MININT = intmin('int32')
        MINLONG = intmin('int32')

        %   -------------------------------------------------------------
        %   d_event.h
        % enum evtype_t
        ev_keydown = 0
        ev_keyup = 1
        ev_mouse = 2
        ev_joystick = 3

        % enum gameaction_t
        ga_nothing = 0
        ga_loadlevel = 1
        ga_newgame = 2
        ga_loadgame = 3
        ga_savegame = 4
        ga_playdemo = 5
        ga_completed = 6
        ga_victory = 7
        ga_worlddone = 8
        ga_screenshot = 9

        % enum buttoncode_t
        BT_ATTACK		= 1
        BT_USE		= 2
        BT_SPECIAL		= 128
        BT_SPECIALMASK	= 3
        BT_CHANGE		= 4
        BT_WEAPONMASK	= (8+16+32)
        BT_WEAPONSHIFT	= 3
        BTS_PAUSE		= 1
        BTS_SAVEGAME	= 2
        BTS_SAVEMASK	= (4+8+16)
        BTS_SAVESHIFT 	= 2
        MAXEVENTS = 64
        MAXWADFILES = 20

        %   -------------------------------------------------------------
        %   d_player.h
        % enum playerstate_t
        PST_LIVE = 0
        PST_DEAD = 1
        PST_REBORN = 2

        % enum cheat_t
        CF_NOCLIP		= 1  % No clipping, walk through barriers.
        CF_GODMODE		= 2  % No damage, no health loss.
        CF_NOMOMENTUM	= 4  % Not really a cheat, just a debug aid.

        %   -------------------------------------------------------------
        %   doomdata.h

        % NOTE: wad/map loader handles this from LUMP names
%        ML_LABEL = 0 % A separator, name, ExMx or MAPxx
%        ML_THINGS = 1 % Monsters, items..
%        ML_LINEDEFS = 2 % LineDefs, from editing
%        ML_SIDEDEFS = 3	%	% SideDefs, from editing
%        ML_VERTEXES = 4	%	% Vertices, edited and BSP splits generated
%        ML_SEGS = 5	%	% LineSegs, from LineDefs split by BSP
%        ML_SSECTORS = 6	%	% SubSectors, list of LineSegs
%        ML_NODES = 7	%	% BSP nodes
%        ML_SECTORS = 8	%	% Sectors, from editing
%        ML_REJECT = 9	%	% LUT, sector-sector visibility
%        ML_BLOCKMAP = 10	%	% LUT, motion clipping, walls/grid element

        ML_BLOCKING	=	1
        ML_BLOCKMONSTERS =	2
        ML_TWOSIDED	=	4
        ML_DONTPEGTOP =		8
        ML_DONTPEGBOTTOM =	16
        ML_SECRET	=	32
        ML_SOUNDBLOCK	=	64
        ML_DONTDRAW	=	128
        ML_MAPPED =		256

        NF_SUBSECTOR = 0x8000

        %   -------------------------------------------------------------
        %   doomdef.h
        % annonymous enum
        VERSION = 110

        % enum GameMode_t
        shareware = 0	% DOOM 1 shareware, E1, M9
        registered = 1 % DOOM 1 registered, E3, M27
        commercial = 2 % DOOM 2 retail, E1 M34
            % DOOM 2 german edition not handled
        retail = 3	% DOOM 1 retail, E4, M36
        indetermined = 4 % Well, no IWAD found

        % enum GameMission_t
        doom = 0 % DOOM 1
        doom2 = 1 % DOOM 2
        pack_tnt = 2 % TNT mission pack
        pack_plut = 3 % Plutonia pack
        none = 4

        BASE_WIDTH = 320
        SCREEN_MUL = 1
        INV_ASPECT_RATIO = 0.625 %  0.75, ideally

        SCREENWIDTH = 320
        SCREENHEIGHT = 200

        MAXPLAYERS = 4
        TICRATE = cg0.TICRATE

        % enum gamestate_t
        GS_LEVEL = 0
        GS_INTERMISSION = 1
        GS_FINALE = 2
        GS_DEMOSCREEN = 3

        MTF_EASY = 1
        MTF_NORMAL = 2
        MTF_HARD = 4

        MTF_AMBUSH = 8

        % enum skill_t
        sk_baby = 0
        sk_easy = 1
        sk_medium = 2
        sk_hard = 3
        sk_nightmare = 4

        % enum card_t
        it_bluecard = 0
        it_yellowcard = 1
        it_redcard = 2
        it_blueskull = 3
        it_yellowskull = 4
        it_redskull = 5
        NUMCARDS = 6

        % enum weapontype_t
        wp_fist = 0
        wp_pistol = 1
        wp_shotgun = 2
        wp_chaingun = 3
        wp_missile = 4
        wp_plasma = 5
        wp_bfg = 6
        wp_chainsaw = 7
        wp_supershotgun = 8
        NUMWEAPONS = 9
        wp_nochange = 10  % No pending weapon change.

        % enum ammotype_t
        am_clip = 0	 % Pistol / chaingun ammo.
        am_shell = 1 % Shotgun / double barreled shotgun.
        am_cell = 2	 % Plasma rifle, BFG.
        am_misl = 3	 % Missile launcher.
        NUMAMMO = 4
        am_noammo = 5 % Unlimited for chainsaw / fist.

        % enum powertype_t
        pw_invulnerability = 0
        pw_strength = 1
        pw_invisibility = 2
        pw_ironfeet = 3
        pw_allmap = 4
        pw_infrared = 5
        NUMPOWERS = 6

        % enum powerduration_t
        INVULNTICS	= (30*cg0.TICRATE)
        INVISTICS	= (60*cg0.TICRATE)
        INFRATICS	= (120*cg0.TICRATE)
        IRONTICS	= (60*cg0.TICRATE)

        %   -------------------------------------------------------------
        %   f_wipe.h
        % annonymous enum
        wipe_ColorXForm = 0
        wipe_Melt = 1
        wipe_NUMWIPES = 2

        %   -------------------------------------------------------------
        %   hu_lib.h
        BG = 1
        FG = 0
        HU_CHARERASE = keynames('KEY_BACKSPACE');
        HU_MAXLINES = 4
        HU_MAXLINELENGTH = 80

        %   -------------------------------------------------------------
        %   hu_stuff.h
        HU_FONTSTART = cg0.HU_FONTSTART	% the first font characters
        HU_FONTEND = cg0.HU_FONTEND	% the last font characters
        % Calculate # of glyphs in font.
        HU_FONTSIZE = (cg0.HU_FONTEND - cg0.HU_FONTSTART + 1)
        HU_BROADCAST =	5
        HU_MSGREFRESH =	keynames('KEY_ENTER')
        HU_MSGX = 0
        HU_MSGY	= 0
        HU_MSGWIDTH =	64	% in characters
        HU_MSGHEIGHT =	1	% in lines
        HU_MSGTIMEOUT =	(4*cg0.TICRATE)

        %   -------------------------------------------------------------
        %   m_bbox.h
        BOXTOP = 1
        BOXBOTTOM = 2
        BOXLEFT = 3
        BOXRIGHT = 4

        %   -------------------------------------------------------------
        %   p_local.h

        %   -------------------------------------------------------------
        %   p_mobj.h
        % enum mobjflag_t
        MF_SPECIAL		= 1
        MF_SOLID		= 2
        MF_SHOOTABLE	= 4
        MF_NOSECTOR		= 8
        MF_NOBLOCKMAP	= 16
        MF_AMBUSH		= 32
        MF_JUSTHIT		= 64
        MF_JUSTATTACKED	= 128
        MF_SPAWNCEILING	= 256
        MF_NOGRAVITY	= 512
        MF_DROPOFF		= 0x400
        MF_PICKUP		= 0x800
        MF_NOCLIP		= 0x1000
        MF_SLIDE		= 0x2000
        MF_FLOAT		= 0x4000
        MF_TELEPORT		= 0x8000
        MF_MISSILE		= 0x10000
        MF_DROPPED		= 0x20000
        MF_SHADOW		= 0x40000
        MF_NOBLOOD		= 0x80000
        MF_CORPSE		= 0x100000
        MF_INFLOAT		= 0x200000
        MF_COUNTKILL	= 0x400000
        MF_COUNTITEM	= 0x800000
        MF_SKULLFLY		= 0x1000000
        MF_NOTDMATCH   	= 0x2000000
        MF_TRANSLATION 	= 0xc000000
        MF_TRANSSHIFT	= 26

        %   -------------------------------------------------------------
        %   .h

        %   -------------------------------------------------------------
        %   .h


        %   -------------------------------------------------------------
        %   .h


        %   -------------------------------------------------------------
        %   .h


        %   -------------------------------------------------------------
        %   .h


        %   -------------------------------------------------------------
        %   sounds.h
        % musicenum_t
        mus_None = 0
        mus_e1m1 = 1
        mus_e1m2 = 2
        mus_e1m3 = 3
        mus_e1m4 = 4
        mus_e1m5 = 5
        mus_e1m6 = 6
        mus_e1m7 = 7
        mus_e1m8 = 8
        mus_e1m9 = 9
        mus_e2m1 = 10
        mus_e2m2 = 11
        mus_e2m3 = 12
        mus_e2m4 = 13
        mus_e2m5 = 14
        mus_e2m6 = 15
        mus_e2m7 = 16
        mus_e2m8 = 17
        mus_e2m9 = 18
        mus_e3m1 = 19
        mus_e3m2 = 20
        mus_e3m3 = 21
        mus_e3m4 = 22
        mus_e3m5 = 23
        mus_e3m6 = 24
        mus_e3m7 = 25
        mus_e3m8 = 26
        mus_e3m9 = 27
        mus_inter = 28
        mus_intro = 29
        mus_bunny = 30
        mus_victor = 31
        mus_introa = 32
        mus_runnin = 33
        mus_stalks = 34
        mus_countd = 35
        mus_betwee = 36
        mus_doom = 37
        mus_the_da = 38
        mus_shawn = 39
        mus_ddtblu = 40
        mus_in_cit = 41
        mus_dead = 42
        mus_stlks2 = 43
        mus_theda2 = 44
        mus_doom2 = 45
        mus_ddtbl2 = 46
        mus_runni2 = 47
        mus_dead2 = 48
        mus_stlks3 = 49
        mus_romero = 50
        mus_shawn2 = 51
        mus_messag = 52
        mus_count2 = 53
        mus_ddtbl3 = 54
        mus_ampie = 55
        mus_theda3 = 56
        mus_adrian = 57
        mus_messg2 = 58
        mus_romer2 = 59
        mus_tense = 60
        mus_shawn3 = 61
        mus_openin = 62
        mus_evil = 63
        mus_ultima = 64
        mus_read_m = 65
        mus_dm2ttl = 66
        mus_dm2int = 67
        NUMMUSIC = 68
        % sfxenum_t
        sfx_None = 0
        sfx_pistol = 1
        sfx_shotgn = 2
        sfx_sgcock = 3
        sfx_dshtgn = 4
        sfx_dbopn = 5
        sfx_dbcls = 6
        sfx_dbload = 7
        sfx_plasma = 8
        sfx_bfg = 9
        sfx_sawup = 10
        sfx_sawidl = 11
        sfx_sawful = 12
        sfx_sawhit = 13
        sfx_rlaunc = 14
        sfx_rxplod = 15
        sfx_firsht = 16
        sfx_firxpl = 17
        sfx_pstart = 18
        sfx_pstop = 19
        sfx_doropn = 20
        sfx_dorcls = 21
        sfx_stnmov = 22
        sfx_swtchn = 23
        sfx_swtchx = 24
        sfx_plpain = 25
        sfx_dmpain = 26
        sfx_popain = 27
        sfx_vipain = 28
        sfx_mnpain = 29
        sfx_pepain = 30
        sfx_slop = 31
        sfx_itemup = 32
        sfx_wpnup = 33
        sfx_oof = 34
        sfx_telept = 35
        sfx_posit1 = 36
        sfx_posit2 = 37
        sfx_posit3 = 38
        sfx_bgsit1 = 39
        sfx_bgsit2 = 40
        sfx_sgtsit = 41
        sfx_cacsit = 42
        sfx_brssit = 43
        sfx_cybsit = 44
        sfx_spisit = 45
        sfx_bspsit = 46
        sfx_kntsit = 47
        sfx_vilsit = 48
        sfx_mansit = 49
        sfx_pesit = 50
        sfx_sklatk = 51
        sfx_sgtatk = 52
        sfx_skepch = 53
        sfx_vilatk = 54
        sfx_claw = 55
        sfx_skeswg = 56
        sfx_pldeth = 57
        sfx_pdiehi = 58
        sfx_podth1 = 59
        sfx_podth2 = 60
        sfx_podth3 = 61
        sfx_bgdth1 = 62
        sfx_bgdth2 = 63
        sfx_sgtdth = 64
        sfx_cacdth = 65
        sfx_skldth = 66
        sfx_brsdth = 67
        sfx_cybdth = 68
        sfx_spidth = 69
        sfx_bspdth = 70
        sfx_vildth = 71
        sfx_kntdth = 72
        sfx_pedth = 73
        sfx_skedth = 74
        sfx_posact = 75
        sfx_bgact = 76
        sfx_dmact = 77
        sfx_bspact = 78
        sfx_bspwlk = 79
        sfx_vilact = 80
        sfx_noway = 81
        sfx_barexp = 82
        sfx_punch = 83
        sfx_hoof = 84
        sfx_metal = 85
        sfx_chgun = 86
        sfx_tink = 87
        sfx_bdopn = 88
        sfx_bdcls = 89
        sfx_itmbk = 90
        sfx_flame = 91
        sfx_flamst = 92
        sfx_getpow = 93
        sfx_bospit = 94
        sfx_boscub = 95
        sfx_bossit = 96
        sfx_bospn = 97
        sfx_bosdth = 98
        sfx_manatk = 99
        sfx_mandth = 100
        sfx_sssit = 101
        sfx_ssdth = 102
        sfx_keenpn = 103
        sfx_keendt = 104
        sfx_skeact = 105
        sfx_skesit = 106
        sfx_skeatk = 107
        sfx_radio = 108
        NUMSFX = 109


    end

    methods (Static = true)

    end
end
