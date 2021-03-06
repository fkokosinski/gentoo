# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Function (graph) tracer for user-space"
HOMEPAGE="https://github.com/namhyung/uftrace"
SRC_URI="https://github.com/namhyung/uftrace/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="test"

RDEPEND="
	dev-lang/python:2.7
	sys-devel/gcc:*[cxx]
	sys-libs/ncurses:=
	virtual/libelf:=
"
DEPEND="${RDEPEND}"

src_prepare() {
	default
	sed -i -e "s/ARCH/MYARCH/g" -e "/ldconfig/d" Makefile || die
}
