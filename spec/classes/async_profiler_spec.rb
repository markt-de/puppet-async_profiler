require 'spec_helper'

PROFILER_VERSION = '1.8'.freeze

describe 'async_profiler' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      context 'with default parameters' do
        let :params do
          {
            version: PROFILER_VERSION.to_s,
          }
        end

        it { is_expected.to compile.with_all_deps }
      end
    end
  end
end
