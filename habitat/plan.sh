pkg_name=subversion
pkg_origin=core
pkg_version="1.10.2"
pkg_maintainer="Stephen Lauck <lauck@chef.io>"
pkg_license=("Apache-2.0")
pkg_source="http://mirror.cc.columbia.edu/pub/software/apache/subversion/subversion-1.10.2.tar.gz"
# pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="4f1be1bc26758c7c85c0ba6e7e8a90ce02e346607e84f44e018753f096f86577"
# pkg_deps=(core/glibc)
pkg_build_deps=(core/make core/gcc core/apr core/apr-util core/serf core/sqlite core/zlib core/lz4)
# pkg_lib_dirs=(lib)
# pkg_include_dirs=(include)
# pkg_bin_dirs=(bin)
# pkg_pconfig_dirs=(lib/pconfig)
# pkg_svc_run="haproxy -f $pkg_svc_config_path/haproxy.conf"
# pkg_exports=(
#   [host]=srv.address
#   [port]=srv.port
#   [ssl-port]=srv.ssl.port
# )
# pkg_exposes=(port ssl-port)
# pkg_binds=(
#   [database]="port host"
# )
# pkg_binds_optional=(
#   [storage]="port host"
# )
# pkg_interpreters=(bin/bash)
# pkg_svc_user="hab"
# pkg_svc_group="$pkg_svc_user"
# pkg_description="Some description."
# pkg_upstream_url="http://example.com/project-name"
