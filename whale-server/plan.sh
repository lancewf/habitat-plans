# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

pkg_name=whale-server
pkg_origin=lancewf
pkg_version="0.2.0"
pkg_maintainer="Lance Finfrock <lfinfrock@chef.io>"
pkg_license=('Apache-2.0')
pkg_source=""

pkg_svc_user=root
pkg_svc_group=$pkg_svc_user

pkg_deps=(core/nginx)

pkg_binds=(
  [mmsn]="port local_only"
  [money-checker-server]="port local_only"
  [wiki]="port local_only"
)

do_build(){
  return 0
}

do_install() {
  return 0
}
