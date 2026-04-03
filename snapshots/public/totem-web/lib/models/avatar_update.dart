// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'profile_avatar_type_enum.dart';@immutable final class AvatarUpdate {const AvatarUpdate({required this.avatarType, required this.updateAvatarSeed, });

factory AvatarUpdate.fromJson(Map<String, dynamic> json) { return AvatarUpdate(
  avatarType: json['avatar_type'] != null ? ProfileAvatarTypeEnum.fromJson(json['avatar_type'] as String) : null,
  updateAvatarSeed: json['update_avatar_seed'] as bool?,
); }

final ProfileAvatarTypeEnum? avatarType;

final bool? updateAvatarSeed;

Map<String, dynamic> toJson() { return {
  if (avatarType != null) 'avatar_type': avatarType?.toJson(),
  'update_avatar_seed': ?updateAvatarSeed,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('avatar_type') &&
      json.containsKey('update_avatar_seed') && json['update_avatar_seed'] is bool; } 
AvatarUpdate copyWith({ProfileAvatarTypeEnum? Function()? avatarType, bool? Function()? updateAvatarSeed, }) { return AvatarUpdate(
  avatarType: avatarType != null ? avatarType() : this.avatarType,
  updateAvatarSeed: updateAvatarSeed != null ? updateAvatarSeed() : this.updateAvatarSeed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AvatarUpdate &&
          avatarType == other.avatarType &&
          updateAvatarSeed == other.updateAvatarSeed; } 
@override int get hashCode { return Object.hash(avatarType, updateAvatarSeed); } 
@override String toString() { return 'AvatarUpdate(avatarType: $avatarType, updateAvatarSeed: $updateAvatarSeed)'; } 
 }
