$pkg_name="tortoisesvn"
$pkg_origin="lauck"
$pkg_version="01.10.2"
$pkg_maintainer="Stephen Lauck <lauck@chef.io>"
$pkg_license=@("GPL")
$pkg_source="https://osdn.net/frs/redir.php?m=gigenet&f=%2Fstorage%2Fg%2Ft%2Fto%2Ftortoisesvn%2F1.10.1%2FApplication%2FTortoiseSVN-1.10.1.28295-x64-svn-1.10.2.msi"
$pkg_build_deps=@("core/lessmsi")
$pkg_filename=@("TortoiseSVN-1.10.1.28295-x64-svn-1.10.2.msi")

function Invoke-Unpack {
  lessmsi x (Resolve-Path "$HAB_CACHE_SRC_PATH/$pkg_filename").Path
  mkdir "$HAB_CACHE_SRC_PATH/$pkg_dirname"
  # Move-Item "" "$HAB_CACHE_SRC_PATH/$pkg_dirname"

  # Remove-Item -Recurse -Force .\AspNetMVC1
}

function Invoke-Install {
  return 0
  # Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/ASP.NET MVC 1.0/*" "$pkg_prefix" -Recurse -Force
}
