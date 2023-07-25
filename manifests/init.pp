# @summary Setup async-profiler
#
# @param capabilities
#   A list of profiler capabilities.
#
# @param installroot
#   Specifies the base directory where async-profiler should be installed. A new
#   subdirectory for each version will be created.
#
# @param manage_capabilities
#   Whether to manage profiler capabilities.
#
# @param manage_symlink
#   Whether to maintain a symlink for the current version.
#
# @param mirror
#   Specifies the base URL where the distribution archive can be downloaded.
#
# @param symlink_name
#   Controls the name of a version-independent symlink. It will always point
#   to the release specified by `$version`.
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
