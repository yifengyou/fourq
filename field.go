package fourq

import (
	"fmt"
	"math/big"
)

func swapEndian(in uint64) uint64 {
	out := uint64(0)
	for i := uint(0); i < 8; i++ {
		out |= ((in >> (8 * i)) & 0xff) << (56 - 8*i)
	}
	return out
}

// fieldElem implements a field of size p² as a quadratic extension of the base
// field where i²=-1.
type fieldElem struct {
	x, y baseFieldElem // value is x+yi.
}

func newFieldElem() *fieldElem {
	return &fieldElem{}
}

func (e *fieldElem) String() string {
	return fmt.Sprintf("[%v, %v]", &e.x, &e.y)
}

func (e *fieldElem) Int() *big.Int {
	return new(big.Int).SetBits([]big.Word{
		big.Word(swapEndian(e.y[1])),
		big.Word(swapEndian(e.y[0])),
		big.Word(swapEndian(e.x[1])),
		big.Word(swapEndian(e.x[0])),
	})
}

func (e *fieldElem) Set(a *fieldElem) *fieldElem {
	e.x.Set(&a.x)
	e.y.Set(&a.y)
	return e
}

func (e *fieldElem) SetInt(in *big.Int) *fieldElem {
	w, temp := [4]uint64{}, in.Bits()
	for i := 0; i < len(temp) && i < 4; i++ {
		w[i] = uint64(temp[i])
	}

	e.y[1] = swapEndian(w[0])
	e.y[0] = swapEndian(w[1])
	e.x[1] = swapEndian(w[2])
	e.x[0] = swapEndian(w[3])

	return e
}

func (e *fieldElem) SetZero() {
	e.x.SetZero()
	e.y.SetZero()
}

func (e *fieldElem) SetOne() {
	e.x.SetOne()
	e.y.SetZero()
}

func (e *fieldElem) IsZero() bool {
	return e.x.IsZero() && e.y.IsZero()
}

func (e *fieldElem) Neg(a *fieldElem) *fieldElem {
	e.x.Neg(&a.x)
	e.y.Neg(&a.y)
	return e
}

func (e *fieldElem) Invert(a *fieldElem) *fieldElem {
	t1 := newBaseFieldElem()
	t2 := newBaseFieldElem()

	bfeSquare(t1, &a.x)
	bfeSquare(t2, &a.y)
	bfeAdd(t1, t1, t2)
	t1.Invert(t1)

	bfeMul(&e.x, &a.x, t1)

	t1.Neg(t1)
	bfeMul(&e.y, &a.y, t1)

	return e
}

func (e *fieldElem) reduce() {
	e.x.reduce()
	e.y.reduce()
}

func (e *fieldElem) sign() uint64 {
	if e.x.IsZero() {
		return e.y[1] >> 62
	}
	return e.x[1] >> 62
}

//go:noescape
func feAdd(c, a, b *fieldElem)

//go:noescape
func feSub(c, a, b *fieldElem)

//go:noescape
func feMul(c, a, b *fieldElem)

//go:noescape
func feSquare(c, a *fieldElem)