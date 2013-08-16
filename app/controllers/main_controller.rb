# -*- encoding : utf-8 -*-
class MainController < ApplicationController
  def index
    @companies = Company.all

    amount = @companies.count - 1
    @left_indexes = []
    @right_indexes = []

    0.step(amount,2) do |k|
      @left_indexes.push(k)
    end

    1.step(amount,2) do |k|
      @right_indexes.push(k)
    end
  end
end
