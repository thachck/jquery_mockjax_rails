module JqueryMockjaxRails
  class Engine < ::Rails::Engine
    initializer 'jquery_mockjax_rails.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
      app.middleware.use ::JqueryMockjaxMiddleware
    end
  end
end
