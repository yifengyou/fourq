package fourq

import (
	"math/big"
)

var (
	Order, _ = new(big.Int).SetString("73846995687063900142583536357581573884798075859800097461294096333596429543", 10)

	aMask uint64 = 0x7fffffffffffffff
	bMask uint64 = 0xffffffffffffffff

	g = &point{
		x: fieldElem{
			x: baseFieldElem{0x286592ad7b3833aa, 0x1a3472237c2fb305},
			y: baseFieldElem{0x96869fb360ac77f6, 0x1e1f553f2878aa9c},
		},
		y: fieldElem{
			x: baseFieldElem{0xb924a2462bcbb287, 0x0e3fee9ba120785a},
			y: baseFieldElem{0x49a7c344844c8b5c, 0x6e1c4af8630e0242},
		},
		t: fieldElem{
			x: baseFieldElem{0x894ba36ee8cee416, 0x35bfa1947fb0913e},
			y: baseFieldElem{0x673c574d296cd8d0, 0x7bfb41a38e7076ac},
		},
		z: fieldElem{
			x: baseFieldElem{0x0000000000000001, 0x0000000000000000},
			y: baseFieldElem{0x0000000000000000, 0x0000000000000000},
		},
	}
	G = [32]byte{
		0x87, 0xb2, 0xcb, 0x2b, 0x46, 0xa2, 0x24, 0xb9,
		0x5a, 0x78, 0x20, 0xa1, 0x9b, 0xee, 0x3f, 0x0e,
		0x5c, 0x8b, 0x4c, 0x84, 0x44, 0xc3, 0xa7, 0x49,
		0x42, 0x02, 0x0e, 0x63, 0xf8, 0x4a, 0x1c, 0x6e,
	}

	d = &fieldElem{
		x: baseFieldElem{0x142, 0xe4},
		y: baseFieldElem{0xb3821488f1fc0c8d, 0x5e472f846657e0fc},
	}
	one = &fieldElem{x: baseFieldElem{0x1, 0x0}}

	// generatorBase contains pre-computed multiples of the curve's generator,
	// to speed up ScalarBaseMult.
	generatorBase = [256]*point{}
)

func init() {
	for idx := 1; idx < 256; idx++ {
		s := make([]byte, 32)
		for bit := uint(0); bit < 8; bit++ {
			if (idx>>bit)&1 == 1 {
				s[31-4*bit] = 1
			}
		}

		pt1, _ := ScalarMult(G, s, false)
		pt2, _ := (&point{}).SetBytes(pt1)
		feMul(&pt2.t, &pt2.t, d)
		generatorBase[idx] = pt2
	}
}
