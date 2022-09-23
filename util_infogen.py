from pathlib import Path

# https://github.com/id-Software/DOOM/archive/refs/heads/master.zip
doom_src = Path('DOOM-master') / 'linuxdoom-1.10'

with open(doom_src / 'info.h', 'r') as f:
    info_h = f.readlines()

with open(doom_src / 'info.c', 'r') as f:
    info_c = f.readlines()

with open(doom_src / 'sounds.h', 'r') as f:
    sounds_h = f.readlines()


enums = {
    # 'spritenum_t': ''.join(info_h[31:170]),
    # 'statenum_t': ''.join(info_h[175:1143]),
    # 'mobjtype_t': ''.join(info_h[1164:1301]),
    # 'musicenum_t': ''.join(sounds_h[100:169]),
    # 'sfxenum_t': ''.join(sounds_h[178:288]),
}


for ename, evalues in enums.items():
    print('        %', ename)
    for i, name in enumerate(evalues.split(',')):
        print(f'        {name.strip()} = {i}')

# states = info_c[135:1102]
# print('        states = [')
# for state in states:
#    w = [x.strip() for x in state.split(',')]
#    w[0] = w[0][1:]
#    w[3] = '@actions.'+w[3][1:-1]
#    w[4] = 'info_h0.'+w[4]
#    w[6] = w[6].split('}')[0]
#    print(f"              t_factory.state_t(info_h0.{w[0]}, {w[1]}, {w[2]}, {w[3]}, {w[4]}, {w[5]}, {w[6]})")
#
# print('          ]  % states')

actions = info_c[58:132]
for aL in actions:
    name = aL.split()[1].split('(')[0]
    print(f'        function {name}(doom, varargin)')
    print(f'        end')

def times_m_fixed_const(x):
    n, c = x.split('*')
    return f'{n}*m_fixed.{c}'

# mobjinfo = ''.join(info_c[1107:4668])
# print('        mobjinfo = [')
# for parts in mobjinfo.split('},'):
#     pp = list(filter(lambda x: len(x.strip()) and not x.strip().startswith('{'), parts.split('\n')))
#     L = [p.split(',')[0].strip() for p in pp[:23]]
#     for i in [1, 3, 7, 10, 11, 12, 13, 22]:
#         L[i] = 'info_h0.' + L[i]
#     for i in [4, 6, 9, 14, 20]:
#         L[i] = 'cg.' + L[i]
#     L[16] = times_m_fixed_const(L[16])
#     L[17] = times_m_fixed_const(L[17])
#     Lm2p = list(map(lambda x: 'cg.'+x, L[-2].split('|')))
#     L[-2] = Lm2p[0] if len(Lm2p) < 2 else 'bitor2(' + ', '.join(Lm2p) + ')'
#     L[-1] = L[-1].split('//')[0].strip()
#     print('t_factory.mobjinfo_t(', end='')
#     print(*L, sep=', ', end=')\n')
#
# print('          ]  % mobjinfo')
#
