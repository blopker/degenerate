// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodespaceWithFullRepositoryRuntimeConstraints {const CodespaceWithFullRepositoryRuntimeConstraints({this.allowedPortPrivacySettings});

factory CodespaceWithFullRepositoryRuntimeConstraints.fromJson(Map<String, dynamic> json) { return CodespaceWithFullRepositoryRuntimeConstraints(
  allowedPortPrivacySettings: (json['allowed_port_privacy_settings'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The privacy settings a user can select from when forwarding a port.
final List<String>? allowedPortPrivacySettings;

Map<String, dynamic> toJson() { return {
  'allowed_port_privacy_settings': ?allowedPortPrivacySettings,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_port_privacy_settings'}.contains(key)); } 
CodespaceWithFullRepositoryRuntimeConstraints copyWith({List<String>? Function()? allowedPortPrivacySettings}) { return CodespaceWithFullRepositoryRuntimeConstraints(
  allowedPortPrivacySettings: allowedPortPrivacySettings != null ? allowedPortPrivacySettings() : this.allowedPortPrivacySettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespaceWithFullRepositoryRuntimeConstraints &&
          listEquals(allowedPortPrivacySettings, other.allowedPortPrivacySettings); } 
@override int get hashCode { return Object.hashAll(allowedPortPrivacySettings ?? const []).hashCode; } 
@override String toString() { return 'CodespaceWithFullRepositoryRuntimeConstraints(allowedPortPrivacySettings: $allowedPortPrivacySettings)'; } 
 }
