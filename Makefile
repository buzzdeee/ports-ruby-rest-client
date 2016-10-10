# $OpenBSD$

COMMENT =	library to access web resources via HTTP

DISTNAME =	rest-client-2.0.0
CATEGORIES =	www

HOMEPAGE =	https://github.com/nahi/httpclient

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16,<4.0 \
			net/ruby-netrc,${MODRUBY_FLAVOR}>=0.8,<1.0 \
			www/ruby-http-cookie,${MODRUBY_FLAVOR}>=1.0.0,<2.0

.include <bsd.port.mk>
