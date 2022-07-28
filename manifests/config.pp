# @summary Auxiliary configuration for async-profiler
# @api private
class async_profiler::config {
  assert_private()

  $distribution_dir = "async-profiler-${async_profiler::version}-linux-x64"
  $install_dir = "${async_profiler::installroot}/${distribution_dir}"
  $profiler_exec = "${install_dir}/profiler.sh"

  if ($async_profiler::manage_capabilities) {
    file_capability { $profiler_exec:
      capability => $async_profiler::capabilities,
    }
  }
}
