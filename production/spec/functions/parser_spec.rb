# frozen_string_literal: true

require 'spec_helper'

describe 'parser' do
  # please note that these tests are examples only
  # you will need to replace the params and return value
  # with your expectations
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }

  Puppet::Functions.create_function(:'extract_from_brackets') do
    dispatch :up do
      param 'String', :some_string
    end
  
    def up(some_string)
      return some_string.upcase
    end
  end
end
