package fourq

import (
	"math/big"
)

var (
	Order, _ = new(big.Int).SetString("73846995687063900142583536357581573884798075859800097461294096333596429543", 10)
	Gx, Gy   *big.Int

	g = &point{
		x: &gfP2{
			x: &baseFieldElem{0x33833aa, 0x164ab5e, 0x260a50c, 0x11be17d, 0x68d1c8},
			y: &baseFieldElem{0xac77f6, 0x1a7ecd8, 0x15392d0, 0x1f943c5, 0x787d54},
		},
		y: &gfP2{
			x: &baseFieldElem{0x3cbb287, 0x128918a, 0x30b5724, 0xdd0903, 0x38ffba},
			y: &baseFieldElem{0x4c8b5c, 0x1f0d121, 0x484934, 0x1c31870, 0x1b8712b},
		},
		z: newGFp2(nil).SetOne(),
	}

	d = &gfP2{
		x: &baseFieldElem{0x142, 0x0, 0x1c8000, 0x0, 0x0},
		y: &baseFieldElem{0x1fc0c8d, 0x85223c, 0x1f9670, 0x2332bf, 0x1791cbe},
	}
)

func init() {
	g.t = newGFp2(nil).Mul(g.x, g.y, nil)
	Gx, Gy = g.Int(nil)
}