// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ThreeDSecureUsage {const ThreeDSecureUsage({required this.supported});

factory ThreeDSecureUsage.fromJson(Map<String, dynamic> json) { return ThreeDSecureUsage(
  supported: json['supported'] as bool,
); }

/// Whether 3D Secure is supported on this card.
final bool supported;

Map<String, dynamic> toJson() { return {
  'supported': supported,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('supported') && json['supported'] is bool; } 
ThreeDSecureUsage copyWith({bool? supported}) { return ThreeDSecureUsage(
  supported: supported ?? this.supported,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ThreeDSecureUsage &&
          supported == other.supported; } 
@override int get hashCode { return supported.hashCode; } 
@override String toString() { return 'ThreeDSecureUsage(supported: $supported)'; } 
 }
