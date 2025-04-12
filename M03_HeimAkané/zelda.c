
//{{BLOCK(zelda)

//======================================================================
//
//	zelda, 128x128@4, 
//	+ palette 256 entries, not compressed
//	+ 256 tiles not compressed
//	Total size: 512 + 8192 = 8704
//
//	Time-stamp: 2025-04-06, 20:37:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short zeldaTiles[4096] __attribute__((aligned(4)))=
{
	0x5252,0x2222,0x2555,0x2552,0x2225,0x2522,0x2225,0x2222,
	0x2222,0x2255,0x2552,0x5225,0x2522,0x2222,0x2222,0x2522,
	0x2222,0x2525,0x2552,0x5552,0x2252,0x5222,0x2222,0x5222,
	0x5522,0x2222,0x5225,0x2552,0x2222,0x2252,0x2252,0x2222,
	0x5222,0x5111,0x1522,0x1522,0x1552,0x1552,0x1115,0x1551,
	0x5221,0x5115,0x5521,0x2155,0x5511,0x2155,0x1115,0x5111,
	0x1115,0x2225,0x2251,0x2251,0x2551,0x2551,0x1551,0x5111,
	0x5115,0x1225,0x5512,0x1255,0x5512,0x1155,0x1115,0x5111,

	0x8882,0x8888,0x3382,0x8333,0x3382,0x8333,0x3382,0x8333,
	0x3382,0x8333,0x8118,0x8888,0x3338,0x3383,0x3338,0x3383,
	0x8882,0x2888,0x3382,0x2833,0x3382,0x2833,0x8882,0x2888,
	0x1122,0x8111,0x3888,0x8333,0x3833,0x8333,0x3833,0x8333,
	0x2222,0x2222,0x5522,0x2555,0x5552,0x5555,0x5555,0x5555,
	0x3555,0x5533,0x3355,0x5333,0x3355,0x3333,0x3335,0x3333,
	0x2222,0x2222,0x5552,0x2255,0x5555,0x2555,0x5555,0x5555,
	0x3355,0x5553,0x3335,0x5533,0x3333,0x5533,0x3333,0x5333,

	0x2222,0x1111,0x1222,0xFF7F,0xF122,0xF7FF,0xFF12,0x77FF,
	0x77F1,0x4777,0xFFF1,0x44FF,0xFFF1,0x447F,0xFFF1,0x4777,
	0x1111,0x2222,0xF7FF,0x2221,0xFF7F,0x221F,0xFF77,0x21FF,
	0x7774,0x1F77,0xFF44,0x1FFF,0xF744,0x1FFF,0x7774,0x1FFF,
	0x2222,0x1111,0x1222,0xFF7F,0xF122,0xF7FF,0xFF12,0x77FF,
	0x77F1,0x4777,0xFFF1,0x44FF,0xFFF1,0x447F,0xFFF1,0x4777,
	0x1111,0x2222,0xF7FF,0x2221,0xFF7F,0x221F,0xFF77,0x21FF,
	0x7774,0x1F77,0xFF44,0x1FFF,0xF744,0x1FFF,0x7774,0x1FFF,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2552,0x2222,0x5552,
	0x5522,0x5555,0x5222,0x5511,0x2222,0x1115,0x2222,0x1152,
	0x5522,0x2222,0x5522,0x2522,0x5552,0x5552,0x5155,0x5155,
	0x5115,0x1155,0x1111,0x1115,0x1771,0x7711,0x7477,0x4477,
	0x2222,0x2255,0x2252,0x2255,0x2555,0x2555,0x5515,0x5515,
	0x5511,0x5115,0x5111,0x1111,0x1177,0x1771,0x7744,0x7747,
	0x2222,0x2222,0x2222,0x2222,0x2552,0x2222,0x2555,0x2222,
	0x5555,0x2255,0x1155,0x2225,0x5111,0x2222,0x2511,0x2222,

	0x2222,0x2522,0x2522,0x2222,0x2552,0x5225,0x2222,0x2255,
	0x2225,0x2222,0x2225,0x2522,0x2555,0x2552,0x5252,0x2222,
	0x2252,0x2222,0x2222,0x2252,0x5225,0x2552,0x5522,0x2222,
	0x2222,0x5222,0x2252,0x5222,0x2552,0x5552,0x2222,0x2525,
	0x5511,0x1155,0x5521,0x5115,0x5221,0x5511,0x1111,0x5511,
	0x5115,0x5215,0x2155,0x2115,0x1152,0x1111,0x5522,0x1555,
	0x5511,0x1155,0x5115,0x1255,0x1155,0x1225,0x1155,0x1111,
	0x5125,0x5115,0x5112,0x5512,0x1111,0x2511,0x5551,0x2255,

	0x3338,0x3383,0x3831,0x3383,0x8288,0x8811,0x2222,0x3338,
	0x2332,0x3338,0x2332,0x3338,0x2332,0x3338,0x2222,0x8888,
	0x3833,0x8333,0x1838,0x1111,0x2281,0x2222,0x8883,0x2888,
	0x3383,0x2833,0x3383,0x2833,0x3383,0x2833,0x8828,0x2888,
	0x5222,0x5555,0x5522,0x3555,0x5552,0x3335,0x5552,0x3333,
	0x5552,0x3333,0x5552,0x3333,0x5552,0x3335,0x5522,0x3355,
	0x5555,0x2225,0x5553,0x2255,0x5333,0x2555,0x3333,0x2555,
	0x3333,0x2555,0x3333,0x2555,0x5333,0x2555,0x5533,0x2255,

	0x7FF1,0x7FF7,0x77F1,0xF7FF,0xF7F1,0xF7FF,0xFF15,0xFF7F,
	0xF152,0xFF7F,0x1522,0xFF7F,0x5222,0xFFF1,0x2222,0x1115,
	0x7FF7,0x1111,0x1F7F,0xFF7F,0xF17F,0xF7FF,0xFF1F,0x77FF,
	0x77F1,0x4777,0xFFF1,0x44FF,0xFFF1,0x447F,0xFFF1,0x4777,
	0x1111,0x7FF7,0xF7FF,0xF7F1,0xFF7F,0xF71F,0xFF77,0xF1FF,
	0x7774,0x1F77,0xFF44,0x1FFF,0xF744,0x1FFF,0x7774,0x1FFF,
	0x7FF7,0x1FF7,0xFF7F,0x1F77,0xFF7F,0x1F7F,0xF7FF,0x51FF,
	0xF7FF,0x251F,0xF7FF,0x2251,0x1FFF,0x2225,0x5111,0x2222,

	0x5552,0x7155,0x5552,0x7155,0x1122,0x7155,0x1525,0x4711,
	0x1555,0x4771,0x1551,0x4477,0x7111,0x4447,0x4777,0x4444,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5517,0x2555,0x5517,0x2555,0x5517,0x2211,0x1174,0x5251,
	0x1774,0x5551,0x7744,0x1551,0x7444,0x1117,0x4444,0x7774,

	0x1122,0x1111,0xB312,0xBBBB,0xBB31,0x3333,0x3B31,0xBBB3,
	0x3B11,0xB3BB,0x3B11,0x333B,0x3B11,0x3B3B,0x3B11,0x333B,
	0x2211,0x1122,0x1133,0xB311,0x83BB,0xBBB3,0xBB33,0x3BBB,
	0xB33B,0xB33B,0x33BB,0x3BB3,0xBBB3,0x33BB,0x33BB,0x3BB3,
	0x2211,0x1122,0x113B,0x3311,0x3BBB,0xBB38,0xBBB3,0x33BB,
	0xB33B,0xB33B,0x3BB3,0xBB33,0xBB33,0x3BBB,0x3BB3,0xBB33,
	0x1111,0x2211,0xBBBB,0x213B,0x3333,0x13BB,0x3BBB,0x13B3,
	0xBB3B,0x81B3,0xB333,0x81B3,0xB3B3,0x21B3,0xB333,0x21B3,

	0xC222,0x22CC,0xC222,0x22CE,0xECC2,0xCCEE,0xECC2,0xCCEE,
	0xC552,0x55CE,0xC552,0x55CC,0x5222,0x2255,0x5222,0x2255,
	0x2222,0x2222,0xDD22,0x22DD,0xDDD2,0x2DDA,0xDAD2,0x2DDD,
	0xDD52,0x25AD,0xB552,0x255B,0x5522,0x2255,0x2222,0x2222,
	0x5522,0x3355,0x5552,0x3335,0x5552,0x3333,0x5552,0x3333,
	0x5552,0x3333,0x5552,0x3335,0x5522,0x3555,0x5222,0x5555,
	0x5533,0x2255,0x5333,0x2555,0x3333,0x2555,0x3333,0x2555,
	0x3333,0x2555,0x5333,0x2555,0x5553,0x2255,0x5555,0x2225,

	0x2222,0x1111,0x1222,0xFF7F,0xF122,0xF7FF,0xFF12,0x77FF,
	0x77F1,0x4777,0xFFF1,0x44FF,0xFFF1,0x447F,0xFFF1,0x4777,
	0x7FF1,0x7FF7,0x77F1,0xF7FF,0xF7F1,0xF7FF,0xFF11,0xFF7F,
	0xF114,0xFF7F,0x1144,0xFF7F,0x1744,0xFFF1,0x7774,0x1111,
	0x7FF7,0x1FF7,0xFF7F,0x1F77,0xFF7F,0x1F7F,0xF7FF,0x11FF,
	0xF7FF,0x411F,0xF7FF,0x4411,0x1FFF,0x4471,0x1111,0x4777,
	0x1111,0x2222,0xF7FF,0x2221,0xFF7F,0x221F,0xFF77,0x21FF,
	0x7774,0x1F77,0xFF44,0x1FFF,0xF744,0x1FFF,0x7774,0x1FFF,

	0x5552,0x7111,0x5222,0x4715,0x2222,0x7155,0x5552,0x7155,
	0x5522,0x7151,0x5222,0x7715,0x5222,0x4155,0x5522,0x7155,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1117,0x2555,0x5174,0x2225,0x5517,0x2222,0x5517,0x2555,
	0x1517,0x2255,0x5177,0x2225,0x5514,0x2225,0x5517,0x2255,

	0x3B18,0xB3BB,0x3B31,0xBBB3,0xBB31,0x3333,0xB311,0xBBBB,
	0x1181,0x1111,0x8181,0x8188,0x8112,0x8188,0x1122,0x1111,
	0xB33B,0xBB3B,0xBB33,0x33BB,0x3BBB,0xBBB3,0x183B,0xB381,
	0x8111,0x1118,0x8188,0x8818,0x1188,0x8811,0x2511,0x1152,
	0xB3BB,0xB33B,0xBB33,0x33BB,0x3BBB,0xBBB3,0x183B,0xB381,
	0x8111,0x1118,0x8188,0x8818,0x1188,0x8811,0x2511,0x1152,
	0xBB3B,0x81B3,0x3BBB,0x13B3,0x3333,0x13BB,0xBBBB,0x113B,
	0x1111,0x1811,0x8818,0x1818,0x8818,0x2118,0x1111,0x2211,

	0x1122,0x2211,0xBB12,0x21BB,0x3BB1,0x1BB3,0xB3B1,0x1B3B,
	0xB3B1,0x1B3B,0x3BB1,0x1BB3,0xBB31,0x13BB,0x3311,0x1133,
	0x2222,0x2222,0xA222,0x2222,0x442A,0x2A24,0xAA44,0x244A,
	0xAA45,0x254A,0x4455,0x2554,0xA522,0x2225,0x5522,0x2225,
	0x3335,0x3333,0x3355,0x3333,0x3355,0x5333,0x3555,0x5533,
	0x5555,0x5555,0x5552,0x5555,0x5522,0x2555,0x2222,0x2222,
	0x3333,0x5333,0x3333,0x5533,0x3335,0x5533,0x3355,0x5553,
	0x5555,0x5555,0x5555,0x2555,0x5552,0x2255,0x2222,0x2222,

	0x7FF1,0x7FF7,0x77F1,0xF7FF,0xF7F1,0xF7FF,0xFF15,0xFF7F,
	0xF152,0xFF7F,0x1522,0xFF7F,0x5222,0xFFF1,0x2222,0x1115,
	0x7FF7,0x1FF7,0xFF7F,0x1F77,0xFF7F,0x1F7F,0xF7FF,0x51FF,
	0xF7FF,0x251F,0xF7FF,0x2251,0x1FFF,0x2225,0x5111,0x2222,
	0x7FF1,0x7FF7,0x77F1,0xF7FF,0xF7F1,0xF7FF,0xFF15,0xFF7F,
	0xF152,0xFF7F,0x1522,0xFF7F,0x5222,0xFFF1,0x2222,0x1115,
	0x7FF7,0x1FF7,0xFF7F,0x1F77,0xFF7F,0x1F7F,0xF7FF,0x51FF,
	0xF7FF,0x251F,0xF7FF,0x2251,0x1FFF,0x2225,0x5111,0x2222,

	0x5522,0x7155,0x5222,0x4155,0x5222,0x7715,0x5522,0x7151,
	0x5552,0x7155,0x2222,0x7155,0x5222,0x4715,0x5552,0x7111,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5517,0x2255,0x5514,0x2225,0x5177,0x2225,0x1517,0x2255,
	0x5517,0x2555,0x5517,0x2222,0x5174,0x2225,0x1117,0x2555,

	0x2222,0x1111,0x1222,0xFF7F,0xF122,0xF7FF,0xFF12,0x77FF,
	0x77F1,0x4777,0xFFF1,0x44FF,0xFFF1,0x447F,0xFFF1,0x4777,
	0x1111,0x2222,0xF7FF,0x2221,0xFF7F,0x221F,0xFF77,0x21FF,
	0x7774,0x1F77,0xFF44,0x1FFF,0xF744,0x1FFF,0x7774,0x1FFF,
	0xA444,0x4AAA,0x4444,0x4444,0x4444,0x4444,0xAAAA,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x44AA,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0xAAA4,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0xAAAA,0x4444,0x4444,0x4444,0x4444,

	0x1181,0x1811,0x3381,0x1888,0x3381,0x1888,0x3381,0x1838,
	0x3881,0x1838,0x3811,0x1138,0x1115,0x5111,0x5555,0x5555,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x9999,0x9999,0x6669,0x9966,0xAA69,0x966A,0xCA69,0x96AA,
	0xAA69,0x66AC,0xA669,0x6ACA,0x6699,0x66A6,0x9999,0x9666,
	0x6669,0x9966,0xAAA6,0x966A,0xAAA6,0x96AA,0x6669,0x9666,
	0x9999,0x9999,0x6669,0x9996,0xAA69,0x9666,0xAA69,0x96AA,

	0x6666,0x9999,0x9666,0x9669,0x9996,0x9699,0x9996,0x9999,
	0x9999,0x9966,0x9669,0x6996,0x9699,0x9999,0x9999,0x9699,
	0x9999,0x6666,0x9669,0x6669,0x9969,0x6999,0x9999,0x6999,
	0x6699,0x9999,0x6996,0x9669,0x9999,0x9969,0x9969,0x9999,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x4777,0x4444,0x7111,0x4447,0x1551,0x4477,0x1555,0x4771,
	0x1525,0x4711,0x1122,0x7155,0x5552,0x7155,0x5552,0x7155,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4444,0x7774,0x7444,0x1117,0x7744,0x1551,0x1774,0x5551,
	0x1174,0x5251,0x5517,0x2211,0x5517,0x2555,0x5517,0x2555,

	0x7FF1,0x7FF7,0x77F1,0xF7FF,0xF7F1,0xF7FF,0xFF15,0xFF7F,
	0xF152,0xFF7F,0x1522,0xFF7F,0x5222,0xFFF1,0x2222,0x1115,
	0x7FF7,0x1FF7,0xFF7F,0x1F77,0xFF7F,0x1F7F,0xF7FF,0x51FF,
	0xF7FF,0x251F,0xF7FF,0x2251,0x1FFF,0x2225,0x5111,0x2222,
	0x4444,0x4444,0x4444,0x4444,0x4444,0xAA44,0x4444,0x4444,
	0xAA44,0x4444,0x4444,0x4444,0x4444,0x4444,0x4AAA,0x4444,
	0x4444,0x4444,0x4444,0xAA44,0x4AAA,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0xAAAA,0x4444,0x4444,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x6669,0x9999,0x6AA6,0x6696,0xAAA6,0xA666,0x6AA6,0xAA66,
	0x6669,0x6AA6,0x6999,0x6666,0x9999,0x9999,0x9999,0x9999,
	0xA669,0x966A,0x6666,0x9966,0x996A,0x9999,0x6966,0x9966,
	0x6996,0x666A,0x6999,0x6AAA,0x6999,0x6AA6,0x9999,0x6666,

	0x9999,0x9699,0x9699,0x9999,0x9669,0x6996,0x9999,0x9966,
	0x9996,0x9999,0x9996,0x9699,0x9666,0x9669,0x6666,0x9999,
	0x9969,0x9999,0x9999,0x9969,0x6996,0x9669,0x6699,0x9999,
	0x9999,0x6999,0x9969,0x6999,0x9669,0x6669,0x9999,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2222,0x1152,0x2222,0x1116,0x5222,0x5511,0x5522,0x5555,
	0x2222,0x5552,0x2222,0x2552,0x2222,0x2222,0x2222,0x2222,
	0x7477,0x4477,0x1771,0x7711,0x1111,0x1115,0x5115,0x1155,
	0x5155,0x5155,0x5552,0x5552,0x5522,0x2522,0x5522,0x2222,
	0x7744,0x7747,0x1177,0x1771,0x5111,0x1111,0x5511,0x5115,
	0x5515,0x5515,0x2555,0x2555,0x2252,0x2255,0x2222,0x2255,
	0x2511,0x2222,0x6111,0x2222,0x1155,0x2225,0x5555,0x2255,
	0x2555,0x2222,0x2552,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5252,0x2222,0x2555,0x2552,0x2225,0x2522,0x2225,0x2222,
	0x2222,0x1112,0x1552,0x2211,0x1122,0x2222,0x2112,0x2222,
	0x2222,0x2525,0x2552,0x1112,0x1252,0x2211,0x1122,0x2222,
	0x2111,0x2222,0x2222,0x5522,0x2222,0x5552,0x5222,0x5555,
	0x1111,0x1111,0x2221,0x2222,0x2222,0x5555,0x5522,0x5555,
	0x5555,0x5555,0x5555,0x2222,0x2255,0x2222,0x2225,0x2222,

	0x1111,0x1111,0x2222,0x1222,0x5555,0x2222,0x5555,0x2255,
	0x5555,0x5555,0x2222,0x5555,0x2222,0x5522,0x2222,0x5222,
	0x5252,0x2222,0x2111,0x2552,0x1122,0x2521,0x2222,0x2211,
	0x2222,0x1112,0x2255,0x2222,0x2555,0x2222,0x5555,0x2225,
	0x2222,0x2525,0x2552,0x5552,0x2252,0x5222,0x2222,0x5222,
	0x2111,0x2222,0x1122,0x2551,0x2222,0x2211,0x2222,0x2112,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2252,0x2222,0x2222,0x2522,0x5225,0x1522,0x5522,0x1122,
	0x2222,0x2112,0x2252,0x2211,0x1552,0x2221,0x1222,0x2222,
	0x2211,0x2222,0x2221,0x5522,0x2221,0x5552,0x2222,0x5555,
	0x2222,0x5555,0x5222,0x5555,0x5522,0x5555,0x5552,0x2555,
	0x5555,0x5555,0x5555,0x2255,0x5555,0x2222,0x2255,0x2222,
	0x2225,0x2222,0x2225,0x2222,0x2222,0x5522,0x2222,0x5552,
	0x2222,0x2222,0x2222,0x5552,0x5222,0x5555,0x5522,0x5555,
	0x5552,0x2255,0x5555,0x2225,0x2555,0x2222,0x2255,0x5522,

	0x2222,0x2222,0x2555,0x2222,0x5555,0x2225,0x5555,0x2255,
	0x5522,0x2555,0x5222,0x5555,0x2222,0x5552,0x2255,0x5522,
	0x5555,0x5555,0x5522,0x5555,0x2222,0x5555,0x2222,0x5522,
	0x2222,0x5222,0x2222,0x5222,0x2255,0x2222,0x2555,0x2222,
	0x2222,0x1122,0x2255,0x1222,0x2555,0x1222,0x5555,0x2222,
	0x5555,0x2222,0x5555,0x2225,0x5555,0x2255,0x5552,0x2555,
	0x2252,0x2222,0x2222,0x2252,0x5221,0x2552,0x5511,0x2222,
	0x2112,0x5222,0x1122,0x5222,0x1222,0x5551,0x2222,0x2521,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x1152,0x2222,0x2122,0x2222,0x2115,0x2222,0x2212,0x5222,
	0x2211,0x5222,0x2221,0x5522,0x2221,0x5522,0x2221,0x5522,
	0x5552,0x2255,0x5555,0x2255,0x5555,0x2225,0x5555,0x2225,
	0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,
	0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,
	0x2222,0x5555,0x2222,0x5555,0x2222,0x5552,0x2222,0x5522,
	0x2225,0x5552,0x2225,0x5555,0x2225,0x5555,0x2225,0x5555,
	0x2225,0x5552,0x2225,0x5522,0x2255,0x2222,0x2255,0x2222,

	0x2555,0x5222,0x5555,0x5222,0x5555,0x5222,0x5555,0x5222,
	0x2555,0x5222,0x2255,0x5222,0x2222,0x5522,0x2222,0x5522,
	0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,
	0x5555,0x2222,0x5555,0x2222,0x2555,0x2222,0x2255,0x2222,
	0x5522,0x2555,0x5522,0x5555,0x5222,0x5555,0x5222,0x5555,
	0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,0x5555,
	0x2222,0x2511,0x2222,0x5512,0x2222,0x5112,0x2225,0x5112,
	0x2225,0x1122,0x2255,0x1222,0x2255,0x1222,0x2255,0x1222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2221,0x5522,0x2221,0x5522,0x2221,0x5522,0x2221,0x5522,
	0x2221,0x5522,0x2221,0x5522,0x2221,0x5522,0x2221,0x5222,
	0x2555,0x2222,0x2555,0x2222,0x2555,0x2222,0x2555,0x2222,
	0x2555,0x2222,0x2555,0x2222,0x5555,0x2222,0x5555,0x2222,
	0x2222,0x5222,0x2222,0x5222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2555,0x2222,0x5555,0x2222,0x5555,0x2255,0x5555,0x5555,
	0x5552,0x5555,0x5522,0x5555,0x5222,0x5555,0x2222,0x5552,

	0x2222,0x5552,0x2222,0x5555,0x5522,0x5555,0x5555,0x5555,
	0x5555,0x2555,0x5555,0x2255,0x5555,0x2225,0x2555,0x2222,
	0x2225,0x2222,0x2225,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x5552,0x2222,0x5552,0x2222,0x5552,0x2222,0x5552,
	0x2222,0x5552,0x2222,0x5552,0x2222,0x5555,0x2222,0x5555,
	0x2255,0x1222,0x2255,0x1222,0x2255,0x1222,0x2255,0x1222,
	0x2255,0x1222,0x2255,0x1222,0x2255,0x1222,0x2225,0x1222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2221,0x5222,0x2221,0x2222,0x2221,0x2222,0x2211,0x2222,
	0x2212,0x2222,0x2212,0x2222,0x2112,0x2222,0x2122,0x2222,
	0x5555,0x2225,0x5555,0x2255,0x5552,0x5555,0x5522,0x5555,
	0x5222,0x5555,0x2222,0x5555,0x2222,0x5555,0x2222,0x5552,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2255,0x2222,
	0x5555,0x2222,0x5555,0x2225,0x5555,0x2255,0x5555,0x5555,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x5522,
	0x2222,0x5555,0x5222,0x5555,0x5522,0x5555,0x5555,0x5555,
	0x5222,0x5555,0x5522,0x5555,0x5555,0x2555,0x5555,0x2255,
	0x5555,0x2225,0x5555,0x2222,0x5555,0x2222,0x2555,0x2222,
	0x2225,0x1222,0x2222,0x1222,0x2222,0x1222,0x2222,0x1122,
	0x2222,0x2122,0x2222,0x5122,0x2222,0x2112,0x2222,0x2512,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2152,0x2222,0x1122,0x2222,0x1225,0x2222,0x1522,0x2221,
	0x2222,0x2221,0x2252,0x2211,0x2552,0x5112,0x2222,0x1125,
	0x2222,0x5552,0x2222,0x5522,0x2222,0x5222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2225,0x2222,0x2555,0x2222,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5552,0x5555,0x2222,0x5555,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2225,0x2222,0x2555,0x2222,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5522,0x5555,

	0x2222,0x2222,0x2222,0x5222,0x2222,0x5552,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x2255,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x2555,0x5555,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2555,0x2222,0x2255,0x2222,0x2225,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x5222,0x2222,0x5552,
	0x2222,0x2512,0x2222,0x2211,0x2222,0x5221,0x1222,0x2251,
	0x1222,0x2222,0x1122,0x2522,0x2115,0x2552,0x5211,0x2222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2222,0x1552,0x2552,0x3152,0x2252,0xB312,0x2222,0x3B31,
	0x1522,0x3338,0x1222,0x3338,0x5225,0x8881,0x2252,0x1115,
	0x2511,0x2222,0x5511,0x2222,0x5111,0x2225,0x1111,0x2255,
	0x1111,0x5551,0x1111,0x5111,0x1111,0x1111,0x1111,0x1111,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x5555,0x5555,0x1111,0x1111,0x1111,0x1111,
	0x5222,0x5555,0x2222,0x5552,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2225,0x2222,0x2555,0x2222,0x5511,0x5555,

	0x5555,0x2225,0x2555,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x5552,0x5555,0x1155,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x5555,0x5555,0x1111,0x1111,0x1111,0x1111,
	0x2222,0x1152,0x2222,0x1155,0x5222,0x1115,0x5522,0x1111,
	0x1555,0x1111,0x1115,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x5551,0x2222,0x2513,0x2552,0x213B,0x2522,0x13B3,0x2222,
	0x8333,0x2251,0x8333,0x5221,0x1888,0x2225,0x5111,0x2522,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x2252,0x1152,0x2222,0x5552,0x2225,0x5555,0x5222,0x5555,
	0x2222,0x5522,0x2252,0x5522,0x2552,0x5552,0x2222,0x5525,
	0x1111,0x8811,0x1155,0x8111,0x1555,0x1111,0x1555,0x8881,
	0x1555,0x3338,0x1555,0x3888,0x1555,0x8811,0x1555,0x8188,
	0x8818,0x1188,0x8818,0x8338,0x8111,0x3388,0x8188,0x3888,
	0x1883,0x8888,0x8833,0x8881,0x8333,0x8818,0x8338,0x8818,
	0x1111,0x1111,0x8811,0x1111,0x8118,0x8888,0x8183,0x8883,
	0x8133,0x8838,0x1838,0x8838,0x1838,0x8888,0x1888,0x1111,

	0x1111,0x1111,0x1111,0x1188,0x8888,0x8118,0x3888,0x3818,
	0x8388,0x3318,0x8388,0x8381,0x8888,0x8381,0x1111,0x8881,
	0x8811,0x8188,0x8338,0x8188,0x8833,0x1118,0x8883,0x8818,
	0x8888,0x3881,0x1888,0x3388,0x8188,0x3338,0x8188,0x8338,
	0x1188,0x1111,0x1118,0x5511,0x1111,0x5551,0x1888,0x5551,
	0x8333,0x5551,0x8883,0x5551,0x1188,0x5551,0x8818,0x5551,
	0x2511,0x2522,0x2555,0x2222,0x2555,0x5225,0x2555,0x2255,
	0x2255,0x2222,0x2255,0x2522,0x2555,0x2552,0x5255,0x2222,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8155,0x1888,0x3815,0x8883,0xBB81,0x883B,0xBBB1,0x883B,
	0x3BB1,0x8833,0x3331,0x1883,0x8811,0x1188,0x1115,0x1111,
	0x8388,0x8818,0x8881,0x8118,0x8881,0x1118,0x8811,0x1111,
	0x1111,0x5551,0x5111,0x5555,0x5551,0x5555,0x5555,0x5555,
	0x1188,0x8888,0x8118,0x8888,0x8811,0x3338,0x8811,0x3333,
	0x8811,0x8888,0x8811,0x1118,0x8115,0x8881,0x1155,0x3388,

	0x8888,0x8811,0x8888,0x8118,0x8333,0x1188,0x3333,0x1188,
	0x8888,0x1188,0x8111,0x1188,0x1888,0x5118,0x8833,0x5511,
	0x8188,0x8838,0x8118,0x1888,0x8111,0x1888,0x1111,0x1188,
	0x1555,0x1111,0x5555,0x1115,0x5555,0x1555,0x5555,0x5555,
	0x8881,0x5518,0x3888,0x5183,0xB388,0x18BB,0xB388,0x1BBB,
	0x3388,0x1BB3,0x3881,0x1333,0x8811,0x1188,0x1111,0x5111,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5552,0x5555,0x5222,0x5555,0x5225,0x5552,0x5522,0x2222,
	0x2222,0x5222,0x2252,0x5222,0x2552,0x5552,0x2222,0x2525,
	0x1155,0xB388,0x1555,0xB338,0x1555,0x3338,0x1555,0x3381,
	0x5525,0x3881,0x5225,0x8811,0x2555,0x1115,0x5252,0x1152,

	0x883B,0x5511,0x833B,0x5551,0x8333,0x5551,0x1833,0x5551,
	0x1883,0x5255,0x1188,0x5225,0x5111,0x5552,0x2511,0x2525,
	0x5555,0x2555,0x5555,0x2225,0x2555,0x5225,0x2222,0x2255,
	0x2225,0x2222,0x2225,0x2522,0x2555,0x2552,0x5252,0x2222,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short zeldaPal[256] __attribute__((aligned(4)))=
{
	0x7195,0x14A5,0x2248,0x25D0,0x6BB6,0x19C5,0x4225,0x4AEF,
	0x1949,0x52C9,0x779F,0x3234,0x2B7F,0x04B9,0x027F,0x3A0A,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(zelda)
