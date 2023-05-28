require_relative './dance_module'
require_relative './meta_dancing_module'

class Dancer 
    extend MetaDancing
    include Dance
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end

angelina = Dancer.new
angelina.twirl
# => "I'm twirling!"
angelina.jump
# => "Look how high I'm jumping!"