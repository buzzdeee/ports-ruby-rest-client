# $OpenBSD: Makefile,v 1.13 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	library to access web resources via HTTP

DISTNAME =	rest-client-2.0.0.rc1
CATEGORIES =	www

HOMEPAGE =	https://github.com/nahi/httpclient

# same as Ruby
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-ffi,${MODRUBY_FLAVOR} \
			mail/ruby-mime-types,${MODRUBY_FLAVOR} \
			net/ruby-netrc,${MODRUBY_FLAVOR} \
			www/ruby-http-cookie,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
