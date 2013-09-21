
# Controller specs can set up a signed-in user
# before tests are run
RSpec.configure do |config|
  config.include Devise::TestHelpers, :type=>:controller
end