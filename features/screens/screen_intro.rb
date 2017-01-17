class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    @button_to_app = element(:id, 'close_intro')
    @filtrs = element(:id, 'intro_footer_image')
    @layout = element(:class, 'android.widget.ImageView')
    @atlasi=element(:id, 'intro_text_header')
    @veido=element(:id, 'intro_text_footer')
    @driver = driver
  end

  def visible?
    @driver.alert_accept
    @driver.find_element(@base[:type], @base[:value])
    @driver.find_element(@button_to_app[:type], @button_to_app[:value])
    @driver.find_element(@filtrs[:type], @filtrs[:value])
    @driver.find_element(@layout[:type], @layout[:value])
    @driver.find_element(@atlasi[:type], @atlasi[:value])
    @driver.find_element(@veido[:type], @veido[:value])
  end

  def close_intro
    @driver.find_element(@button_to_app[:type], @button_to_app[:value]).click
  end
end
