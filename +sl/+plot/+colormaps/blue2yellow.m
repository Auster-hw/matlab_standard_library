function cmap = blue2yellow(len)
%BLUE2YELLOW A perceptually linear blue to yellow color map
%
% Data by Canon Research, Sydney, Australia
% http://www.cs.uml.edu/~haim/ColorCenter/ColorCenterColormaps.htm
if nargin == 0
    len = 64;
end

d = data();
d = d./max(d(:));

assert(len>1,'Length of colormap must be greater than 1')
xs = linspace(1,length(d),len)';

cmap = interp2(d,(1:3),xs);

    function d = data()
        d=[ 7      7    254
            23     23    252
            30     30    250
            36     36    248
            40     40    247
            44     44    245
            47     47    243
            50     50    242
            52     52    240
            55     55    239
            57     57    238
            59     59    236
            61     61    235
            63     63    234
            65     65    233
            66     66    231
            68     68    230
            69     69    229
            71     71    228
            72     72    227
            74     74    226
            75     75    225
            76     76    225
            78     78    224
            79     79    223
            80     80    222
            81     81    221
            82     82    221
            84     84    220
            85     85    219
            86     86    218
            87     87    218
            88     88    217
            89     89    216
            90     90    216
            91     91    215
            92     92    214
            93     93    214
            94     94    213
            95     95    213
            96     96    212
            97     97    212
            98     98    211
            98     98    210
            99     99    210
            100    100    209
            101    101    209
            102    102    208
            103    103    208
            104    104    208
            105    105    207
            105    105    207
            106    106    206
            107    107    206
            108    108    205
            109    109    205
            110    110    204
            110    110    204
            111    111    204
            112    112    203
            113    113    203
            114    114    202
            114    114    202
            115    115    202
            116    116    201
            117    117    201
            118    118    200
            118    118    200
            119    119    200
            120    120    199
            121    121    199
            121    121    199
            122    122    198
            123    123    198
            124    124    198
            124    124    197
            125    125    197
            126    126    197
            127    127    196
            128    128    196
            128    128    195
            129    129    195
            130    130    195
            130    130    194
            131    131    194
            132    132    194
            133    133    193
            133    133    193
            134    134    193
            135    135    192
            136    136    192
            136    136    192
            137    137    191
            138    138    191
            139    139    191
            139    139    190
            140    140    190
            141    141    190
            142    142    189
            142    142    189
            143    143    189
            144    144    188
            144    144    188
            145    145    188
            146    146    187
            147    147    187
            147    147    187
            148    148    186
            149    149    186
            149    149    186
            150    150    185
            151    151    185
            152    152    185
            152    152    184
            153    153    184
            154    154    184
            154    154    183
            155    155    183
            156    156    182
            157    157    182
            157    157    182
            158    158    181
            159    159    181
            159    159    181
            160    160    180
            161    161    180
            162    162    180
            162    162    179
            163    163    179
            164    164    178
            164    164    178
            165    165    178
            166    166    177
            167    167    177
            167    167    176
            168    168    176
            169    169    176
            169    169    175
            170    170    175
            171    171    174
            172    172    174
            172    172    173
            173    173    173
            174    174    173
            174    174    172
            175    175    172
            176    176    171
            177    177    171
            177    177    170
            178    178    170
            179    179    169
            179    179    169
            180    180    168
            181    181    168
            181    181    167
            182    182    167
            183    183    166
            184    184    166
            184    184    165
            185    185    165
            186    186    164
            186    186    164
            187    187    163
            188    188    163
            189    189    162
            189    189    162
            190    190    161
            191    191    161
            191    191    160
            192    192    159
            193    193    159
            194    194    158
            194    194    158
            195    195    157
            196    196    157
            196    196    156
            197    197    155
            198    198    155
            199    199    154
            199    199    153
            200    200    153
            201    201    152
            201    201    151
            202    202    151
            203    203    150
            204    204    149
            204    204    149
            205    205    148
            206    206    147
            206    206    146
            207    207    146
            208    208    145
            209    209    144
            209    209    143
            210    210    143
            211    211    142
            211    211    141
            212    212    140
            213    213    139
            214    214    138
            214    214    138
            215    215    137
            216    216    136
            216    216    135
            217    217    134
            218    218    133
            219    219    132
            219    219    131
            220    220    130
            221    221    129
            221    221    128
            222    222    127
            223    223    126
            224    224    125
            224    224    124
            225    225    123
            226    226    122
            226    226    121
            227    227    119
            228    228    118
            229    229    117
            229    229    116
            230    230    114
            231    231    113
            232    232    112
            232    232    110
            233    233    109
            234    234    107
            234    234    106
            235    235    104
            236    236    103
            237    237    101
            237    237    100
            238    238     98
            239    239     96
            239    239     94
            240    240     92
            241    241     91
            242    242     89
            242    242     86
            243    243     84
            244    244     82
            245    245     80
            245    245     77
            246    246     74
            247    247     72
            247    247     69
            248    248     65
            249    249     62
            250    250     58
            250    250     54
            251    251     49
            252    252     44
            253    253     37
            253    253     28
            254    254     13];
    end
end

