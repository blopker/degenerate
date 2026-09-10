// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_account_reference.dart';/// The status of the most recent automated tax calculation for this quote.
@immutable final class QuotesResourceAutomaticTaxStatus {const QuotesResourceAutomaticTaxStatus._(this.value);

factory QuotesResourceAutomaticTaxStatus.fromJson(String json) { return switch (json) {
  'complete' => complete,
  'failed' => failed,
  'requires_location_inputs' => requiresLocationInputs,
  _ => QuotesResourceAutomaticTaxStatus._(json),
}; }

static const QuotesResourceAutomaticTaxStatus complete = QuotesResourceAutomaticTaxStatus._('complete');

static const QuotesResourceAutomaticTaxStatus failed = QuotesResourceAutomaticTaxStatus._('failed');

static const QuotesResourceAutomaticTaxStatus requiresLocationInputs = QuotesResourceAutomaticTaxStatus._('requires_location_inputs');

static const List<QuotesResourceAutomaticTaxStatus> values = [complete, failed, requiresLocationInputs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is QuotesResourceAutomaticTaxStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'QuotesResourceAutomaticTaxStatus($value)'; } 
 }
/// 
@immutable final class QuotesResourceAutomaticTax {const QuotesResourceAutomaticTax({required this.enabled, this.liability = const Omittable.absent(), this.provider = const Omittable.absent(), this.status = const Omittable.absent(), });

factory QuotesResourceAutomaticTax.fromJson(Map<String, dynamic> json) { return QuotesResourceAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json.containsKey('liability') ? Omittable(json['liability'] != null ? ConnectAccountReference.fromJson(json['liability'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  provider: json.containsKey('provider') ? Omittable(json['provider'] as String?) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] != null ? QuotesResourceAutomaticTaxStatus.fromJson(json['status'] as String) : null) : const Omittable.absent(),
); }

/// Automatically calculate taxes
final bool enabled;

/// The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
final Omittable<ConnectAccountReference?> liability;

/// The tax provider powering automatic tax.
final Omittable<String?> provider;

/// The status of the most recent automated tax calculation for this quote.
final Omittable<QuotesResourceAutomaticTaxStatus?> status;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability.isPresent) 'liability': liability.value?.toJson(),
  if (provider.isPresent) 'provider': provider.value,
  if (status.isPresent) 'status': status.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
QuotesResourceAutomaticTax copyWith({bool? enabled, Omittable<ConnectAccountReference?>? liability, Omittable<String?>? provider, Omittable<QuotesResourceAutomaticTaxStatus?>? status, }) { return QuotesResourceAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability ?? this.liability,
  provider: provider ?? this.provider,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability &&
          provider == other.provider &&
          status == other.status; } 
@override int get hashCode { return Object.hash(enabled, liability, provider, status); } 
@override String toString() { return 'QuotesResourceAutomaticTax(enabled: $enabled, liability: $liability, provider: $provider, status: $status)'; } 
 }
