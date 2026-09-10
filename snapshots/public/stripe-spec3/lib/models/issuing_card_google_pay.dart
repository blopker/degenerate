// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Reason the card is ineligible for Google Pay
@immutable final class IssuingCardGooglePayIneligibleReason {const IssuingCardGooglePayIneligibleReason._(this.value);

factory IssuingCardGooglePayIneligibleReason.fromJson(String json) { return switch (json) {
  'missing_agreement' => missingAgreement,
  'missing_cardholder_contact' => missingCardholderContact,
  'unsupported_region' => unsupportedRegion,
  _ => IssuingCardGooglePayIneligibleReason._(json),
}; }

static const IssuingCardGooglePayIneligibleReason missingAgreement = IssuingCardGooglePayIneligibleReason._('missing_agreement');

static const IssuingCardGooglePayIneligibleReason missingCardholderContact = IssuingCardGooglePayIneligibleReason._('missing_cardholder_contact');

static const IssuingCardGooglePayIneligibleReason unsupportedRegion = IssuingCardGooglePayIneligibleReason._('unsupported_region');

static const List<IssuingCardGooglePayIneligibleReason> values = [missingAgreement, missingCardholderContact, unsupportedRegion];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardGooglePayIneligibleReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardGooglePayIneligibleReason($value)'; } 
 }
/// 
@immutable final class IssuingCardGooglePay {const IssuingCardGooglePay({required this.eligible, this.ineligibleReason = const Omittable.absent(), });

factory IssuingCardGooglePay.fromJson(Map<String, dynamic> json) { return IssuingCardGooglePay(
  eligible: json['eligible'] as bool,
  ineligibleReason: json.containsKey('ineligible_reason') ? Omittable(json['ineligible_reason'] != null ? IssuingCardGooglePayIneligibleReason.fromJson(json['ineligible_reason'] as String) : null) : const Omittable.absent(),
); }

/// Google Pay Eligibility
final bool eligible;

/// Reason the card is ineligible for Google Pay
final Omittable<IssuingCardGooglePayIneligibleReason?> ineligibleReason;

Map<String, dynamic> toJson() { return {
  'eligible': eligible,
  if (ineligibleReason.isPresent) 'ineligible_reason': ineligibleReason.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('eligible') && json['eligible'] is bool; } 
IssuingCardGooglePay copyWith({bool? eligible, Omittable<IssuingCardGooglePayIneligibleReason?>? ineligibleReason, }) { return IssuingCardGooglePay(
  eligible: eligible ?? this.eligible,
  ineligibleReason: ineligibleReason ?? this.ineligibleReason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardGooglePay &&
          eligible == other.eligible &&
          ineligibleReason == other.ineligibleReason; } 
@override int get hashCode { return Object.hash(eligible, ineligibleReason); } 
@override String toString() { return 'IssuingCardGooglePay(eligible: $eligible, ineligibleReason: $ineligibleReason)'; } 
 }
