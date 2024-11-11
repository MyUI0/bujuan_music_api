import 'package:bujuan_music_api/generated/json/base/json_convert_content.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'cookie.dart';
import '../api/user/user_api.dart';
import 'music_interceptors.dart';

class BujuanMusicManager with UserApi {
  static final BujuanMusicManager _instance = BujuanMusicManager._internal();

  factory BujuanMusicManager() => _instance;

  late Dio _dio;

  static late CookieJar cookieJar;

  BujuanMusicManager._internal();

  init({required String cookiePath}) async {
    cookieJar = kIsWeb
        ? await MusicWebCookieJar.create()
        : await MusicFileCookieJar.create(cookiePath: cookiePath);
    _initDio();
  }

  _initDio() {
    BaseOptions options = BaseOptions(
        baseUrl: 'https://music.163.com',
      // baseUrl: 'https://music163.dalao.cool',
        receiveTimeout: const Duration(seconds: 10),
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 5));
    _dio = Dio(options);
    _dio.interceptors.add(CookieManager(cookieJar));
    _dio.interceptors.add(MusicApiInterceptors());
  }

  Future<T?> post<T>({required String url, Options? options, Object? data}) async {
    Response response = await _dio.post(url, options: options, data: data);
    return jsonConvert.convert<T>(response.data);
  }

  Dio get dio => _dio;
}
