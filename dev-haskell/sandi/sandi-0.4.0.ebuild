# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Data encoding library"
HOMEPAGE="http://hackage.haskell.org/package/sandi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE="+with-conduit"

RDEPEND=">=dev-haskell/stringsearch-0.3:=[profile?] <dev-haskell/stringsearch-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	with-conduit? ( >=dev-haskell/conduit-1.2:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
			>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.9:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hunit
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/tasty-th )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag with-conduit with-conduit)
}
