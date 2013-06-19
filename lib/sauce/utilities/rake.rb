module Sauce
  module Utilities
    module Rake

      def self.sauce_helper
        helper_text = <<-ENDHEADER
# You should edit this file with the browsers you wish to use
# For options, check out http://saucelabs.com/docs/platforms
require "sauce"
        ENDHEADER

        helper_text << "require \"sauce/capybara\"" if Object.const_defined? "Capybara"
        helper_text << <<-ENDFILE

Sauce.config do |config|
  config[:browsers] = [
    ["OS", "BROWSER", "VERSION"],
    ["OS", "BROWSER", "VERSION"]
  ]
end
        ENDFILE

        return helper_text
      end
    end
  end
end