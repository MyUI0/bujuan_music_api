class Api {
  // 用户部分
  static const String loginCellPhone = '/api/w/login/cellphone'; //手机号登录
  static const String loginCellEmail = ''; //邮箱号登录
  static const String sendSmsCode = '/api/sms/captcha/sent'; //发送验证码
  static const String verifySmsCode = '/api/sms/captcha/verify'; //验证验证码
  static const String userInfo = '/api/nuser/account/get'; //用户信息
  static const String qrCodeKey = '/api/login/qrcode/unikey'; //生成二维码key
  static const String checkQrCode = '/api/login/qrcode/client/login'; //检测二维码
  static const String logout = '/api/logout'; //退出登录
  static const String userPlaylist = '/api/user/playlist';//用户歌单
  static const String userLikeList = '/api/song/like/get';//用户喜欢列表
  // 推荐部分
  static const String recommendSongs = '/api/v3/discovery/recommend/songs';//每日推荐歌曲
  static const String recommendResource = '/api/v1/discovery/recommend/resource';//每日推荐歌单
  static const String recommendDislike = '/api/v2/discovery/recommend/dislike';//对推荐不感兴趣

  //top系列
  static const String topArtist = '/api/artist/top';//热门歌手
}
