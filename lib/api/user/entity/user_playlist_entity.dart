import 'package:bujuan_music_api/generated/json/base/json_field.dart';
import 'package:bujuan_music_api/generated/json/user_playlist_entity.g.dart';
import 'dart:convert';
export 'package:bujuan_music_api/generated/json/user_playlist_entity.g.dart';

@JsonSerializable()
class UserPlaylistEntity {
	bool? more = false;
	List<UserPlaylistPlaylist>? playlist = [];
	int? code = 0;

	UserPlaylistEntity();

	factory UserPlaylistEntity.fromJson(Map<String, dynamic> json) => $UserPlaylistEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylist {
	List<dynamic>? subscribers = [];
	bool? subscribed = false;
	UserPlaylistPlaylistCreator? creator;
	@JSONField(name: "artists ")
	dynamic artists;
	@JSONField(name: "tracks ")
	dynamic tracks;
	@JSONField(name: "top ")
	bool? top = false;
	@JSONField(name: "updateFrequency ")
	dynamic updatefrequency;
	@JSONField(name: "backgroundCoverId ")
	int? backgroundcoverid = 0;
	@JSONField(name: "backgroundCoverUrl ")
	String? backgroundcoverurl = '';
	@JSONField(name: "titleImage ")
	int? titleimage = 0;
	@JSONField(name: "titleImageUrl ")
	String? titleimageurl = '';
	@JSONField(name: "englishTitle ")
	String? englishtitle = '';
	@JSONField(name: "opRecommend ")
	bool? oprecommend = false;
	@JSONField(name: "subscribedCount ")
	int? subscribedcount = 0;
	@JSONField(name: "cloudTrackCount ")
	int? cloudtrackcount = 0;
	@JSONField(name: "userId ")
	int? userid = 0;
	@JSONField(name: "totalDuration ")
	int? totalduration = 0;
	@JSONField(name: "coverImgId ")
	int? coverimgid = 0;
	@JSONField(name: "privacy ")
	int? privacy = 0;
	@JSONField(name: "trackUpdateTime ")
	int? trackupdatetime = 0;
	@JSONField(name: "trackCount ")
	int? trackcount = 0;
	@JSONField(name: "updateTime ")
	int? updatetime = 0;
	@JSONField(name: "commentThreadId ")
	String? commentthreadid = '';
	@JSONField(name: "coverImgUrl ")
	String? coverimgurl = '';
	int? specialType = 0;
	bool? anonimous = false;
	int? createTime = 0;
	bool? highQuality = false;
	bool? newImported = false;
	int? trackNumberUpdateTime = 0;
	int? playCount = 0;
	int? adType = 0;
	String? description = '';
	List<String>? tags = [];
	bool? ordered = false;
	int? status = 0;
	String? name = '';
	int? id = 0;
	@JSONField(name: "coverImgId_str")
	String? coverimgidStr = '';
	bool? copied = false;
	@JSONField(name: "containsTracks ")
	bool? containstracks = false;

	UserPlaylistPlaylist();

	factory UserPlaylistPlaylist.fromJson(Map<String, dynamic> json) => $UserPlaylistPlaylistFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistPlaylistToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylistCreator {
	bool? defaultAvatar = false;
	int? province = 0;
	int? authStatus = 0;
	bool? followed = false;
	String? avatarUrl = '';
	int? accountStatus = 0;
	int? gender = 0;
	int? city = 0;
	int? birthday = 0;
	int? userId = 0;
	int? userType = 0;
	String? nickname = '';
	String? signature = '';
	String? description = '';
	String? detailDescription = '';
	int? avatarImgId = 0;
	int? backgroundImgId = 0;
	String? backgroundUrl = '';
	int? authority = 0;
	bool? mutual = false;
	List<String>? expertTags = [];
	int? djStatus = 0;
	int? vipType = 0;
	String? remarkName = '';
	int? authenticationTypes = 0;
	String? avatarDetail = '';
	String? backgroundImgIdStr = '';
	bool? anchor = false;
	String? avatarImgIdStr = '';
	@JSONField(name: "avatarImgId_str")
	String? avatarimgidStr = '';

	UserPlaylistPlaylistCreator();

	factory UserPlaylistPlaylistCreator.fromJson(Map<String, dynamic> json) => $UserPlaylistPlaylistCreatorFromJson(json);

	Map<String, dynamic> toJson() => $UserPlaylistPlaylistCreatorToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}