pkg_name=phpMyAdmin
pkg_origin=lancewf
pkg_version="4.8.0.1"
pkg_maintainer="Lance Finfrock <lancewf@gmail.com>"
pkg_license=("GPL-2.0")
pkg_source="https://files.phpmyadmin.net/phpMyAdmin/${pkg_version}/${pkg_name}-${pkg_version}-all-languages.zip"
pkg_filename="${pkg_name}-${pkg_version}-all-languages.zip"
pkg_description="phpMyAdmin is a free software tool written in PHP, intended to handle the administration of MySQL over the Web. phpMyAdmin supports a wide range of operations on MySQL and MariaDB. Frequently used operations (managing databases, tables, columns, relations, indexes, users, permissions, etc) can be performed via the user interface, while you still have the ability to directly execute any SQL statement."
pkg_upstream_url=https://www.phpmyadmin.net/
pkg_shasum=70242eacc29c40db3bbb7a49d2f12ac2d9ad1fff202bce2f615cb3fc7d54436a
pkg_build_deps=(core/gcc core/make)
source_dir=$HAB_CACHE_SRC_PATH/${pkg_name}-${pkg_version}-all-languages

pkg_svc_user=root
pkg_svc_group=$pkg_svc_user

pkg_deps=(
  core/glibc
  core/nginx
)

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
