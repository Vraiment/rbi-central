# typed: true

# source version: 3.13.0
# https://github.com/rspec/rspec-core/releases/tag/v3.13.0
# source commit: c8e7269707ddb1ac45576752a051aa36ddf5fd04
# https://github.com/rspec/rspec-core/blob/c8e7269707ddb1ac45576752a051aa36ddf5fd04

# START_FILE: rspec/core.rb
module RSpec
  # TODO: imports
  # TODO: extend RSpec::Core::Warnings

  sig { void }
  def self.reset; end

  sig { void }
  def self.clear_examples; end

  sig { returns(RSpec::Core::Configuration) }
  def self.configuration; end

  sig { params(blk: T.nilable(T.proc.params(arg0: RSpec::Core::Configuration).void)).void }
  def self.configure(&blk); end

  sig { returns(RSpec::Core::Example) }
  def self.current_example; end

  sig { returns(Symbol) }
  def self.current_scope; end
end
# END_FILE: rspec/core.rb

# START_FILE: `rspec/core/configuration.rb
class RSpec::Core::Configuration # rubocop:disable Metrics/ClassLength
  # TODO: include RSpec::Core::Hooks
  # TODO: include Readers

  sig { returns(T.nilable(String)) }
  attr_accessor :default_path

  sig { returns(T::Boolean) }
  def default_path?; end

  sig { returns(T.nilable(T::Boolean)) }
  attr_accessor :drb

  sig { returns(T::Boolean) }
  def drb?; end

  sig { returns(T.nilable(Integer)) }
  attr_accessor :drb_port

  sig { returns(T::Boolean) }
  def drb_port?; end

  sig { returns(T.nilable(IO)) }
  attr_accessor :error_stream

  sig { returns(T::Boolean) }
  def error_stream?; end

  sig { params(value: BasicObject).void }
  def expose_dsl_globally=(value); end

  sig { returns(T::Boolean) }
  def expose_dsl_globally?; end

  sig { returns(T.any(IO, String)) }
  def deprecation_stream; end

  sig { params(deprecation_stream: T.any(IO, String)).void }
  def deprecation_stream=(deprecation_stream); end

  sig { returns(String) }
  attr_reader :example_status_persistence_file_path

  sig { params(value: String).void }
  def example_status_persistence_file_path=(value); end

  sig { returns(T.nilable(T::Boolean)) }
  attr_reader :only_failures

  sig { returns(T.nilable(T::Boolean)) }
  def only_failures?; end

  sig { returns(T.nilable(T.any(T::Boolean, Integer))) }
  attr_reader :fail_fast

  sig { params(fail_fast: T.nilable(T.any(T::Boolean, Integer, String))).returns(T.nilable(T.any(T::Boolean, Integer))) }
  def fail_fast=(fail_fast); end

  sig { returns(T.nilable(T::Boolean)) }
  attr_accessor :dry_run

  sig { returns(T::Boolean) }
  def dry_run?; end

  sig { returns(T.nilable(Integer)) }
  attr_accessor :failure_exit_code

  sig { returns(T::Boolean) }
  def failure_exit_code?; end

  sig { returns(T.nilable(T::Boolean)) }
  attr_accessor :fail_if_no_examples

  sig { returns(T::Boolean) }
  def fail_if_no_examples?; end

  sig { returns(T::Array[String]) }
  attr_reader :requires

  sig { returns(T::Array[String]) }
  attr_reader :libs

  sig { returns(T.nilable(T.any(IO, String))) }
  attr_accessor :output_stream

  sig { returns(String) }
  attr_accessor :pattern

  sig { returns(String) }
  attr_accessor :exclude_pattern

  sig { returns(T.nilable(T::Array[String])) }
  attr_accessor :project_source_dirs

  sig { returns(T::Boolean) }
  def project_source_dirs?; end

  sig { params(profile_examples: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
  attr_writer :profile_examples

  sig { returns(T::Boolean) }
  def profile_examples?; end

  # TODO
  # attr_accessor :run_all_when_everything_filtered

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :success_color

  sig { returns(T::Boolean) }
  def success_color?; end

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :pending_color

  sig { returns(T::Boolean) }
  def pending_color?; end

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :failure_color

  sig { returns(T::Boolean) }
  def failure_color?; end

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :default_color

  sig { returns(T::Boolean) }
  def default_color?; end

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :fixed_color

  sig { returns(T::Boolean) }
  def fixed_color?; end

  sig { returns(T.nilable(Symbol)) }
  attr_accessor :detail_color

  sig { returns(T::Boolean) }
  def detail_color?; end

  sig { returns(T.nilable(T::Boolean)) }
  attr_accessor :silence_filter_announcements

  sig { returns(T::Boolean) }
  def silence_filter_announcements?; end

  sig { params(_value: T.anything).void }
  def treat_symbols_as_metadata_keys_with_true_values=(_value); end

  sig { returns(Symbol) }
  attr_accessor :shared_context_metadata_behavior

  sig { returns(T.nilable(Time)) }
  attr_accessor :start_time

  sig { returns(T::Boolean) }
  def start_time?; end

  sig { returns(T.nilable(T::Boolean)) }
  attr_accessor :threadsafe

  sig { returns(T::Boolean) }
  def threadsafe?; end

  # ...

  sig { params(frameworks: T.any(Symbol, Module), block: T.proc.params(arg0: T.anything).void).void }
  def expect_with(*frameworks, &block); end

  # ...

  sig { void }
  def disable_monkey_patching!; end
end
# END_FILE: rspec/core/configuration.rb
