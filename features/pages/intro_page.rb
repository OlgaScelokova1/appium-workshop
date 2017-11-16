class IntroPage < BasePage
  def initialize
    @button_close_intro = Element.new(:id, 'close_intro')
    @button_close_alert_ok = Element.new(:xpath, '//android.widget.Button[contains(@text, "OK")]')
    @menu = Element.new(:xpath, '//*[@class="android.widget.ImageButton"]')
    @search_filter_button = Element.new(:xpath, '//*[@resource-id="com.testdevlab.notifyus:id/item_name"][@text="Meklēšanas filtri"]')
  end

  def visible?
    @button_close_intro.visible?
  end

  def close_intro_if_visible
    self.alert_accept
    if @button_close_intro.any?
      @button_close_intro.click
    end
    if @button_close_alert_ok.any?
      self.alert_accept
    end
  end

  def press_menu_button
    @menu.visible?
    @menu.click
  end

  def press_search_filters_button
    @search_filter_button.visible?
    @search_filter_button.click
  end
end