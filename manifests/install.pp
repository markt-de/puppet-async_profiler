# @summary Download and extract the distribution archive.
# @api private
class async_profiler::install {
  assert_private()

  include 'archive'

  $distribution_dir = "async-profiler-${async_profiler::version}-linux-x64"
  $archive_name = "${distribution_dir}.tar.gz"
  $install_dir = "${async_profiler::installroot}/${distribution_dir}"

  archive { "${async_profiler::installroot}/${archive_name}":
    source       => "${async_profiler::mirror}/v${async_profiler::version}/${archive_name}",
    extract      => true,
    extract_path => $async_profiler::installroot,
    creates      => $install_dir,
    cleanup      => false,
  }

  if ($async_profiler::manage_symlink) {
    file { "${async_profiler::installroot}/${async_profiler::symlink_name}":
      ensure  => link,
      target  => $distribution_dir,
      require => Archive["${async_profiler::installroot}/${archive_name}"]
    }
  }
}
