class CreateFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]')
    @titles_category = ElementGroup.new(:id, 'main_row_text')
    @menu_button = Element.new(:xpath, '//*[@class="android.widget.ImageButton"]')
    @settings_button= Element.new(:xpath, '//*[@resource-id="com.testdevlab.notifyus:id/item_name"][@text="Iestatījumi"]')
  end

  def visible?
    @title.visible?
    @titles_category.visible?
  end

  def open_category(name)
    @titles_category.click_by_text(name)
  end

  def open_settings
    @menu_button.click
    @settings_button.visible?
    @settings_button.click
  end
end