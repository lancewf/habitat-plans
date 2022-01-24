# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/
pkg_name=php-fpm
pkg_origin=lancewf
pkg_version="7.4.16"
pkg_maintainer="Lance Finfrock <lancewf@gmail.com>"
pkg_license=('Apache-2.0')
pkg_source=""
pkg_upstream_url="https://github.com/lancewf/habitat-plans"

pkg_deps=(core/php/7.4.16/20211019171114)

pkg_svc_run="php-fpm --fpm-config ${pkg_svc_config_path}/php-fpm.conf -c ${pkg_svc_config_path}"

pkg_exports=(
  [port]=port
  [local_only]=local_only
)

do_build(){
  return 0
}

do_install() {
  return 0
}
