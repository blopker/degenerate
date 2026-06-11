// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_permissions_chat_private.dart';import 'post_presets_response_data_permissions_chat_public.dart';/// Chat permissions
@immutable final class PostPresetsResponseDataPermissionsChat {const PostPresetsResponseDataPermissionsChat({required this.private, required this.public, });

factory PostPresetsResponseDataPermissionsChat.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsChat(
  private: PostPresetsResponseDataPermissionsChatPrivate.fromJson(json['private'] as Map<String, dynamic>),
  public: PostPresetsResponseDataPermissionsChatPublic.fromJson(json['public'] as Map<String, dynamic>),
); }

final PostPresetsResponseDataPermissionsChatPrivate private;

final PostPresetsResponseDataPermissionsChatPublic public;

Map<String, dynamic> toJson() { return {
  'private': private.toJson(),
  'public': public.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('private') &&
      json.containsKey('public'); } 
PostPresetsResponseDataPermissionsChat copyWith({PostPresetsResponseDataPermissionsChatPrivate? private, PostPresetsResponseDataPermissionsChatPublic? public, }) { return PostPresetsResponseDataPermissionsChat(
  private: private ?? this.private,
  public: public ?? this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsChat &&
          private == other.private &&
          public == other.public; } 
@override int get hashCode { return Object.hash(private, public); } 
@override String toString() { return 'PostPresetsResponseDataPermissionsChat(private: $private, public: $public)'; } 
 }
