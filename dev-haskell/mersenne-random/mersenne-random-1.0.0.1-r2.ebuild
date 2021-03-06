# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Generate high quality pseudorandom numbers using a SIMD Fast Mersenne Twister"
HOMEPAGE="http://code.haskell.org/~dons/code/mersenne-random"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="sse2"

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag sse2 use_sse2)
#		$(cabal_flag use_altivec use_altivec) \
#		$(cabal_flag big_endian64 big_endian64)
}
