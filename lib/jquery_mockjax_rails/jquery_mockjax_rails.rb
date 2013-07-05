module JqueryMockjaxRails
  class << self
    def stub args
      stubs << args
    end

    def stubs
      @stubs ||= []
    end

    def clean
      stubs = []
    end

    def js_path
      @js_path ||= '/assets/jquery.mockjax.js'
    end

    def js_output
      stubs.inject('') do |result, stub|
        "#{result}jQuery.mockjax(#{stub.to_json})\n"
      end
    end
  end
end
