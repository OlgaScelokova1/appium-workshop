class FilterTest
  def initialize(pages, filters)
    @pages = pages
    @filters = filters
  end

  def close_intro
    #@pages.page_intro.close_intro_if_visible
    @pages.page_create_filter.visible?
  end

  def open_filter_params_transports
    @pages.page_create_filter.open_category(@filters.transports.cat)
    @filters.transports.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_filter_params_transports
    @pages.page_paremeters.set_name(@filters.transports.name)
    @filters.transports.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def submit_filter_transports
    set_filter_params_transports
    @pages.page_paremeters.save_filter
  end

  def set_filter_params_vakances
    @pages.page_paremeters.set_name(@filters.vakances.name)
  end

  def set_filter_params_ipasumi
    @pages.page_paremeters.set_name(@filters.ipasumi.name)
    @filters.ipasumi.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def submit_filter_vakances
    set_filter_params_vakances
    @pages.page_paremeters.save_filter
  end

  def submit_filter_ipasumi
    set_filter_params_ipasumi
    @pages.page_paremeters.save_filter
  end

  def open_meklesanas_page
    @pages.page_intro.press_menu_button
    @pages.page_intro.press_search_filters_button
  end

  def delete_transports_filter
    @pages.page_search_filters.visible?
    @pages.page_search_filters.open_and_delete_filter
  end

  def delete_filter_vakances
    @pages.page_search_filters.visible?
    @pages.page_search_filters.open_and_delete_vakances_filter
  end

  def delete_filter_ipasumi
    @pages.page_search_filters.visible?
    @pages.page_search_filters.open_and_delete_ipasumi_filter
  end

  def open_filter_params_vakances
    @pages.page_create_filter.open_category(@filters.vakances.cat)
    @filters.vakances.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def open_filter_params_ipasumi
    @pages.page_create_filter.open_category(@filters.ipasumi.cat)
    @filters.ipasumi.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end
end