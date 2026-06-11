// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_permissions_chat_private.dart';import 'get_presets_preset_id_response_data_permissions_chat_public.dart';/// Chat permissions
@immutable final class GetPresetsPresetIdResponseDataPermissionsChat {const GetPresetsPresetIdResponseDataPermissionsChat({required this.private, required this.public, });

factory GetPresetsPresetIdResponseDataPermissionsChat.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsChat(
  private: GetPresetsPresetIdResponseDataPermissionsChatPrivate.fromJson(json['private'] as Map<String, dynamic>),
  public: GetPresetsPresetIdResponseDataPermissionsChatPublic.fromJson(json['public'] as Map<String, dynamic>),
); }

final GetPresetsPresetIdResponseDataPermissionsChatPrivate private;

final GetPresetsPresetIdResponseDataPermissionsChatPublic public;

Map<String, dynamic> toJson() { return {
  'private': private.toJson(),
  'public': public.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('private') &&
      json.containsKey('public'); } 
GetPresetsPresetIdResponseDataPermissionsChat copyWith({GetPresetsPresetIdResponseDataPermissionsChatPrivate? private, GetPresetsPresetIdResponseDataPermissionsChatPublic? public, }) { return GetPresetsPresetIdResponseDataPermissionsChat(
  private: private ?? this.private,
  public: public ?? this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsChat &&
          private == other.private &&
          public == other.public; } 
@override int get hashCode { return Object.hash(private, public); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsChat(private: $private, public: $public)'; } 
 }
