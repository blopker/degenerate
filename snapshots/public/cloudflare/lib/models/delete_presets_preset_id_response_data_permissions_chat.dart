// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_permissions_chat_private.dart';import 'delete_presets_preset_id_response_data_permissions_chat_public.dart';/// Chat permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsChat {const DeletePresetsPresetIdResponseDataPermissionsChat({required this.private, required this.public, });

factory DeletePresetsPresetIdResponseDataPermissionsChat.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsChat(
  private: DeletePresetsPresetIdResponseDataPermissionsChatPrivate.fromJson(json['private'] as Map<String, dynamic>),
  public: DeletePresetsPresetIdResponseDataPermissionsChatPublic.fromJson(json['public'] as Map<String, dynamic>),
); }

final DeletePresetsPresetIdResponseDataPermissionsChatPrivate private;

final DeletePresetsPresetIdResponseDataPermissionsChatPublic public;

Map<String, dynamic> toJson() { return {
  'private': private.toJson(),
  'public': public.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('private') &&
      json.containsKey('public'); } 
DeletePresetsPresetIdResponseDataPermissionsChat copyWith({DeletePresetsPresetIdResponseDataPermissionsChatPrivate? private, DeletePresetsPresetIdResponseDataPermissionsChatPublic? public, }) { return DeletePresetsPresetIdResponseDataPermissionsChat(
  private: private ?? this.private,
  public: public ?? this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsChat &&
          private == other.private &&
          public == other.public; } 
@override int get hashCode { return Object.hash(private, public); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsChat(private: $private, public: $public)'; } 
 }
