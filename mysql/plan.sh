pkg_name=mysql
pkg_origin=lancewf
pkg_version=5.7.21
vendor_origin="core"
pkg_maintainer='The Lance Finfrock <lancewf@gmail.com>'
pkg_license=('GPL-2.0')
pkg_upstream_url=https://www.mysql.com/
pkg_description="Wrapper package for core/mysql"
pkg_deps=(
  ${vendor_origin}/${pkg_name}/${pkg_version}
)

pkg_svc_user="hab"

pkg_exports=(
  [port]=port
  [password]=app_password
  [username]=app_username
  [bind]=bind
  [local_only]=local_only
)

do_build() {
  return 0
}

do_install() {
  return 0
}
