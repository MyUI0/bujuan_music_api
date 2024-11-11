class Api {
  static const String loginCellPhone = '/api/w/login/cellphone'; //手机号登录
  static const String loginCellEmail = ''; //邮箱号登录
  static const String sendSmsCode = '/api/sms/captcha/sent'; //发送验证码
  static const String verifySmsCode = '/api/sms/captcha/verify'; //验证验证码
  static const String userInfo = '/api/nuser/account/get'; //用户信息
  static const String qrCodeKey = '/api/login/qrcode/unikey';//生成二维码key
  static const String a = '/api/personalized/playlist';
}
