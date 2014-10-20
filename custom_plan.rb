require 'zeus/rails'

class CustomPlan < Zeus::Rails

  # def my_custom_command
  #  # see https://github.com/burke/zeus/blob/master/docs/ruby/modifying.md
  # end

  # implemented to get zeus to random seed rspec
  def test
    RSpec.configuration.seed = rand 1..100_000 if defined? RSpec
    super
  end
end

Zeus.plan = CustomPlan.new
