# Require everything except the global extensions of class and object. This
# supports wrapping rspec's mocking functionality without invading every
# object in the system.

require 'rspec/support/caller_filter'
require 'rspec/support/warnings'
require 'rspec/mocks/instance_method_stasher'
require 'rspec/mocks/method_double'
require 'rspec/mocks/argument_matchers'
require 'rspec/mocks/example_methods'
require 'rspec/mocks/proxy'
require 'rspec/mocks/test_double'
require 'rspec/mocks/argument_list_matcher'
require 'rspec/mocks/message_expectation'
require 'rspec/mocks/order_group'
require 'rspec/mocks/error_generator'
require 'rspec/mocks/space'
require 'rspec/mocks/extensions/marshal'
require 'rspec/mocks/any_instance/chain'
require 'rspec/mocks/any_instance/stub_chain'
require 'rspec/mocks/any_instance/stub_chain_chain'
require 'rspec/mocks/any_instance/expect_chain_chain'
require 'rspec/mocks/any_instance/expectation_chain'
require 'rspec/mocks/any_instance/message_chains'
require 'rspec/mocks/any_instance/recorder'
require 'rspec/mocks/mutate_const'
require 'rspec/mocks/matchers/have_received'
require 'rspec/mocks/matchers/receive'
require 'rspec/mocks/matchers/receive_messages'
require 'rspec/mocks/matchers/receive_message_chain'
require 'rspec/mocks/message_chain'
require 'rspec/mocks/targets'
require 'rspec/mocks/syntax'
require 'rspec/mocks/configuration'
require 'rspec/mocks/verifying_double'