Rails.configuration.stripe = {
  :publishable_key =>  'pk_test_v4LwI4fmO0f8ZrRfCrSJSAmt' ,
  :secret_key      => 'sk_test_3aZuluJM6vFjdJF5PqBWPb2d'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]