// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TerminalConfigurationConfigurationResourceOfflineConfig {const TerminalConfigurationConfigurationResourceOfflineConfig({this.enabled = const Omittable.absent()});

factory TerminalConfigurationConfigurationResourceOfflineConfig.fromJson(Map<String, dynamic> json) { return TerminalConfigurationConfigurationResourceOfflineConfig(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
); }

/// Determines whether to allow transactions to be collected while reader is offline. Defaults to false.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
TerminalConfigurationConfigurationResourceOfflineConfig copyWith({Omittable<bool?>? enabled}) { return TerminalConfigurationConfigurationResourceOfflineConfig(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalConfigurationConfigurationResourceOfflineConfig &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'TerminalConfigurationConfigurationResourceOfflineConfig(enabled: $enabled)'; } 
 }
