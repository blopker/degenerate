// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_account_reference.dart';/// The status of the most recent automated tax calculation for this session.
@immutable final class PaymentPagesCheckoutSessionAutomaticTaxStatus {const PaymentPagesCheckoutSessionAutomaticTaxStatus._(this.value);

factory PaymentPagesCheckoutSessionAutomaticTaxStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'failed' => failed,
  'requires_location_inputs' => requiresLocationInputs,
  _ => PaymentPagesCheckoutSessionAutomaticTaxStatus._(json),
}; }

static const PaymentPagesCheckoutSessionAutomaticTaxStatus complete = PaymentPagesCheckoutSessionAutomaticTaxStatus._('complete');

static const PaymentPagesCheckoutSessionAutomaticTaxStatus failed = PaymentPagesCheckoutSessionAutomaticTaxStatus._('failed');

static const PaymentPagesCheckoutSessionAutomaticTaxStatus requiresLocationInputs = PaymentPagesCheckoutSessionAutomaticTaxStatus._('requires_location_inputs');

static const List<PaymentPagesCheckoutSessionAutomaticTaxStatus> values = [complete, failed, requiresLocationInputs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionAutomaticTaxStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionAutomaticTaxStatus($value)'; } 
 }
/// 
@immutable final class PaymentPagesCheckoutSessionAutomaticTax {const PaymentPagesCheckoutSessionAutomaticTax({required this.enabled, this.liability, this.provider, this.status, });

factory PaymentPagesCheckoutSessionAutomaticTax.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? ConnectAccountReference.fromJson(json['liability'] as Map<String, dynamic>) : null,
  provider: json['provider'] as String?,
  status: json['status'] != null ? PaymentPagesCheckoutSessionAutomaticTaxStatus.fromJson(json['status'] as String) : null,
); }

/// Indicates whether automatic tax is enabled for the session
final bool enabled;

/// The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
final ConnectAccountReference? liability;

/// The tax provider powering automatic tax.
final String? provider;

/// The status of the most recent automated tax calculation for this session.
final PaymentPagesCheckoutSessionAutomaticTaxStatus? status;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
  'provider': ?provider,
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentPagesCheckoutSessionAutomaticTax copyWith({bool? enabled, ConnectAccountReference? Function()? liability, String? Function()? provider, PaymentPagesCheckoutSessionAutomaticTaxStatus? Function()? status, }) { return PaymentPagesCheckoutSessionAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
  provider: provider != null ? provider() : this.provider,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability &&
          provider == other.provider &&
          status == other.status; } 
@override int get hashCode { return Object.hash(enabled, liability, provider, status); } 
@override String toString() { return 'PaymentPagesCheckoutSessionAutomaticTax(enabled: $enabled, liability: $liability, provider: $provider, status: $status)'; } 
 }
