// GENERATED CODE - DO NOT MODIFY BY HAND

final class Cellular {const Cellular({required this.enabled});

factory Cellular.fromJson(Map<String, dynamic> json) { return Cellular(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
Cellular copyWith({bool? enabled}) { return Cellular(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Cellular &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'Cellular(enabled: $enabled)'; } 
 }
