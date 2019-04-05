# frozen_string_literal: true

class ChargesController < ApplicationController
  def new; end

  def create
    # Amount in cents
    @amount = (current_order.subtotal * 100).to_i

    customer = Stripe::Customer.create(
      email: current_user.email,
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'cad'
    )
    session[:order_id] = nil
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  ensure
    flash[:error] = 'Payment Accepted'
    redirect_to products_path
  end
end
