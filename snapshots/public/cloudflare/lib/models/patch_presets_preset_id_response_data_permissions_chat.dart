// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_permissions_chat_private.dart';import 'patch_presets_preset_id_response_data_permissions_chat_public.dart';/// Chat permissions
@immutable final class PatchPresetsPresetIdResponseDataPermissionsChat {const PatchPresetsPresetIdResponseDataPermissionsChat({required this.private, required this.public, });

factory PatchPresetsPresetIdResponseDataPermissionsChat.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsChat(
  private: PatchPresetsPresetIdResponseDataPermissionsChatPrivate.fromJson(json['private'] as Map<String, dynamic>),
  public: PatchPresetsPresetIdResponseDataPermissionsChatPublic.fromJson(json['public'] as Map<String, dynamic>),
); }

final PatchPresetsPresetIdResponseDataPermissionsChatPrivate private;

final PatchPresetsPresetIdResponseDataPermissionsChatPublic public;

Map<String, dynamic> toJson() { return {
  'private': private.toJson(),
  'public': public.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('private') &&
      json.containsKey('public'); } 
PatchPresetsPresetIdResponseDataPermissionsChat copyWith({PatchPresetsPresetIdResponseDataPermissionsChatPrivate? private, PatchPresetsPresetIdResponseDataPermissionsChatPublic? public, }) { return PatchPresetsPresetIdResponseDataPermissionsChat(
  private: private ?? this.private,
  public: public ?? this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsChat &&
          private == other.private &&
          public == other.public; } 
@override int get hashCode { return Object.hash(private, public); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsChat(private: $private, public: $public)'; } 
 }
