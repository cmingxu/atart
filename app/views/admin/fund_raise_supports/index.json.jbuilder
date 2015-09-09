json.array!(@fund_raise_supports) do |fund_raise_support|
  json.extract! fund_raise_support, :id, :fund_raise_id, :user_id, :amount, :message, :status, :pay_method, :pay_bank
  json.url fund_raise_support_url(fund_raise_support, format: :json)
end
