pkg_name=drupal
pkg_origin=lancewf
pkg_version="8.5.3"
pkg_maintainer="Lance Finfrock <lancewf@gmail.com>"
pkg_license=("Apache-2.0")
pkg_source="https://ftp.drupal.org/files/projects/${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="7fc105f9e04ac5ccd337ff784aeaba6b48841490d7a80fd8ddb002fac0def47b"
pkg_description="installs drupal"
pkg_upstream_url="https://www.drupal.org"

source_dir=$HAB_CACHE_SRC_PATH/${pkg_name}-${pkg_version}

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

