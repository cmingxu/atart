Rails.application.config.middleware.use OmniAuth::Builder do
  provider :qq_connect, Setting.qq_connect_appid, Setting.qq_connect_appkey
  provider :weibo, Setting.weibo_appid, Setting.weibo_appkey
  
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
  #
  #
  #
  #{
  #:provider => 'weibo',
  #:uid => '1234567890',
  #:info => {
    #:nickname => 'beenhero',
    #:name => 'beenhero',
    #:location => '浙江 杭州',
    #:image => 'http://tp4.sinaimg.cn/1640099215/50/1287016234/1',
    #:description => '移步twitter@beenhero',
    #:urls => {  :Blog => 'http://beenhero.com'
                #:Weibo => 'http://weibo.com/beenhero'
    #},
  #},
  #:credentials => {
    #:token => '2.00JjgzmBd7F...', # OAuth 2.0 access_token, which you may wish to store
    #:expires_at => 1331780640, # when the access token expires (if it expires)
    #:expires => true # if you request `offline_access` this will be false
  #},
  #:extra => {
    #:raw_info => {
      #... # data from /2/users/show.json, check by yourself
    #}
  #}
#}
end
