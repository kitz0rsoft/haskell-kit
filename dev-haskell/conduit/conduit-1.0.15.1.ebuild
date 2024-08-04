# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Streaming data processing library"
HOMEPAGE="https://github.com/snoyberg/conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE="nohandles"

RDEPEND=">=dev-haskell/lifted-base-0.1:=[profile?]
	dev-haskell/mmorph:=[profile?]
	>=dev-haskell/monad-control-0.3.1:=[profile?] <dev-haskell/monad-control-0.4:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/resourcet-0.4.3:=[profile?] <dev-haskell/resourcet-0.5:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/text-stream-decode-0.1.0.4:=[profile?] <dev-haskell/text-stream-decode-0.2:=[profile?]
	>=dev-haskell/transformers-0.2.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/transformers-base-0.4.1:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/void-0.5.5:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
	test? ( >=dev-haskell/hspec-1.3
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag nohandles nohandles)
}
