// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_account_reference.dart';/// If Stripe disabled automatic tax, this enum describes why.
@immutable final class AutomaticTaxDisabledReason {const AutomaticTaxDisabledReason._(this.value);

factory AutomaticTaxDisabledReason.fromJson(String json) { return switch (json) {
  'finalization_requires_location_inputs' => finalizationRequiresLocationInputs,
  'finalization_system_error' => finalizationSystemError,
  _ => AutomaticTaxDisabledReason._(json),
}; }

static const AutomaticTaxDisabledReason finalizationRequiresLocationInputs = AutomaticTaxDisabledReason._('finalization_requires_location_inputs');

static const AutomaticTaxDisabledReason finalizationSystemError = AutomaticTaxDisabledReason._('finalization_system_error');

static const List<AutomaticTaxDisabledReason> values = [finalizationRequiresLocationInputs, finalizationSystemError];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutomaticTaxDisabledReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutomaticTaxDisabledReason($value)'; } 
 }
/// The status of the most recent automated tax calculation for this invoice.
@immutable final class AutomaticTaxStatus {const AutomaticTaxStatus._(this.value);

factory AutomaticTaxStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'failed' => failed,
  'requires_location_inputs' => requiresLocationInputs,
  _ => AutomaticTaxStatus._(json),
}; }

static const AutomaticTaxStatus complete = AutomaticTaxStatus._('complete');

static const AutomaticTaxStatus failed = AutomaticTaxStatus._('failed');

static const AutomaticTaxStatus requiresLocationInputs = AutomaticTaxStatus._('requires_location_inputs');

static const List<AutomaticTaxStatus> values = [complete, failed, requiresLocationInputs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutomaticTaxStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutomaticTaxStatus($value)'; } 
 }
/// 
@immutable final class AutomaticTax {const AutomaticTax({required this.enabled, this.disabledReason = const Omittable.absent(), this.liability = const Omittable.absent(), this.provider = const Omittable.absent(), this.status = const Omittable.absent(), });

factory AutomaticTax.fromJson(Map<String, dynamic> json) { return AutomaticTax(
  disabledReason: json.containsKey('disabled_reason') ? Omittable(json['disabled_reason'] != null ? AutomaticTaxDisabledReason.fromJson(json['disabled_reason'] as String) : null) : const Omittable.absent(),
  enabled: json['enabled'] as bool,
  liability: json.containsKey('liability') ? Omittable(json['liability'] != null ? ConnectAccountReference.fromJson(json['liability'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  provider: json.containsKey('provider') ? Omittable(json['provider'] as String?) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? AutomaticTaxStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
); }

/// If Stripe disabled automatic tax, this enum describes why.
final Omittable<AutomaticTaxDisabledReason?> disabledReason;

/// Whether Stripe automatically computes tax on this invoice. Note that incompatible invoice items (invoice items with manually specified [tax rates](https://docs.stripe.com/api/tax_rates), negative amounts, or `tax_behavior=unspecified`) cannot be added to automatic tax invoices.
final bool enabled;

/// The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
final Omittable<ConnectAccountReference?> liability;

/// The tax provider powering automatic tax.
final Omittable<String?> provider;

/// The status of the most recent automated tax calculation for this invoice.
final Omittable<AutomaticTaxStatus?> status;

Map<String, dynamic> toJson() { return {
  if (disabledReason.isPresent) 'disabled_reason': disabledReason.value?.toJson(),
  'enabled': enabled,
  if (liability.isPresent) 'liability': liability.value?.toJson(),
  if (provider.isPresent) 'provider': provider.value,
  if (status.isPresent) 'status': status.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
AutomaticTax copyWith({Omittable<AutomaticTaxDisabledReason?>? disabledReason, bool? enabled, Omittable<ConnectAccountReference?>? liability, Omittable<String?>? provider, Omittable<AutomaticTaxStatus?>? status, }) { return AutomaticTax(
  disabledReason: disabledReason ?? this.disabledReason,
  enabled: enabled ?? this.enabled,
  liability: liability ?? this.liability,
  provider: provider ?? this.provider,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutomaticTax &&
          disabledReason == other.disabledReason &&
          enabled == other.enabled &&
          liability == other.liability &&
          provider == other.provider &&
          status == other.status; } 
@override int get hashCode { return Object.hash(disabledReason, enabled, liability, provider, status); } 
@override String toString() { return 'AutomaticTax(disabledReason: $disabledReason, enabled: $enabled, liability: $liability, provider: $provider, status: $status)'; } 
 }
