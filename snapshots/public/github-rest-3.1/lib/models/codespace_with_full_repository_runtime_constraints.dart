// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CodespaceWithFullRepositoryRuntimeConstraints {const CodespaceWithFullRepositoryRuntimeConstraints({this.allowedPortPrivacySettings = const Omittable.absent()});

factory CodespaceWithFullRepositoryRuntimeConstraints.fromJson(Map<String, dynamic> json) { return CodespaceWithFullRepositoryRuntimeConstraints(
  allowedPortPrivacySettings: json.containsKey('allowed_port_privacy_settings') ? Omittable((json['allowed_port_privacy_settings'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// The privacy settings a user can select from when forwarding a port.
final Omittable<List<String>?> allowedPortPrivacySettings;

Map<String, dynamic> toJson() { return {
  if (allowedPortPrivacySettings.isPresent) 'allowed_port_privacy_settings': allowedPortPrivacySettings.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowed_port_privacy_settings'}.contains(key)); } 
CodespaceWithFullRepositoryRuntimeConstraints copyWith({Omittable<List<String>?>? allowedPortPrivacySettings}) { return CodespaceWithFullRepositoryRuntimeConstraints(
  allowedPortPrivacySettings: allowedPortPrivacySettings ?? this.allowedPortPrivacySettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespaceWithFullRepositoryRuntimeConstraints &&
          allowedPortPrivacySettings.isPresent == other.allowedPortPrivacySettings.isPresent &&
          listEquals(allowedPortPrivacySettings.value, other.allowedPortPrivacySettings.value); } 
@override int get hashCode { return Object.hashAll(allowedPortPrivacySettings.value ?? const []).hashCode; } 
@override String toString() { return 'CodespaceWithFullRepositoryRuntimeConstraints(allowedPortPrivacySettings: $allowedPortPrivacySettings)'; } 
 }
