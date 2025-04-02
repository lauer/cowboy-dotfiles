require 'rubygems'
#require 'interactive_editor'
#require 'ap'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"
IRB.conf[:AUTO_INDENT] = true

if defined?(ap)
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
end

if defined?(Rails) && Rails.respond_to?(:logger=)
  require 'logger'
  Rails.logger = Logger.new(STDOUT)
end

if defined?(ActiveRecord) && ActiveRecord::Base.respond_to?(:logger=)
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
