// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// SELinuxOptions are the labels to be applied to the container
@immutable final class SeLinuxOptions {const SeLinuxOptions({this.level, this.role, this.type, this.user, });

factory SeLinuxOptions.fromJson(Map<String, dynamic> json) { return SeLinuxOptions(
  level: json['level'] as String?,
  role: json['role'] as String?,
  type: json['type'] as String?,
  user: json['user'] as String?,
); }

/// Level is SELinux level label that applies to the container.
final String? level;

/// Role is a SELinux role label that applies to the container.
final String? role;

/// Type is a SELinux type label that applies to the container.
final String? type;

/// User is a SELinux user label that applies to the container.
final String? user;

Map<String, dynamic> toJson() { return {
  'level': ?level,
  'role': ?role,
  'type': ?type,
  'user': ?user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'level', 'role', 'type', 'user'}.contains(key)); } 
SeLinuxOptions copyWith({String Function()? level, String Function()? role, String Function()? type, String Function()? user, }) { return SeLinuxOptions(
  level: level != null ? level() : this.level,
  role: role != null ? role() : this.role,
  type: type != null ? type() : this.type,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SeLinuxOptions &&
          level == other.level &&
          role == other.role &&
          type == other.type &&
          user == other.user; } 
@override int get hashCode { return Object.hash(level, role, type, user); } 
@override String toString() { return 'SeLinuxOptions(level: $level, role: $role, type: $type, user: $user)'; } 
 }
