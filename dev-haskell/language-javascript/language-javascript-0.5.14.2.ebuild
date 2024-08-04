# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Parser for JavaScript"
HOMEPAGE="https://github.com/erikd/language-javascript"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.2:=[profile?]
	>=dev-haskell/mtl-1.1:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?] <dev-haskell/utf8-string-2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.9.2
	dev-haskell/happy
	test? ( dev-haskell/hunit
		>=dev-haskell/quickcheck-2
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		>=dev-haskell/utf8-light-0.4 )
"
