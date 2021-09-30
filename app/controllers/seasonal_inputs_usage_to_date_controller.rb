class SeasonalInputsUsageToDateController < ApplicationController
  def index 
    @seeds= InputStoresUsage.where('types =?',"Seed").pluck(:input_name).uniq
    @fertilisers= InputStoresUsage.where('types =?',"Fertiliser").pluck(:input_name).uniq
    @chemicals= InputStoresUsage.where('types =?',"Chemical").pluck(:input_name).uniq
    @fuels= InputStoresUsage.where('types =?',"Fuel").pluck(:input_name).uniq
  end
end
