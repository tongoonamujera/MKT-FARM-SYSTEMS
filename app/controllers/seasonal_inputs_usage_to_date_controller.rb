class SeasonalInputsUsageToDateController < ApplicationController
  def index 
    @seeds= InputStoresUsage.where('types =?',"Seed").pluck(:input_name).uniq
    @fertilisers= InputStoresUsage.where('types =?',"Fertiliser").pluck(:input_name).uniq
    @chemicals= InputStoresUsage.where('types =?',"Chemical").pluck(:input_name).uniq
    @fuels= InputStoresUsage.where('types =?',"Fuel").pluck(:input_name).uniq
    @payee = Wage.where('farm_name =?',current_user.farm_name).pluck(:payee).inject(:+)
    @nec = Wage.where('farm_name =?',current_user.farm_name).pluck(:nec).inject(:+)
    @nssa = Wage.where('farm_name =?',current_user.farm_name).pluck(:nssa).inject(:+)
  end
end
