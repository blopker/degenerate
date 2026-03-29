// GENERATED CODE - DO NOT MODIFY BY HAND

final class StreamsRequestWorkerBinding {const StreamsRequestWorkerBinding({required this.enabled});

factory StreamsRequestWorkerBinding.fromJson(Map<String, dynamic> json) { return StreamsRequestWorkerBinding(
  enabled: json['enabled'] as bool,
); }

/// Indicates that the worker binding is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
StreamsRequestWorkerBinding copyWith({bool? enabled}) { return StreamsRequestWorkerBinding(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsRequestWorkerBinding &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'StreamsRequestWorkerBinding(enabled: $enabled)'; } 
 }
