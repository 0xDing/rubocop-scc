# frozen_string_literal: true

require 'rubocop'

module RuboCop
  module Cop
    module Sequioacap
      class RailsControllerRenderActionSymbol < Cop
        MSG = 'Prefer `render` with string instead of symbol'

        def_node_matcher :render_sym?, <<-PATTERN
          (send nil? :render $(sym _))
        PATTERN

        def_node_matcher :render_with_options?, <<-PATTERN
          (send nil? :render (hash $...))
        PATTERN

        def_node_matcher :action_key?, <<-PATTERN
          (pair (sym {:action :template}) $(sym _))
        PATTERN

        def on_send(node)
          sym_node = render_sym?(node)
          option_pairs = render_with_options?(node)
          if sym_node
            add_offense(sym_node, location: :expression)
          elsif option_pairs
            option_pairs.each do |pair|
              sym_node = action_key?(pair)
              add_offense(sym_node, location: :expression) if sym_node
            end
          end
        end

        def autocorrect(node)
          lambda do |corrector|
            corrector.replace(node.source_range, "'#{node.children[0]}'")
          end
        end
      end
    end
  end
end
