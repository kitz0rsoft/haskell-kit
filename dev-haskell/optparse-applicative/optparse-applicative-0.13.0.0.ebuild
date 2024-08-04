# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Utilities and combinators for parsing command line options"
HOMEPAGE="https://github.com/pcapriotti/optparse-applicative"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RESTRICT=test # missing files

RDEPEND=">=dev-haskell/ansi-wl-pprint-0.6.6:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/semigroups-0.10:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.6:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.8 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck                      == 2.8.*' 'QuickCheck                      >= 2.8'
}
