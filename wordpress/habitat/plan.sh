pkg_name=wordpress
pkg_origin=lancewf
pkg_version="4.7.4"
pkg_maintainer="Lance Finfrock <lancewf@gmail.com>"
pkg_license=('Apache-2.0')
pkg_source="https://wordpress.org/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="c11ce7580f21dfbca70dd6f817d3376385be6d34cf4d86f233eae3acb5fd87fd"
pkg_description="installs wordpress"
pkg_upstream_url="https://wordpress.org/"

source_dir=$HAB_CACHE_SRC_PATH/${pkg_name}

pkg_svc_user=root
pkg_svc_group=$pkg_svc_user

pkg_deps=(core/nginx core/mysql-client)

pkg_exports=(
   [port]=http.listen.port
   [local_only]=http.listen.local_only
)

pkg_binds=(
  [database]="port username password local_only"
  [php]="port local_only"
)


do_build(){
  return 0
}

do_install() {
  cp -r "$source_dir" "$pkg_prefix/public_html/"
}

