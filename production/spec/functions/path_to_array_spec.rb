# frozen_string_literal: true

#require 'spec_helper'

describe 'train::path_to_array' do
  # please note that these tests are examples only
  # you will need to replace the params and return value
  # with your expectations
  it { is_expected.to run.with_params(nil).and_raise_error(StandardError) }
  it { is_expected.to run.with_params(1).and_raise_error(StandardError) }
  it { is_expected.to run.with_params("a").and_raise_error(["a"]) }
  it { is_expected.to run.with_params("/tmp/a/b/c/").and_returns(["/tmp/","/tmp/a/","/tmp/a/b/","/tmp/a/b/c/"]) }
  it { is_expected.to run.with_params("c:/tmp/a/b/c/").and_returns(["c:/","c:/tmp/","c:/tmp/a/","c:/tmp/a/b/","c:/tmp/a/b/c/"]) }
  it { is_expected.to run.with_params("/tmp/a/b/c.txt").and_returns(["/","c:/tmp/","/tmp/a/","/tmp/a/b/","/tmp/a/b/c.txt"]) }
  it { is_expected.to run.with_params("c:/tmp/a/b/c.txt").and_returns(["c:/","c:/tmp/","c:/tmp/a/","c:/tmp/a/b/","c:/tmp/a/b/c.txt"]) }


end
