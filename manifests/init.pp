# @summary Setup async-profiler
#
# @param installroot
#   Specifies the base directory where ansy-profiler should be installed. A new
#   subdirectory for each version will be created.
#
# @param mirror
#   Specifies the base URL where the distribution archive can be downloaded.
#
# @param version
#   Specifies the version of async-profiler that should be installed.
#
class async_profiler (
  Array $capabilities,
  Stdlib::Compat::Absolute_path $installroot,
  Boolean $manage_capabilities,
  Boolean $manage_symlink,
  Variant[Stdlib::HTTPUrl,Stdlib::HTTPSUrl] $mirror,
  String $symlink_name,
  String $version,
) {
  class { 'async_profiler::install': }
  -> class { 'async_profiler::config': }
}
