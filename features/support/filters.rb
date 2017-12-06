require 'date'
module Filters
  def Filters.transports
    @transports ||= Filter.new(
        cat: 'Transports',
        sub_cats: ["Vieglie auto", "Porsche", "Porsche Panamera", "Visi"],
        params: [Hash['name' => 'GADS', 'left' => '1999', 'right' => '2017']]
    )
    @transports
  end

  def Filters.vakances
    @vakances ||= Filter.new(
        name: 'Test Name Vakances',
        cat: 'Vakances',
        sub_cats: ["Aktieris"]
    )
    @vakances
  end

  def Filters.ipasumi
    @ipasumi ||= Filter.new(
        name: 'Test Name Ipasumi',
        cat: 'Nekustamie īpašumi',
        sub_cats: ["Dzīvokļi", "Rīga", "Centrs", "Visi"],
        params: [Hash['name' => 'CENA (EUR)', 'left' => '20000', 'right' => '200000']]
    )
    @ipasumi
  end
end

class Filter
  attr_reader :name, :cat, :sub_cats, :params
  def initialize(name: '', cat: '', sub_cats: [], params: [])
    if name == ''
      @name = 'Test Name Transports'
    else
      @name = name
    end
    @cat = cat
    @sub_cats = sub_cats
    @params = params
  end
end