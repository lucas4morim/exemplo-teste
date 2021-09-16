require_relative 'helper'

Before do
    @web = Web.new
end

After do |cenário|
    @helper = Helper.new
    @web = Web.new
    @scenery = cenário.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.evidence(@scenery, "features/screenshots/failed") if cenário.failed?
        unless @helper.evidence(@scenery, "features/screenshots/passed")
    end
end