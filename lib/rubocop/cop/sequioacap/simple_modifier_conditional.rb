# frozen_string_literal: true

require 'rubocop'

module RuboCop
  module Cop
    module Sequioacap
      # Cop to tackle prevent more complicated modifier if/unless statements
      # https://github.com/airbnb/ruby#only-simple-if-unless
      class SimpleModifierConditional < Cop
        MSG = 'Modifier if/unless usage is okay when the body is simple, ' \
          'the condition is simple, and the whole thing fits on one line. ' \
          'Otherwise, avoid modifier if/unless.'.freeze

        def_node_matcher :multiple_conditionals?, '(if ({and or :^} ...) ...)'

        def on_if(node)
          return unless node.modifier_form?

          add_offense(node) if multiple_conditionals?(node) || node.multiline?
        end
      end
    end
  end
  end
