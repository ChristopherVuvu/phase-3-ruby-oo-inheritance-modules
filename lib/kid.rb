require_relative './dance_module'
require_relative './meta_dancing_module'

class Kid
    extend MetaDancing
    include Dance
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

buster = Kid.new
buster.jump
# => "Look how high I'm jumping!"
buster.take_a_bow
# => "Thank you, thank you. It was a pleasure to dance for you all."