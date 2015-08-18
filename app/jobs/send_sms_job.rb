class SendSmsJob < ActiveJob::Base
  queue_as :sms

  def perform(*args)
    options = {
      pid: Setting.sms_pid,
      number: Setting.sms_number,
      extend: Setting.extend,
      mobile: "",
    }
    HTTParty.get "http://125.208.1.165/appserver/sms/smsmt/send.php?pid=#{Setting.sms_pid}&number=#{Setting.sms_number}&extend=#{Setting.sms_number}&mobile=159xxxxxxxx&message=%C4%E3%BA%C3%A3%AC%B6%CC%D0%C5%B2%E2%CA%D4%A1%A3"
  end
end
