RSpec.configue do |config|
  config.include Devise::TestHelpers, :type => :controller
end