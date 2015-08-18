Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :qq_connect, Setting.appid, Setting.appkey
  #{
  #:provider => 'qq_connect',
  #:uid => 'B11630C4...', # QQ call it openid
  #:info => {
    #:nickname => 'beenhero',
    #:image => 'http://qzapp.qlogo.cn/qzapp/100250034/B11630C4AAC8C17B57ECFEA80852C813/50',
    ## so little info !? I think so, QQ-Connect only provides so, you can check from the raw_info below. Or you can try TQQ instead :)
  #},
  #:credentials => {
    #:token => '2.00JjgzmBd7F...', # OAuth 2.0 access_token, which you may wish to store
    #:expires_at => 1331780640, # when the access token expires (if it expires)
    #:expires => true # if you request `offline_access` this will be false
  #},
  #:extra => {
    #:raw_info => {
      #... # little info from https://graph.qq.com/user/get_user_info
    #}
  #}
#}
end
