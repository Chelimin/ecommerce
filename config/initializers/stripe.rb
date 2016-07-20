if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_0FtUbdn95dq2uG7pjawVXla0',
    :secret_key => 'sk_test_BByZij1sM6AmDlDTo1cqPX5E'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
