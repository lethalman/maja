NULL =

SUBDIRS = \
	majac \
	tests \
	examples \
	$(NULL)

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = \
	maja-@MAJA_API_VERSION@.pc \
	$(NULL)

DISTCLEANFILES = \
	maja-@MAJA_API_VERSION@.pc \
	$(NULL)

EXTRA_DIST = \
	maja-@MAJA_API_VERSION@.pc.in \
	$(wildcard dova-vapi/*.vapi) \
	$(wildcard dova-vapi/*.deps) \
	$(wildcard vapi/*.vapi) \
	$(NULL)
