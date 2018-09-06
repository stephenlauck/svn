$pkg_name="tortoisesvn"
$pkg_origin="lauck"
$pkg_version="01.10.2"
$pkg_maintainer="Stephen Lauck <lauck@chef.io>"
$pkg_license=@("GPL")
$pkg_source="https://downloads.sourceforge.net/project/tortoisesvn/1.9.7/Application/TortoiseSVN-1.9.7.27907-x64-svn-1.9.7.msi"
$pkg_build_deps=@("core/lessmsi")
$pkg_shasum=@("a0616034862a0deb79b0601cb724c6e8e5859f9ee5e3a057d42bf3c723241396")
$pkg_fileame=@("TortoiseSVN-1.9.7.27907-x64-svn-1.9.7.msi")

function Invoke-Unpack {
  lessmsi x (Resolve-Path "$HAB_CACHE_SRC_PATH/$pkg_filename").Path
  mkdir "$HAB_CACHE_SRC_PATH/$pkg_dirname"
  Copy-Item "TortoiseSVN-1.9.7.27907-x64-svn-1.9.7\SourceDir\Program Files\TortoiseSVN" "$HAB_CACHE_SRC_PATH/$pkg_dirname" -Recurse
  Remove-Item "TortoiseSVN-1.9.7.27907-x64-svn-1.9.7" -Recurse
}

function Invoke-Install {
  Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/TortoiseSVN/bin/*" "$pkg_prefix" -Recurse -Force
}
