pkg_name=sbt
pkg_origin=lancewf
pkg_version=1.1.4
pkg_maintainer="Lance Finfrock <lancewf@gmail.com>"
pkg_upstream_url=https://github.com/sbt/sbt
pkg_description="sbt is a build tool for Scala, Java, and more."
pkg_source=https://github.com/sbt/sbt/releases/download/v${pkg_version}/sbt-${pkg_version}.tgz
pkg_shasum=2fbd592b1cfd7bc3612154a32925d5843b602490e8c8977a53fa86b35e308341
pkg_license=('BSD-3-Clause')
pkg_deps=(core/coreutils core/jre8)
pkg_bin_dirs=(bin)

do_build() {
    return 0
}

do_install() {
    PROJECT_ROOT="${HAB_CACHE_SRC_PATH}/sbt"
    mkdir -p $pkg_prefix
    build_line "---- Copying $PROJECT_ROOT to $pkg_prefix/ ----"
    cp -r $PROJECT_ROOT/* $pkg_prefix/

    export JAVA_HOME=$(hab pkg path core/jre8)
    build_line "Setting JAVA_HOME=$JAVA_HOME"
    fix_interpreter "$pkg_prefix/bin/sbt" core/coreutils bin/env
    fix_interpreter "$pkg_prefix/bin/sbt-launch-lib.bash" core/coreutils bin/env
}
