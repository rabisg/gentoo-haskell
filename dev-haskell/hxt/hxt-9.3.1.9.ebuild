# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A collection of tools for processing XML with Haskell"
HOMEPAGE="http://www.fh-wedel.de/~si/HXmlToolbox/index.html"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+network-uri"

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-1:=[profile?]
	>=dev-haskell/hunit-1.2:=[profile?] <dev-haskell/hunit-2:=[profile?]
	>=dev-haskell/hxt-charproperties-9.1:=[profile?] <dev-haskell/hxt-charproperties-10:=[profile?]
	>=dev-haskell/hxt-regex-xmlschema-9:=[profile?] <dev-haskell/hxt-regex-xmlschema-10:=[profile?]
	>=dev-haskell/hxt-unicode-9.0.1:=[profile?] <dev-haskell/hxt-unicode-10:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	network-uri? ( >=dev-haskell/network-uri-2.6:=[profile?] )
	!network-uri? ( >=dev-haskell/network-2.4:=[profile?] <dev-haskell/network-2.6:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag network-uri network-uri)
}
