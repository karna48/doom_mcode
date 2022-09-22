classdef info_h0
    % info.h; info.c
    % helper util_infogen.py used
    properties (Constant)
        % spritenum_t
        SPR_TROO = 0
        SPR_SHTG = 1
        SPR_PUNG = 2
        SPR_PISG = 3
        SPR_PISF = 4
        SPR_SHTF = 5
        SPR_SHT2 = 6
        SPR_CHGG = 7
        SPR_CHGF = 8
        SPR_MISG = 9
        SPR_MISF = 10
        SPR_SAWG = 11
        SPR_PLSG = 12
        SPR_PLSF = 13
        SPR_BFGG = 14
        SPR_BFGF = 15
        SPR_BLUD = 16
        SPR_PUFF = 17
        SPR_BAL1 = 18
        SPR_BAL2 = 19
        SPR_PLSS = 20
        SPR_PLSE = 21
        SPR_MISL = 22
        SPR_BFS1 = 23
        SPR_BFE1 = 24
        SPR_BFE2 = 25
        SPR_TFOG = 26
        SPR_IFOG = 27
        SPR_PLAY = 28
        SPR_POSS = 29
        SPR_SPOS = 30
        SPR_VILE = 31
        SPR_FIRE = 32
        SPR_FATB = 33
        SPR_FBXP = 34
        SPR_SKEL = 35
        SPR_MANF = 36
        SPR_FATT = 37
        SPR_CPOS = 38
        SPR_SARG = 39
        SPR_HEAD = 40
        SPR_BAL7 = 41
        SPR_BOSS = 42
        SPR_BOS2 = 43
        SPR_SKUL = 44
        SPR_SPID = 45
        SPR_BSPI = 46
        SPR_APLS = 47
        SPR_APBX = 48
        SPR_CYBR = 49
        SPR_PAIN = 50
        SPR_SSWV = 51
        SPR_KEEN = 52
        SPR_BBRN = 53
        SPR_BOSF = 54
        SPR_ARM1 = 55
        SPR_ARM2 = 56
        SPR_BAR1 = 57
        SPR_BEXP = 58
        SPR_FCAN = 59
        SPR_BON1 = 60
        SPR_BON2 = 61
        SPR_BKEY = 62
        SPR_RKEY = 63
        SPR_YKEY = 64
        SPR_BSKU = 65
        SPR_RSKU = 66
        SPR_YSKU = 67
        SPR_STIM = 68
        SPR_MEDI = 69
        SPR_SOUL = 70
        SPR_PINV = 71
        SPR_PSTR = 72
        SPR_PINS = 73
        SPR_MEGA = 74
        SPR_SUIT = 75
        SPR_PMAP = 76
        SPR_PVIS = 77
        SPR_CLIP = 78
        SPR_AMMO = 79
        SPR_ROCK = 80
        SPR_BROK = 81
        SPR_CELL = 82
        SPR_CELP = 83
        SPR_SHEL = 84
        SPR_SBOX = 85
        SPR_BPAK = 86
        SPR_BFUG = 87
        SPR_MGUN = 88
        SPR_CSAW = 89
        SPR_LAUN = 90
        SPR_PLAS = 91
        SPR_SHOT = 92
        SPR_SGN2 = 93
        SPR_COLU = 94
        SPR_SMT2 = 95
        SPR_GOR1 = 96
        SPR_POL2 = 97
        SPR_POL5 = 98
        SPR_POL4 = 99
        SPR_POL3 = 100
        SPR_POL1 = 101
        SPR_POL6 = 102
        SPR_GOR2 = 103
        SPR_GOR3 = 104
        SPR_GOR4 = 105
        SPR_GOR5 = 106
        SPR_SMIT = 107
        SPR_COL1 = 108
        SPR_COL2 = 109
        SPR_COL3 = 110
        SPR_COL4 = 111
        SPR_CAND = 112
        SPR_CBRA = 113
        SPR_COL6 = 114
        SPR_TRE1 = 115
        SPR_TRE2 = 116
        SPR_ELEC = 117
        SPR_CEYE = 118
        SPR_FSKU = 119
        SPR_COL5 = 120
        SPR_TBLU = 121
        SPR_TGRN = 122
        SPR_TRED = 123
        SPR_SMBT = 124
        SPR_SMGT = 125
        SPR_SMRT = 126
        SPR_HDB1 = 127
        SPR_HDB2 = 128
        SPR_HDB3 = 129
        SPR_HDB4 = 130
        SPR_HDB5 = 131
        SPR_HDB6 = 132
        SPR_POB1 = 133
        SPR_POB2 = 134
        SPR_BRS1 = 135
        SPR_TLMP = 136
        SPR_TLP2 = 137
        NUMSPRITES = 138
        % statenum_t
        S_NULL = 0
        S_LIGHTDONE = 1
        S_PUNCH = 2
        S_PUNCHDOWN = 3
        S_PUNCHUP = 4
        S_PUNCH1 = 5
        S_PUNCH2 = 6
        S_PUNCH3 = 7
        S_PUNCH4 = 8
        S_PUNCH5 = 9
        S_PISTOL = 10
        S_PISTOLDOWN = 11
        S_PISTOLUP = 12
        S_PISTOL1 = 13
        S_PISTOL2 = 14
        S_PISTOL3 = 15
        S_PISTOL4 = 16
        S_PISTOLFLASH = 17
        S_SGUN = 18
        S_SGUNDOWN = 19
        S_SGUNUP = 20
        S_SGUN1 = 21
        S_SGUN2 = 22
        S_SGUN3 = 23
        S_SGUN4 = 24
        S_SGUN5 = 25
        S_SGUN6 = 26
        S_SGUN7 = 27
        S_SGUN8 = 28
        S_SGUN9 = 29
        S_SGUNFLASH1 = 30
        S_SGUNFLASH2 = 31
        S_DSGUN = 32
        S_DSGUNDOWN = 33
        S_DSGUNUP = 34
        S_DSGUN1 = 35
        S_DSGUN2 = 36
        S_DSGUN3 = 37
        S_DSGUN4 = 38
        S_DSGUN5 = 39
        S_DSGUN6 = 40
        S_DSGUN7 = 41
        S_DSGUN8 = 42
        S_DSGUN9 = 43
        S_DSGUN10 = 44
        S_DSNR1 = 45
        S_DSNR2 = 46
        S_DSGUNFLASH1 = 47
        S_DSGUNFLASH2 = 48
        S_CHAIN = 49
        S_CHAINDOWN = 50
        S_CHAINUP = 51
        S_CHAIN1 = 52
        S_CHAIN2 = 53
        S_CHAIN3 = 54
        S_CHAINFLASH1 = 55
        S_CHAINFLASH2 = 56
        S_MISSILE = 57
        S_MISSILEDOWN = 58
        S_MISSILEUP = 59
        S_MISSILE1 = 60
        S_MISSILE2 = 61
        S_MISSILE3 = 62
        S_MISSILEFLASH1 = 63
        S_MISSILEFLASH2 = 64
        S_MISSILEFLASH3 = 65
        S_MISSILEFLASH4 = 66
        S_SAW = 67
        S_SAWB = 68
        S_SAWDOWN = 69
        S_SAWUP = 70
        S_SAW1 = 71
        S_SAW2 = 72
        S_SAW3 = 73
        S_PLASMA = 74
        S_PLASMADOWN = 75
        S_PLASMAUP = 76
        S_PLASMA1 = 77
        S_PLASMA2 = 78
        S_PLASMAFLASH1 = 79
        S_PLASMAFLASH2 = 80
        S_BFG = 81
        S_BFGDOWN = 82
        S_BFGUP = 83
        S_BFG1 = 84
        S_BFG2 = 85
        S_BFG3 = 86
        S_BFG4 = 87
        S_BFGFLASH1 = 88
        S_BFGFLASH2 = 89
        S_BLOOD1 = 90
        S_BLOOD2 = 91
        S_BLOOD3 = 92
        S_PUFF1 = 93
        S_PUFF2 = 94
        S_PUFF3 = 95
        S_PUFF4 = 96
        S_TBALL1 = 97
        S_TBALL2 = 98
        S_TBALLX1 = 99
        S_TBALLX2 = 100
        S_TBALLX3 = 101
        S_RBALL1 = 102
        S_RBALL2 = 103
        S_RBALLX1 = 104
        S_RBALLX2 = 105
        S_RBALLX3 = 106
        S_PLASBALL = 107
        S_PLASBALL2 = 108
        S_PLASEXP = 109
        S_PLASEXP2 = 110
        S_PLASEXP3 = 111
        S_PLASEXP4 = 112
        S_PLASEXP5 = 113
        S_ROCKET = 114
        S_BFGSHOT = 115
        S_BFGSHOT2 = 116
        S_BFGLAND = 117
        S_BFGLAND2 = 118
        S_BFGLAND3 = 119
        S_BFGLAND4 = 120
        S_BFGLAND5 = 121
        S_BFGLAND6 = 122
        S_BFGEXP = 123
        S_BFGEXP2 = 124
        S_BFGEXP3 = 125
        S_BFGEXP4 = 126
        S_EXPLODE1 = 127
        S_EXPLODE2 = 128
        S_EXPLODE3 = 129
        S_TFOG = 130
        S_TFOG01 = 131
        S_TFOG02 = 132
        S_TFOG2 = 133
        S_TFOG3 = 134
        S_TFOG4 = 135
        S_TFOG5 = 136
        S_TFOG6 = 137
        S_TFOG7 = 138
        S_TFOG8 = 139
        S_TFOG9 = 140
        S_TFOG10 = 141
        S_IFOG = 142
        S_IFOG01 = 143
        S_IFOG02 = 144
        S_IFOG2 = 145
        S_IFOG3 = 146
        S_IFOG4 = 147
        S_IFOG5 = 148
        S_PLAY = 149
        S_PLAY_RUN1 = 150
        S_PLAY_RUN2 = 151
        S_PLAY_RUN3 = 152
        S_PLAY_RUN4 = 153
        S_PLAY_ATK1 = 154
        S_PLAY_ATK2 = 155
        S_PLAY_PAIN = 156
        S_PLAY_PAIN2 = 157
        S_PLAY_DIE1 = 158
        S_PLAY_DIE2 = 159
        S_PLAY_DIE3 = 160
        S_PLAY_DIE4 = 161
        S_PLAY_DIE5 = 162
        S_PLAY_DIE6 = 163
        S_PLAY_DIE7 = 164
        S_PLAY_XDIE1 = 165
        S_PLAY_XDIE2 = 166
        S_PLAY_XDIE3 = 167
        S_PLAY_XDIE4 = 168
        S_PLAY_XDIE5 = 169
        S_PLAY_XDIE6 = 170
        S_PLAY_XDIE7 = 171
        S_PLAY_XDIE8 = 172
        S_PLAY_XDIE9 = 173
        S_POSS_STND = 174
        S_POSS_STND2 = 175
        S_POSS_RUN1 = 176
        S_POSS_RUN2 = 177
        S_POSS_RUN3 = 178
        S_POSS_RUN4 = 179
        S_POSS_RUN5 = 180
        S_POSS_RUN6 = 181
        S_POSS_RUN7 = 182
        S_POSS_RUN8 = 183
        S_POSS_ATK1 = 184
        S_POSS_ATK2 = 185
        S_POSS_ATK3 = 186
        S_POSS_PAIN = 187
        S_POSS_PAIN2 = 188
        S_POSS_DIE1 = 189
        S_POSS_DIE2 = 190
        S_POSS_DIE3 = 191
        S_POSS_DIE4 = 192
        S_POSS_DIE5 = 193
        S_POSS_XDIE1 = 194
        S_POSS_XDIE2 = 195
        S_POSS_XDIE3 = 196
        S_POSS_XDIE4 = 197
        S_POSS_XDIE5 = 198
        S_POSS_XDIE6 = 199
        S_POSS_XDIE7 = 200
        S_POSS_XDIE8 = 201
        S_POSS_XDIE9 = 202
        S_POSS_RAISE1 = 203
        S_POSS_RAISE2 = 204
        S_POSS_RAISE3 = 205
        S_POSS_RAISE4 = 206
        S_SPOS_STND = 207
        S_SPOS_STND2 = 208
        S_SPOS_RUN1 = 209
        S_SPOS_RUN2 = 210
        S_SPOS_RUN3 = 211
        S_SPOS_RUN4 = 212
        S_SPOS_RUN5 = 213
        S_SPOS_RUN6 = 214
        S_SPOS_RUN7 = 215
        S_SPOS_RUN8 = 216
        S_SPOS_ATK1 = 217
        S_SPOS_ATK2 = 218
        S_SPOS_ATK3 = 219
        S_SPOS_PAIN = 220
        S_SPOS_PAIN2 = 221
        S_SPOS_DIE1 = 222
        S_SPOS_DIE2 = 223
        S_SPOS_DIE3 = 224
        S_SPOS_DIE4 = 225
        S_SPOS_DIE5 = 226
        S_SPOS_XDIE1 = 227
        S_SPOS_XDIE2 = 228
        S_SPOS_XDIE3 = 229
        S_SPOS_XDIE4 = 230
        S_SPOS_XDIE5 = 231
        S_SPOS_XDIE6 = 232
        S_SPOS_XDIE7 = 233
        S_SPOS_XDIE8 = 234
        S_SPOS_XDIE9 = 235
        S_SPOS_RAISE1 = 236
        S_SPOS_RAISE2 = 237
        S_SPOS_RAISE3 = 238
        S_SPOS_RAISE4 = 239
        S_SPOS_RAISE5 = 240
        S_VILE_STND = 241
        S_VILE_STND2 = 242
        S_VILE_RUN1 = 243
        S_VILE_RUN2 = 244
        S_VILE_RUN3 = 245
        S_VILE_RUN4 = 246
        S_VILE_RUN5 = 247
        S_VILE_RUN6 = 248
        S_VILE_RUN7 = 249
        S_VILE_RUN8 = 250
        S_VILE_RUN9 = 251
        S_VILE_RUN10 = 252
        S_VILE_RUN11 = 253
        S_VILE_RUN12 = 254
        S_VILE_ATK1 = 255
        S_VILE_ATK2 = 256
        S_VILE_ATK3 = 257
        S_VILE_ATK4 = 258
        S_VILE_ATK5 = 259
        S_VILE_ATK6 = 260
        S_VILE_ATK7 = 261
        S_VILE_ATK8 = 262
        S_VILE_ATK9 = 263
        S_VILE_ATK10 = 264
        S_VILE_ATK11 = 265
        S_VILE_HEAL1 = 266
        S_VILE_HEAL2 = 267
        S_VILE_HEAL3 = 268
        S_VILE_PAIN = 269
        S_VILE_PAIN2 = 270
        S_VILE_DIE1 = 271
        S_VILE_DIE2 = 272
        S_VILE_DIE3 = 273
        S_VILE_DIE4 = 274
        S_VILE_DIE5 = 275
        S_VILE_DIE6 = 276
        S_VILE_DIE7 = 277
        S_VILE_DIE8 = 278
        S_VILE_DIE9 = 279
        S_VILE_DIE10 = 280
        S_FIRE1 = 281
        S_FIRE2 = 282
        S_FIRE3 = 283
        S_FIRE4 = 284
        S_FIRE5 = 285
        S_FIRE6 = 286
        S_FIRE7 = 287
        S_FIRE8 = 288
        S_FIRE9 = 289
        S_FIRE10 = 290
        S_FIRE11 = 291
        S_FIRE12 = 292
        S_FIRE13 = 293
        S_FIRE14 = 294
        S_FIRE15 = 295
        S_FIRE16 = 296
        S_FIRE17 = 297
        S_FIRE18 = 298
        S_FIRE19 = 299
        S_FIRE20 = 300
        S_FIRE21 = 301
        S_FIRE22 = 302
        S_FIRE23 = 303
        S_FIRE24 = 304
        S_FIRE25 = 305
        S_FIRE26 = 306
        S_FIRE27 = 307
        S_FIRE28 = 308
        S_FIRE29 = 309
        S_FIRE30 = 310
        S_SMOKE1 = 311
        S_SMOKE2 = 312
        S_SMOKE3 = 313
        S_SMOKE4 = 314
        S_SMOKE5 = 315
        S_TRACER = 316
        S_TRACER2 = 317
        S_TRACEEXP1 = 318
        S_TRACEEXP2 = 319
        S_TRACEEXP3 = 320
        S_SKEL_STND = 321
        S_SKEL_STND2 = 322
        S_SKEL_RUN1 = 323
        S_SKEL_RUN2 = 324
        S_SKEL_RUN3 = 325
        S_SKEL_RUN4 = 326
        S_SKEL_RUN5 = 327
        S_SKEL_RUN6 = 328
        S_SKEL_RUN7 = 329
        S_SKEL_RUN8 = 330
        S_SKEL_RUN9 = 331
        S_SKEL_RUN10 = 332
        S_SKEL_RUN11 = 333
        S_SKEL_RUN12 = 334
        S_SKEL_FIST1 = 335
        S_SKEL_FIST2 = 336
        S_SKEL_FIST3 = 337
        S_SKEL_FIST4 = 338
        S_SKEL_MISS1 = 339
        S_SKEL_MISS2 = 340
        S_SKEL_MISS3 = 341
        S_SKEL_MISS4 = 342
        S_SKEL_PAIN = 343
        S_SKEL_PAIN2 = 344
        S_SKEL_DIE1 = 345
        S_SKEL_DIE2 = 346
        S_SKEL_DIE3 = 347
        S_SKEL_DIE4 = 348
        S_SKEL_DIE5 = 349
        S_SKEL_DIE6 = 350
        S_SKEL_RAISE1 = 351
        S_SKEL_RAISE2 = 352
        S_SKEL_RAISE3 = 353
        S_SKEL_RAISE4 = 354
        S_SKEL_RAISE5 = 355
        S_SKEL_RAISE6 = 356
        S_FATSHOT1 = 357
        S_FATSHOT2 = 358
        S_FATSHOTX1 = 359
        S_FATSHOTX2 = 360
        S_FATSHOTX3 = 361
        S_FATT_STND = 362
        S_FATT_STND2 = 363
        S_FATT_RUN1 = 364
        S_FATT_RUN2 = 365
        S_FATT_RUN3 = 366
        S_FATT_RUN4 = 367
        S_FATT_RUN5 = 368
        S_FATT_RUN6 = 369
        S_FATT_RUN7 = 370
        S_FATT_RUN8 = 371
        S_FATT_RUN9 = 372
        S_FATT_RUN10 = 373
        S_FATT_RUN11 = 374
        S_FATT_RUN12 = 375
        S_FATT_ATK1 = 376
        S_FATT_ATK2 = 377
        S_FATT_ATK3 = 378
        S_FATT_ATK4 = 379
        S_FATT_ATK5 = 380
        S_FATT_ATK6 = 381
        S_FATT_ATK7 = 382
        S_FATT_ATK8 = 383
        S_FATT_ATK9 = 384
        S_FATT_ATK10 = 385
        S_FATT_PAIN = 386
        S_FATT_PAIN2 = 387
        S_FATT_DIE1 = 388
        S_FATT_DIE2 = 389
        S_FATT_DIE3 = 390
        S_FATT_DIE4 = 391
        S_FATT_DIE5 = 392
        S_FATT_DIE6 = 393
        S_FATT_DIE7 = 394
        S_FATT_DIE8 = 395
        S_FATT_DIE9 = 396
        S_FATT_DIE10 = 397
        S_FATT_RAISE1 = 398
        S_FATT_RAISE2 = 399
        S_FATT_RAISE3 = 400
        S_FATT_RAISE4 = 401
        S_FATT_RAISE5 = 402
        S_FATT_RAISE6 = 403
        S_FATT_RAISE7 = 404
        S_FATT_RAISE8 = 405
        S_CPOS_STND = 406
        S_CPOS_STND2 = 407
        S_CPOS_RUN1 = 408
        S_CPOS_RUN2 = 409
        S_CPOS_RUN3 = 410
        S_CPOS_RUN4 = 411
        S_CPOS_RUN5 = 412
        S_CPOS_RUN6 = 413
        S_CPOS_RUN7 = 414
        S_CPOS_RUN8 = 415
        S_CPOS_ATK1 = 416
        S_CPOS_ATK2 = 417
        S_CPOS_ATK3 = 418
        S_CPOS_ATK4 = 419
        S_CPOS_PAIN = 420
        S_CPOS_PAIN2 = 421
        S_CPOS_DIE1 = 422
        S_CPOS_DIE2 = 423
        S_CPOS_DIE3 = 424
        S_CPOS_DIE4 = 425
        S_CPOS_DIE5 = 426
        S_CPOS_DIE6 = 427
        S_CPOS_DIE7 = 428
        S_CPOS_XDIE1 = 429
        S_CPOS_XDIE2 = 430
        S_CPOS_XDIE3 = 431
        S_CPOS_XDIE4 = 432
        S_CPOS_XDIE5 = 433
        S_CPOS_XDIE6 = 434
        S_CPOS_RAISE1 = 435
        S_CPOS_RAISE2 = 436
        S_CPOS_RAISE3 = 437
        S_CPOS_RAISE4 = 438
        S_CPOS_RAISE5 = 439
        S_CPOS_RAISE6 = 440
        S_CPOS_RAISE7 = 441
        S_TROO_STND = 442
        S_TROO_STND2 = 443
        S_TROO_RUN1 = 444
        S_TROO_RUN2 = 445
        S_TROO_RUN3 = 446
        S_TROO_RUN4 = 447
        S_TROO_RUN5 = 448
        S_TROO_RUN6 = 449
        S_TROO_RUN7 = 450
        S_TROO_RUN8 = 451
        S_TROO_ATK1 = 452
        S_TROO_ATK2 = 453
        S_TROO_ATK3 = 454
        S_TROO_PAIN = 455
        S_TROO_PAIN2 = 456
        S_TROO_DIE1 = 457
        S_TROO_DIE2 = 458
        S_TROO_DIE3 = 459
        S_TROO_DIE4 = 460
        S_TROO_DIE5 = 461
        S_TROO_XDIE1 = 462
        S_TROO_XDIE2 = 463
        S_TROO_XDIE3 = 464
        S_TROO_XDIE4 = 465
        S_TROO_XDIE5 = 466
        S_TROO_XDIE6 = 467
        S_TROO_XDIE7 = 468
        S_TROO_XDIE8 = 469
        S_TROO_RAISE1 = 470
        S_TROO_RAISE2 = 471
        S_TROO_RAISE3 = 472
        S_TROO_RAISE4 = 473
        S_TROO_RAISE5 = 474
        S_SARG_STND = 475
        S_SARG_STND2 = 476
        S_SARG_RUN1 = 477
        S_SARG_RUN2 = 478
        S_SARG_RUN3 = 479
        S_SARG_RUN4 = 480
        S_SARG_RUN5 = 481
        S_SARG_RUN6 = 482
        S_SARG_RUN7 = 483
        S_SARG_RUN8 = 484
        S_SARG_ATK1 = 485
        S_SARG_ATK2 = 486
        S_SARG_ATK3 = 487
        S_SARG_PAIN = 488
        S_SARG_PAIN2 = 489
        S_SARG_DIE1 = 490
        S_SARG_DIE2 = 491
        S_SARG_DIE3 = 492
        S_SARG_DIE4 = 493
        S_SARG_DIE5 = 494
        S_SARG_DIE6 = 495
        S_SARG_RAISE1 = 496
        S_SARG_RAISE2 = 497
        S_SARG_RAISE3 = 498
        S_SARG_RAISE4 = 499
        S_SARG_RAISE5 = 500
        S_SARG_RAISE6 = 501
        S_HEAD_STND = 502
        S_HEAD_RUN1 = 503
        S_HEAD_ATK1 = 504
        S_HEAD_ATK2 = 505
        S_HEAD_ATK3 = 506
        S_HEAD_PAIN = 507
        S_HEAD_PAIN2 = 508
        S_HEAD_PAIN3 = 509
        S_HEAD_DIE1 = 510
        S_HEAD_DIE2 = 511
        S_HEAD_DIE3 = 512
        S_HEAD_DIE4 = 513
        S_HEAD_DIE5 = 514
        S_HEAD_DIE6 = 515
        S_HEAD_RAISE1 = 516
        S_HEAD_RAISE2 = 517
        S_HEAD_RAISE3 = 518
        S_HEAD_RAISE4 = 519
        S_HEAD_RAISE5 = 520
        S_HEAD_RAISE6 = 521
        S_BRBALL1 = 522
        S_BRBALL2 = 523
        S_BRBALLX1 = 524
        S_BRBALLX2 = 525
        S_BRBALLX3 = 526
        S_BOSS_STND = 527
        S_BOSS_STND2 = 528
        S_BOSS_RUN1 = 529
        S_BOSS_RUN2 = 530
        S_BOSS_RUN3 = 531
        S_BOSS_RUN4 = 532
        S_BOSS_RUN5 = 533
        S_BOSS_RUN6 = 534
        S_BOSS_RUN7 = 535
        S_BOSS_RUN8 = 536
        S_BOSS_ATK1 = 537
        S_BOSS_ATK2 = 538
        S_BOSS_ATK3 = 539
        S_BOSS_PAIN = 540
        S_BOSS_PAIN2 = 541
        S_BOSS_DIE1 = 542
        S_BOSS_DIE2 = 543
        S_BOSS_DIE3 = 544
        S_BOSS_DIE4 = 545
        S_BOSS_DIE5 = 546
        S_BOSS_DIE6 = 547
        S_BOSS_DIE7 = 548
        S_BOSS_RAISE1 = 549
        S_BOSS_RAISE2 = 550
        S_BOSS_RAISE3 = 551
        S_BOSS_RAISE4 = 552
        S_BOSS_RAISE5 = 553
        S_BOSS_RAISE6 = 554
        S_BOSS_RAISE7 = 555
        S_BOS2_STND = 556
        S_BOS2_STND2 = 557
        S_BOS2_RUN1 = 558
        S_BOS2_RUN2 = 559
        S_BOS2_RUN3 = 560
        S_BOS2_RUN4 = 561
        S_BOS2_RUN5 = 562
        S_BOS2_RUN6 = 563
        S_BOS2_RUN7 = 564
        S_BOS2_RUN8 = 565
        S_BOS2_ATK1 = 566
        S_BOS2_ATK2 = 567
        S_BOS2_ATK3 = 568
        S_BOS2_PAIN = 569
        S_BOS2_PAIN2 = 570
        S_BOS2_DIE1 = 571
        S_BOS2_DIE2 = 572
        S_BOS2_DIE3 = 573
        S_BOS2_DIE4 = 574
        S_BOS2_DIE5 = 575
        S_BOS2_DIE6 = 576
        S_BOS2_DIE7 = 577
        S_BOS2_RAISE1 = 578
        S_BOS2_RAISE2 = 579
        S_BOS2_RAISE3 = 580
        S_BOS2_RAISE4 = 581
        S_BOS2_RAISE5 = 582
        S_BOS2_RAISE6 = 583
        S_BOS2_RAISE7 = 584
        S_SKULL_STND = 585
        S_SKULL_STND2 = 586
        S_SKULL_RUN1 = 587
        S_SKULL_RUN2 = 588
        S_SKULL_ATK1 = 589
        S_SKULL_ATK2 = 590
        S_SKULL_ATK3 = 591
        S_SKULL_ATK4 = 592
        S_SKULL_PAIN = 593
        S_SKULL_PAIN2 = 594
        S_SKULL_DIE1 = 595
        S_SKULL_DIE2 = 596
        S_SKULL_DIE3 = 597
        S_SKULL_DIE4 = 598
        S_SKULL_DIE5 = 599
        S_SKULL_DIE6 = 600
        S_SPID_STND = 601
        S_SPID_STND2 = 602
        S_SPID_RUN1 = 603
        S_SPID_RUN2 = 604
        S_SPID_RUN3 = 605
        S_SPID_RUN4 = 606
        S_SPID_RUN5 = 607
        S_SPID_RUN6 = 608
        S_SPID_RUN7 = 609
        S_SPID_RUN8 = 610
        S_SPID_RUN9 = 611
        S_SPID_RUN10 = 612
        S_SPID_RUN11 = 613
        S_SPID_RUN12 = 614
        S_SPID_ATK1 = 615
        S_SPID_ATK2 = 616
        S_SPID_ATK3 = 617
        S_SPID_ATK4 = 618
        S_SPID_PAIN = 619
        S_SPID_PAIN2 = 620
        S_SPID_DIE1 = 621
        S_SPID_DIE2 = 622
        S_SPID_DIE3 = 623
        S_SPID_DIE4 = 624
        S_SPID_DIE5 = 625
        S_SPID_DIE6 = 626
        S_SPID_DIE7 = 627
        S_SPID_DIE8 = 628
        S_SPID_DIE9 = 629
        S_SPID_DIE10 = 630
        S_SPID_DIE11 = 631
        S_BSPI_STND = 632
        S_BSPI_STND2 = 633
        S_BSPI_SIGHT = 634
        S_BSPI_RUN1 = 635
        S_BSPI_RUN2 = 636
        S_BSPI_RUN3 = 637
        S_BSPI_RUN4 = 638
        S_BSPI_RUN5 = 639
        S_BSPI_RUN6 = 640
        S_BSPI_RUN7 = 641
        S_BSPI_RUN8 = 642
        S_BSPI_RUN9 = 643
        S_BSPI_RUN10 = 644
        S_BSPI_RUN11 = 645
        S_BSPI_RUN12 = 646
        S_BSPI_ATK1 = 647
        S_BSPI_ATK2 = 648
        S_BSPI_ATK3 = 649
        S_BSPI_ATK4 = 650
        S_BSPI_PAIN = 651
        S_BSPI_PAIN2 = 652
        S_BSPI_DIE1 = 653
        S_BSPI_DIE2 = 654
        S_BSPI_DIE3 = 655
        S_BSPI_DIE4 = 656
        S_BSPI_DIE5 = 657
        S_BSPI_DIE6 = 658
        S_BSPI_DIE7 = 659
        S_BSPI_RAISE1 = 660
        S_BSPI_RAISE2 = 661
        S_BSPI_RAISE3 = 662
        S_BSPI_RAISE4 = 663
        S_BSPI_RAISE5 = 664
        S_BSPI_RAISE6 = 665
        S_BSPI_RAISE7 = 666
        S_ARACH_PLAZ = 667
        S_ARACH_PLAZ2 = 668
        S_ARACH_PLEX = 669
        S_ARACH_PLEX2 = 670
        S_ARACH_PLEX3 = 671
        S_ARACH_PLEX4 = 672
        S_ARACH_PLEX5 = 673
        S_CYBER_STND = 674
        S_CYBER_STND2 = 675
        S_CYBER_RUN1 = 676
        S_CYBER_RUN2 = 677
        S_CYBER_RUN3 = 678
        S_CYBER_RUN4 = 679
        S_CYBER_RUN5 = 680
        S_CYBER_RUN6 = 681
        S_CYBER_RUN7 = 682
        S_CYBER_RUN8 = 683
        S_CYBER_ATK1 = 684
        S_CYBER_ATK2 = 685
        S_CYBER_ATK3 = 686
        S_CYBER_ATK4 = 687
        S_CYBER_ATK5 = 688
        S_CYBER_ATK6 = 689
        S_CYBER_PAIN = 690
        S_CYBER_DIE1 = 691
        S_CYBER_DIE2 = 692
        S_CYBER_DIE3 = 693
        S_CYBER_DIE4 = 694
        S_CYBER_DIE5 = 695
        S_CYBER_DIE6 = 696
        S_CYBER_DIE7 = 697
        S_CYBER_DIE8 = 698
        S_CYBER_DIE9 = 699
        S_CYBER_DIE10 = 700
        S_PAIN_STND = 701
        S_PAIN_RUN1 = 702
        S_PAIN_RUN2 = 703
        S_PAIN_RUN3 = 704
        S_PAIN_RUN4 = 705
        S_PAIN_RUN5 = 706
        S_PAIN_RUN6 = 707
        S_PAIN_ATK1 = 708
        S_PAIN_ATK2 = 709
        S_PAIN_ATK3 = 710
        S_PAIN_ATK4 = 711
        S_PAIN_PAIN = 712
        S_PAIN_PAIN2 = 713
        S_PAIN_DIE1 = 714
        S_PAIN_DIE2 = 715
        S_PAIN_DIE3 = 716
        S_PAIN_DIE4 = 717
        S_PAIN_DIE5 = 718
        S_PAIN_DIE6 = 719
        S_PAIN_RAISE1 = 720
        S_PAIN_RAISE2 = 721
        S_PAIN_RAISE3 = 722
        S_PAIN_RAISE4 = 723
        S_PAIN_RAISE5 = 724
        S_PAIN_RAISE6 = 725
        S_SSWV_STND = 726
        S_SSWV_STND2 = 727
        S_SSWV_RUN1 = 728
        S_SSWV_RUN2 = 729
        S_SSWV_RUN3 = 730
        S_SSWV_RUN4 = 731
        S_SSWV_RUN5 = 732
        S_SSWV_RUN6 = 733
        S_SSWV_RUN7 = 734
        S_SSWV_RUN8 = 735
        S_SSWV_ATK1 = 736
        S_SSWV_ATK2 = 737
        S_SSWV_ATK3 = 738
        S_SSWV_ATK4 = 739
        S_SSWV_ATK5 = 740
        S_SSWV_ATK6 = 741
        S_SSWV_PAIN = 742
        S_SSWV_PAIN2 = 743
        S_SSWV_DIE1 = 744
        S_SSWV_DIE2 = 745
        S_SSWV_DIE3 = 746
        S_SSWV_DIE4 = 747
        S_SSWV_DIE5 = 748
        S_SSWV_XDIE1 = 749
        S_SSWV_XDIE2 = 750
        S_SSWV_XDIE3 = 751
        S_SSWV_XDIE4 = 752
        S_SSWV_XDIE5 = 753
        S_SSWV_XDIE6 = 754
        S_SSWV_XDIE7 = 755
        S_SSWV_XDIE8 = 756
        S_SSWV_XDIE9 = 757
        S_SSWV_RAISE1 = 758
        S_SSWV_RAISE2 = 759
        S_SSWV_RAISE3 = 760
        S_SSWV_RAISE4 = 761
        S_SSWV_RAISE5 = 762
        S_KEENSTND = 763
        S_COMMKEEN = 764
        S_COMMKEEN2 = 765
        S_COMMKEEN3 = 766
        S_COMMKEEN4 = 767
        S_COMMKEEN5 = 768
        S_COMMKEEN6 = 769
        S_COMMKEEN7 = 770
        S_COMMKEEN8 = 771
        S_COMMKEEN9 = 772
        S_COMMKEEN10 = 773
        S_COMMKEEN11 = 774
        S_COMMKEEN12 = 775
        S_KEENPAIN = 776
        S_KEENPAIN2 = 777
        S_BRAIN = 778
        S_BRAIN_PAIN = 779
        S_BRAIN_DIE1 = 780
        S_BRAIN_DIE2 = 781
        S_BRAIN_DIE3 = 782
        S_BRAIN_DIE4 = 783
        S_BRAINEYE = 784
        S_BRAINEYESEE = 785
        S_BRAINEYE1 = 786
        S_SPAWN1 = 787
        S_SPAWN2 = 788
        S_SPAWN3 = 789
        S_SPAWN4 = 790
        S_SPAWNFIRE1 = 791
        S_SPAWNFIRE2 = 792
        S_SPAWNFIRE3 = 793
        S_SPAWNFIRE4 = 794
        S_SPAWNFIRE5 = 795
        S_SPAWNFIRE6 = 796
        S_SPAWNFIRE7 = 797
        S_SPAWNFIRE8 = 798
        S_BRAINEXPLODE1 = 799
        S_BRAINEXPLODE2 = 800
        S_BRAINEXPLODE3 = 801
        S_ARM1 = 802
        S_ARM1A = 803
        S_ARM2 = 804
        S_ARM2A = 805
        S_BAR1 = 806
        S_BAR2 = 807
        S_BEXP = 808
        S_BEXP2 = 809
        S_BEXP3 = 810
        S_BEXP4 = 811
        S_BEXP5 = 812
        S_BBAR1 = 813
        S_BBAR2 = 814
        S_BBAR3 = 815
        S_BON1 = 816
        S_BON1A = 817
        S_BON1B = 818
        S_BON1C = 819
        S_BON1D = 820
        S_BON1E = 821
        S_BON2 = 822
        S_BON2A = 823
        S_BON2B = 824
        S_BON2C = 825
        S_BON2D = 826
        S_BON2E = 827
        S_BKEY = 828
        S_BKEY2 = 829
        S_RKEY = 830
        S_RKEY2 = 831
        S_YKEY = 832
        S_YKEY2 = 833
        S_BSKULL = 834
        S_BSKULL2 = 835
        S_RSKULL = 836
        S_RSKULL2 = 837
        S_YSKULL = 838
        S_YSKULL2 = 839
        S_STIM = 840
        S_MEDI = 841
        S_SOUL = 842
        S_SOUL2 = 843
        S_SOUL3 = 844
        S_SOUL4 = 845
        S_SOUL5 = 846
        S_SOUL6 = 847
        S_PINV = 848
        S_PINV2 = 849
        S_PINV3 = 850
        S_PINV4 = 851
        S_PSTR = 852
        S_PINS = 853
        S_PINS2 = 854
        S_PINS3 = 855
        S_PINS4 = 856
        S_MEGA = 857
        S_MEGA2 = 858
        S_MEGA3 = 859
        S_MEGA4 = 860
        S_SUIT = 861
        S_PMAP = 862
        S_PMAP2 = 863
        S_PMAP3 = 864
        S_PMAP4 = 865
        S_PMAP5 = 866
        S_PMAP6 = 867
        S_PVIS = 868
        S_PVIS2 = 869
        S_CLIP = 870
        S_AMMO = 871
        S_ROCK = 872
        S_BROK = 873
        S_CELL = 874
        S_CELP = 875
        S_SHEL = 876
        S_SBOX = 877
        S_BPAK = 878
        S_BFUG = 879
        S_MGUN = 880
        S_CSAW = 881
        S_LAUN = 882
        S_PLAS = 883
        S_SHOT = 884
        S_SHOT2 = 885
        S_COLU = 886
        S_STALAG = 887
        S_BLOODYTWITCH = 888
        S_BLOODYTWITCH2 = 889
        S_BLOODYTWITCH3 = 890
        S_BLOODYTWITCH4 = 891
        S_DEADTORSO = 892
        S_DEADBOTTOM = 893
        S_HEADSONSTICK = 894
        S_GIBS = 895
        S_HEADONASTICK = 896
        S_HEADCANDLES = 897
        S_HEADCANDLES2 = 898
        S_DEADSTICK = 899
        S_LIVESTICK = 900
        S_LIVESTICK2 = 901
        S_MEAT2 = 902
        S_MEAT3 = 903
        S_MEAT4 = 904
        S_MEAT5 = 905
        S_STALAGTITE = 906
        S_TALLGRNCOL = 907
        S_SHRTGRNCOL = 908
        S_TALLREDCOL = 909
        S_SHRTREDCOL = 910
        S_CANDLESTIK = 911
        S_CANDELABRA = 912
        S_SKULLCOL = 913
        S_TORCHTREE = 914
        S_BIGTREE = 915
        S_TECHPILLAR = 916
        S_EVILEYE = 917
        S_EVILEYE2 = 918
        S_EVILEYE3 = 919
        S_EVILEYE4 = 920
        S_FLOATSKULL = 921
        S_FLOATSKULL2 = 922
        S_FLOATSKULL3 = 923
        S_HEARTCOL = 924
        S_HEARTCOL2 = 925
        S_BLUETORCH = 926
        S_BLUETORCH2 = 927
        S_BLUETORCH3 = 928
        S_BLUETORCH4 = 929
        S_GREENTORCH = 930
        S_GREENTORCH2 = 931
        S_GREENTORCH3 = 932
        S_GREENTORCH4 = 933
        S_REDTORCH = 934
        S_REDTORCH2 = 935
        S_REDTORCH3 = 936
        S_REDTORCH4 = 937
        S_BTORCHSHRT = 938
        S_BTORCHSHRT2 = 939
        S_BTORCHSHRT3 = 940
        S_BTORCHSHRT4 = 941
        S_GTORCHSHRT = 942
        S_GTORCHSHRT2 = 943
        S_GTORCHSHRT3 = 944
        S_GTORCHSHRT4 = 945
        S_RTORCHSHRT = 946
        S_RTORCHSHRT2 = 947
        S_RTORCHSHRT3 = 948
        S_RTORCHSHRT4 = 949
        S_HANGNOGUTS = 950
        S_HANGBNOBRAIN = 951
        S_HANGTLOOKDN = 952
        S_HANGTSKULL = 953
        S_HANGTLOOKUP = 954
        S_HANGTNOBRAIN = 955
        S_COLONGIBS = 956
        S_SMALLPOOL = 957
        S_BRAINSTEM = 958
        S_TECHLAMP = 959
        S_TECHLAMP2 = 960
        S_TECHLAMP3 = 961
        S_TECHLAMP4 = 962
        S_TECH2LAMP = 963
        S_TECH2LAMP2 = 964
        S_TECH2LAMP3 = 965
        S_TECH2LAMP4 = 966
        NUMSTATES = 967
        % mobjtype_t
        MT_POSSESSED = 0
        MT_SHOTGUY = 1
        MT_VILE = 2
        MT_FIRE = 3
        MT_UNDEAD = 4
        MT_TRACER = 5
        MT_SMOKE = 6
        MT_FATSO = 7
        MT_FATSHOT = 8
        MT_CHAINGUY = 9
        MT_TROOP = 10
        MT_SERGEANT = 11
        MT_SHADOWS = 12
        MT_HEAD = 13
        MT_BRUISER = 14
        MT_BRUISERSHOT = 15
        MT_KNIGHT = 16
        MT_SKULL = 17
        MT_SPIDER = 18
        MT_BABY = 19
        MT_CYBORG = 20
        MT_PAIN = 21
        MT_WOLFSS = 22
        MT_KEEN = 23
        MT_BOSSBRAIN = 24
        MT_BOSSSPIT = 25
        MT_BOSSTARGET = 26
        MT_SPAWNSHOT = 27
        MT_SPAWNFIRE = 28
        MT_BARREL = 29
        MT_TROOPSHOT = 30
        MT_HEADSHOT = 31
        MT_ROCKET = 32
        MT_PLASMA = 33
        MT_BFG = 34
        MT_ARACHPLAZ = 35
        MT_PUFF = 36
        MT_BLOOD = 37
        MT_TFOG = 38
        MT_IFOG = 39
        MT_TELEPORTMAN = 40
        MT_EXTRABFG = 41
        MT_MISC0 = 42
        MT_MISC1 = 43
        MT_MISC2 = 44
        MT_MISC3 = 45
        MT_MISC4 = 46
        MT_MISC5 = 47
        MT_MISC6 = 48
        MT_MISC7 = 49
        MT_MISC8 = 50
        MT_MISC9 = 51
        MT_MISC10 = 52
        MT_MISC11 = 53
        MT_MISC12 = 54
        MT_INV = 55
        MT_MISC13 = 56
        MT_INS = 57
        MT_MISC14 = 58
        MT_MISC15 = 59
        MT_MISC16 = 60
        MT_MEGA = 61
        MT_CLIP = 62
        MT_MISC17 = 63
        MT_MISC18 = 64
        MT_MISC19 = 65
        MT_MISC20 = 66
        MT_MISC21 = 67
        MT_MISC22 = 68
        MT_MISC23 = 69
        MT_MISC24 = 70
        MT_MISC25 = 71
        MT_CHAINGUN = 72
        MT_MISC26 = 73
        MT_MISC27 = 74
        MT_MISC28 = 75
        MT_SHOTGUN = 76
        MT_SUPERSHOTGUN = 77
        MT_MISC29 = 78
        MT_MISC30 = 79
        MT_MISC31 = 80
        MT_MISC32 = 81
        MT_MISC33 = 82
        MT_MISC34 = 83
        MT_MISC35 = 84
        MT_MISC36 = 85
        MT_MISC37 = 86
        MT_MISC38 = 87
        MT_MISC39 = 88
        MT_MISC40 = 89
        MT_MISC41 = 90
        MT_MISC42 = 91
        MT_MISC43 = 92
        MT_MISC44 = 93
        MT_MISC45 = 94
        MT_MISC46 = 95
        MT_MISC47 = 96
        MT_MISC48 = 97
        MT_MISC49 = 98
        MT_MISC50 = 99
        MT_MISC51 = 100
        MT_MISC52 = 101
        MT_MISC53 = 102
        MT_MISC54 = 103
        MT_MISC55 = 104
        MT_MISC56 = 105
        MT_MISC57 = 106
        MT_MISC58 = 107
        MT_MISC59 = 108
        MT_MISC60 = 109
        MT_MISC61 = 110
        MT_MISC62 = 111
        MT_MISC63 = 112
        MT_MISC64 = 113
        MT_MISC65 = 114
        MT_MISC66 = 115
        MT_MISC67 = 116
        MT_MISC68 = 117
        MT_MISC69 = 118
        MT_MISC70 = 119
        MT_MISC71 = 120
        MT_MISC72 = 121
        MT_MISC73 = 122
        MT_MISC74 = 123
        MT_MISC75 = 124
        MT_MISC76 = 125
        MT_MISC77 = 126
        MT_MISC78 = 127
        MT_MISC79 = 128
        MT_MISC80 = 129
        MT_MISC81 = 130
        MT_MISC82 = 131
        MT_MISC83 = 132
        MT_MISC84 = 133
        MT_MISC85 = 134
        MT_MISC86 = 135
        NUMMOBJTYPES = 136
    end
end

