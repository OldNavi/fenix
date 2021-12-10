PKG_NAME="libplayer_aml"
PKG_VERSION="7dcf52ba3c3b09b6d57e3d1c1ddd8b24967be22b"
PKG_SHA256="26649bebfaa24ece096ac1a557ad00736359733f2bf3c0a9614b5fedba934631"
PKG_SOURCE_DIR="libplayer_aml-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/libplayer_aml"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Interface library for Amlogic media codecs."
PKG_SOURCE_NAME="libplayer_aml-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libplayer_aml
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libplayer_aml/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/libplayer_aml
}
