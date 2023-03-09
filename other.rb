module TestModule
  class TestService
    def initialize(param = nil)
      @param = param

    end

    def call
      @param.nil? ? "no arguments" : "class called with #{@param}"  
    end
  end
end
