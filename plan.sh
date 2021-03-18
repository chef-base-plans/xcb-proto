pkg_name=xcb-proto
pkg_origin=core
pkg_version=1.13
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="X11 client library"
pkg_upstream_url="https://www.x.org/"
pkg_license=('MIT')
pkg_source="https://www.x.org/releases/individual/xcb/${pkg_name}-${pkg_version}.tar.bz2"
pkg_shasum="7b98721e669be80284e9bbfeab02d2d0d54cd11172b72271e47a2fe875e2bde1"
pkg_build_deps=(
  core/gcc
  core/libxml2
  core/make
  core/python2
)
pkg_pconfig_dirs=(lib/pkgconfig)

do_setup_environment() {
  push_runtime_env PYTHONPATH "${pkg_prefix}/lib/python2.7/site-packages"
}
