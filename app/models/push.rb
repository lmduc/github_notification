class Push < ActiveRecord::Base
  class << self
    def update_from_github(params)
      push = Push.new(data: params)
      push.save
      push
    end
  end
end
