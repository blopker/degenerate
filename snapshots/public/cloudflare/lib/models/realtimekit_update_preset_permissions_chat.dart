// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_update_preset_permissions_chat_private.dart';import 'realtimekit_update_preset_permissions_chat_public.dart';/// Chat permissions
@immutable final class RealtimekitUpdatePresetPermissionsChat {const RealtimekitUpdatePresetPermissionsChat({this.private, this.public, });

factory RealtimekitUpdatePresetPermissionsChat.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsChat(
  private: json['private'] != null ? RealtimekitUpdatePresetPermissionsChatPrivate.fromJson(json['private'] as Map<String, dynamic>) : null,
  public: json['public'] != null ? RealtimekitUpdatePresetPermissionsChatPublic.fromJson(json['public'] as Map<String, dynamic>) : null,
); }

final RealtimekitUpdatePresetPermissionsChatPrivate? private;

final RealtimekitUpdatePresetPermissionsChatPublic? public;

Map<String, dynamic> toJson() { return {
  if (private != null) 'private': private?.toJson(),
  if (public != null) 'public': public?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'private', 'public'}.contains(key)); } 
RealtimekitUpdatePresetPermissionsChat copyWith({RealtimekitUpdatePresetPermissionsChatPrivate Function()? private, RealtimekitUpdatePresetPermissionsChatPublic Function()? public, }) { return RealtimekitUpdatePresetPermissionsChat(
  private: private != null ? private() : this.private,
  public: public != null ? public() : this.public,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsChat &&
          private == other.private &&
          public == other.public; } 
@override int get hashCode { return Object.hash(private, public); } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsChat(private: $private, public: $public)'; } 
 }
