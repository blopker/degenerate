// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StreamsByStreamIdResponseResultWorkerBinding {const StreamsByStreamIdResponseResultWorkerBinding({required this.enabled});

factory StreamsByStreamIdResponseResultWorkerBinding.fromJson(Map<String, dynamic> json) { return StreamsByStreamIdResponseResultWorkerBinding(
  enabled: json['enabled'] as bool,
); }

/// Indicates that the worker binding is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
StreamsByStreamIdResponseResultWorkerBinding copyWith({bool? enabled}) { return StreamsByStreamIdResponseResultWorkerBinding(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsByStreamIdResponseResultWorkerBinding &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'StreamsByStreamIdResponseResultWorkerBinding(enabled: $enabled)'; } 
 }
