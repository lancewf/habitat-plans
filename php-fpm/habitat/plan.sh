# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/
pkg_repo=lemp
pkg_name=php-fpm
pkg_origin=lancewf
pkg_version="0.2.0"
pkg_maintainer="Lance Finfrock <lfinfrock@chef.io>"
pkg_license=('Apache-2.0')
pkg_source=""
pkg_upstream_url="https://github.com/lancewf/habitat-plans"

pkg_svc_user=root
pkg_svc_group=$pkg_svc_user

pkg_svc_run="php-fpm -y $pkg_svc_config_path/php-fpm.conf"

pkg_deps=(core/php core/readline)

pkg_exports=(
  [port]=port
  [bind]=bind
)

pkg_binds=()

do_build(){
  return 0
}

do_install() {
  return 0
}
