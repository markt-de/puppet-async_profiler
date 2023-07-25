require 'spec_helper_acceptance'

describe 'activemq' do
  let(:profiler_version) { '1.8' }

  context 'with default parameters' do
    let(:pp) do
      %(class { 'async_profiler':
        version => '#{profiler_version}',
      })
    end

    it { apply_manifest(pp, catch_failures: true) }
  end
end
