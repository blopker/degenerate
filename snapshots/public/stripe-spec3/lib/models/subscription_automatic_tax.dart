// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_account_reference.dart';/// If Stripe disabled automatic tax, this enum describes why.
@immutable final class SubscriptionAutomaticTaxDisabledReason {const SubscriptionAutomaticTaxDisabledReason._(this.value);

factory SubscriptionAutomaticTaxDisabledReason.fromJson(String json) { return switch (json) {
  'requires_location_inputs' => requiresLocationInputs,
  _ => SubscriptionAutomaticTaxDisabledReason._(json),
}; }

static const SubscriptionAutomaticTaxDisabledReason requiresLocationInputs = SubscriptionAutomaticTaxDisabledReason._('requires_location_inputs');

static const List<SubscriptionAutomaticTaxDisabledReason> values = [requiresLocationInputs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionAutomaticTaxDisabledReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionAutomaticTaxDisabledReason($value)'; } 
 }
/// 
@immutable final class SubscriptionAutomaticTax {const SubscriptionAutomaticTax({required this.enabled, this.disabledReason, this.liability, });

factory SubscriptionAutomaticTax.fromJson(Map<String, dynamic> json) { return SubscriptionAutomaticTax(
  disabledReason: json['disabled_reason'] != null ? SubscriptionAutomaticTaxDisabledReason.fromJson(json['disabled_reason'] as String) : null,
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? ConnectAccountReference.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

/// If Stripe disabled automatic tax, this enum describes why.
final SubscriptionAutomaticTaxDisabledReason? disabledReason;

/// Whether Stripe automatically computes tax on this subscription.
final bool enabled;

/// The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
final ConnectAccountReference? liability;

Map<String, dynamic> toJson() { return {
  if (disabledReason != null) 'disabled_reason': disabledReason?.toJson(),
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
SubscriptionAutomaticTax copyWith({SubscriptionAutomaticTaxDisabledReason? Function()? disabledReason, bool? enabled, ConnectAccountReference? Function()? liability, }) { return SubscriptionAutomaticTax(
  disabledReason: disabledReason != null ? disabledReason() : this.disabledReason,
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionAutomaticTax &&
          disabledReason == other.disabledReason &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(disabledReason, enabled, liability); } 
@override String toString() { return 'SubscriptionAutomaticTax(disabledReason: $disabledReason, enabled: $enabled, liability: $liability)'; } 
 }
