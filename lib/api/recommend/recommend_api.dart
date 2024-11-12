import 'package:bujuan_music_api/api/api.dart';
import 'package:bujuan_music_api/bujuan_music_api.dart';
import 'package:bujuan_music_api/common/music_interceptors.dart';

mixin RecommendApi{
  ///每日推荐歌曲（需要登录）
  ///
  recommendSongs() async {
    await BujuanMusicManager().post(url: Api.recommendSongs,options: createOption());
  }

  ///每日推荐歌单（需要登录）
  ///
  recommendResource() async {
    await BujuanMusicManager().post(url: Api.recommendResource,options: createOption());
  }
}