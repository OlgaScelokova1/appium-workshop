class SettingsTest
    def initialize(pages)
      @pages = pages
    end
  
    def open_settings_page
      @pages.page_create_filter.open_settings
      page_visible= @pages.page_settings.visible?
      print page_visible
      raise 'Lapa nav redzama' unless page_visible
    end

  end