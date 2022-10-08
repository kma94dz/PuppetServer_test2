# frozen_string_literal: true

require 'spec_helper'

describe 'parser' do
  # please note that these tests are examples only
  # you will need to replace the params and return value
  # with your expectations
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }

  Puppet::Functions.create_function(:'get whats etween brackets') do
    dispatch :extract_from_bracket do
      param 'String', :some_string
    end
  
    def extract_from_bracket(some_string)
      for i in 0..some_string.length do
        count=1
        if some_string[i]=="("
          for j in i..some_string.length do
            if some_string[j]=="("
              count = count+1
            if some_string[j]==")"
              count=count-1
            if count == 0
              break        
    end
  end
end
