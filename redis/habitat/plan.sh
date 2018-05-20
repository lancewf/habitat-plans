pkg_name="redis"
pkg_origin="lancewf"
pkg_version="3.2.4"
vendor_origin="core"
pkg_maintainer="The Lance Finfrock <lancewf@gmail.com>"
pkg_license=("BSD-3-Clause")
pkg_description="Wrapper package for core/redis"
pkg_svc_run="redis-server $pkg_svc_config_path/redis.config"
pkg_deps=(
  ${vendor_origin}/${pkg_name}/${pkg_version}
)

pkg_exports=(
   [port]=port
   [local_only]=local_only
)

do_download() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  return 0
}
