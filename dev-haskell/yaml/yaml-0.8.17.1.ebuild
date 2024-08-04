# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Support for parsing and rendering YAML documents"
HOMEPAGE="https://github.com/snoyberg/yaml/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+no-examples no-exe no-unicode system-libyaml"

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/attoparsec-0.11.3.0:=[profile?]
	>=dev-haskell/conduit-1.1.0:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	dev-haskell/enclosed-exceptions:=[profile?]
	>=dev-haskell/resourcet-0.3:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/transformers-0.1:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	!no-examples? ( dev-haskell/raw-strings-qq:=[profile?] )
	system-libyaml? ( dev-libs/libyaml )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/aeson-qq
		dev-haskell/base-compat
		>=dev-haskell/hspec-1.3
		dev-haskell/hunit
		dev-haskell/mockery )
	system-libyaml? ( virtual/pkgconfig )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag no-examples no-examples) \
		$(cabal_flag no-exe no-exe) \
		$(cabal_flag no-unicode no-unicode) \
		$(cabal_flag system-libyaml system-libyaml)
}
