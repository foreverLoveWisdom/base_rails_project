# frozen_string_literal: true

require "amazing_print"
AmazingPrint.pry!

AmazingPrint.defaults = {
  indent: -2,
  limit: true
}
Pry.config.prompt = PryRails::RAILS_PROMPT if defined?(PryRails::RAILS_PROMPT)
