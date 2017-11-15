class SearchFilters < BasePage
    def initialize
      @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
      @saved_filter= Element.new(:xpath, '//android.widget.TextView[contains(@text, "Test Name")]')
      @delete_button= Element.new(:xpath, '//*[@resource-id="com.testdevlab.notifyus:id/delete_filter"]')
      @button_alert_delete = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]')
    end
  
    def visible?
      @title.visible?
      @saved_filter.visible?
    end
  
    def open_and_delete_filter
      @saved_filter.click
      @delete_button.visible?
      @delete_button.click
      @button_alert_delete.visible?
      @button_alert_delete.click
    end
  end