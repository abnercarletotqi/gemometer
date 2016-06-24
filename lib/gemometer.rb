require "gemometer/version"

require 'gemometer/errors'

require "gemometer/system"
require "gemometer/parser"

require "gemometer/notifiers/base"
require "gemometer/notifiers/hipchat"
require "gemometer/notifiers/slack"

module Gemometer
  REQUEST_GEM_SIZE = 50

  def self.notifiers
    (Notifiers.constants - [:Base]).map(&:downcase)
  end
end
