import 'api.dart';
import 'bujuan_music_api.dart';
import 'music_interceptors.dart';

mixin UserApi {
  userInfo() {
    BujuanMusicManager().post(url: Api.userInfo, options: joinOptions(encryptType: EncryptType.weApi), data: {});
  }

  /// 登录手机号接口
  ///
  /// [phone] 手机号（必填）
  /// [password] 密码（可选，提供验证码时无效）
  /// [captcha] 验证码（可选，若提供此参数，则 [password] 失效）
  /// [countryCode] 国家代码（可选，默认为 '86'）
  /// [clientType] 客户端类型（可选，默认为 'android'）
  /// [rememberLogin] 是否记住登录状态（可选，默认为 true）
  /// [https] 是否使用 HTTPS 请求（可选，默认为 true）
  void loginCellPhone({
    required String phone,
    String? password,
    String? captcha,
    String countryCode = '86',
    String clientType = 'android',
    bool rememberLogin = true,
    bool https = true,
  }) {
    final data = {
      'phone': phone,
      if (captcha == null) 'password': password ?? '', // 只有未提供验证码时才包含密码
      if (captcha != null) 'captcha': captcha, // 提供验证码时忽略密码
      'countrycode': countryCode,
      'clientType': clientType,
      'rememberLogin': rememberLogin,
      'https': https,
    };

    BujuanMusicManager().post(url: Api.loginCellPhone, options: joinOptions(), data: data);
  }

  /// 发送验证码
  ///
  /// [phone] 手机号（必填）
  /// [ctcode] 国家代码（可选，默认为 '86'）
  sendSmsCode({required String phone, String ctcode = '86'}) {
    var data = {
      'cellphone': phone,
      'ctcode': ctcode,
    };
    BujuanMusicManager().post(url: Api.sendSmsCode, options: joinOptions(), data: data);
  }

  /// 验证验证码
  ///
  /// [phone] 手机号（必填）
  /// [captcha] 手机号（必填）
  /// [ctcode] 国家代码（可选，默认为 '86'）
  verifySmsCode({required String phone, required String captcha, String ctcode = '86'}) {
    var data = {
      'cellphone': phone,
      'captcha': captcha,
      'ctcode': ctcode,
    };
    BujuanMusicManager().post(url: Api.verifySmsCode, options: joinOptions(), data: data);
  }


}
