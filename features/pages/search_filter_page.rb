class SearchFilters < BasePage
    def initialize
      @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
      @saved_filter= Element.new(:xpath, '//android.widget.TextView[contains(@text, "Test Name Transports")]')
      @saved_filter_vakances= Element.new(:xpath, '//android.widget.TextView[contains(@text, "Test Name Vakances")]')
      @saved_filter_ipasumi= Element.new(:xpath, '//android.widget.TextView[contains(@text, "Test Name Ipasumi")]')
      @delete_button= Element.new(:xpath, '//*[@resource-id="com.testdevlab.notifyus:id/delete_filter"]')
      @button_alert_delete = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]')
    end
  
    def visible?
      @title.visible?
    end
  
    def open_and_delete_filter
      @saved_filter.click
      @delete_button.visible?
      @delete_button.click
      @button_alert_delete.visible?
      @button_alert_delete.click
    end

    def open_and_delete_vakances_filter
        @saved_filter_vakances.click
        @delete_button.visible?
        @delete_button.click
        @button_alert_delete.visible?
        @button_alert_delete.click
    end

    def open_and_delete_ipasumi_filter
        @saved_filter_ipasumi.click
        @delete_button.visible?
        @delete_button.click
        @button_alert_delete.visible?
        @button_alert_delete.click
    end
  end