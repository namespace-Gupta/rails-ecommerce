# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order(:first_name)
  end

  def missing_email
    @customers = Customer.all.where(email: [nil, ''])
  end
end
