class ParametersPage < BasePage
    def initialize
      @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Parametri")]')
      @field_name = Element.new(:xpath, '//android.widget.TextView[contains(@text, "NOSAUKUMS")]')
      @field_year = Element.new(:xpath, '//android.widget.TextView[contains(@text, "GADS")]')
    end
  
    def visible?
      @title.visible?
      @field_name.visible?
      @field_year.visible?
    end
end
