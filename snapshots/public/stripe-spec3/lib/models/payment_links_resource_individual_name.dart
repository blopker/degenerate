// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentLinksResourceIndividualName {const PaymentLinksResourceIndividualName({required this.enabled, required this.optional, });

factory PaymentLinksResourceIndividualName.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceIndividualName(
  enabled: json['enabled'] as bool,
  optional: json['optional'] as bool,
); }

/// Indicates whether individual name collection is enabled for the payment link.
final bool enabled;

/// Whether the customer is required to complete the field before checking out. Defaults to `false`.
final bool optional;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'optional': optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('optional') && json['optional'] is bool; } 
PaymentLinksResourceIndividualName copyWith({bool? enabled, bool? optional, }) { return PaymentLinksResourceIndividualName(
  enabled: enabled ?? this.enabled,
  optional: optional ?? this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceIndividualName &&
          enabled == other.enabled &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(enabled, optional); } 
@override String toString() { return 'PaymentLinksResourceIndividualName(enabled: $enabled, optional: $optional)'; } 
 }
