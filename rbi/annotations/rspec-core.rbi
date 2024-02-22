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
