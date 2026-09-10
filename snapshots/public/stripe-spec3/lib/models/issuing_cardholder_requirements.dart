// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
@immutable final class IssuingCardholderRequirementsDisabledReason {const IssuingCardholderRequirementsDisabledReason._(this.value);

factory IssuingCardholderRequirementsDisabledReason.fromJson(String json) { return switch (json) {
  'listed' => listed,
  'rejected.listed' => rejectedListed,
  'requirements.past_due' => requirementsPastDue,
  'under_review' => underReview,
  _ => IssuingCardholderRequirementsDisabledReason._(json),
}; }

static const IssuingCardholderRequirementsDisabledReason listed = IssuingCardholderRequirementsDisabledReason._('listed');

static const IssuingCardholderRequirementsDisabledReason rejectedListed = IssuingCardholderRequirementsDisabledReason._('rejected.listed');

static const IssuingCardholderRequirementsDisabledReason requirementsPastDue = IssuingCardholderRequirementsDisabledReason._('requirements.past_due');

static const IssuingCardholderRequirementsDisabledReason underReview = IssuingCardholderRequirementsDisabledReason._('under_review');

static const List<IssuingCardholderRequirementsDisabledReason> values = [listed, rejectedListed, requirementsPastDue, underReview];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderRequirementsDisabledReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderRequirementsDisabledReason($value)'; } 
 }
@immutable final class IssuingCardholderRequirementsPastDue {const IssuingCardholderRequirementsPastDue._(this.value);

factory IssuingCardholderRequirementsPastDue.fromJson(String json) { return switch (json) {
  'company.tax_id' => companyTaxId,
  'individual.card_issuing.user_terms_acceptance.date' => individualCardIssuingUserTermsAcceptanceDate,
  'individual.card_issuing.user_terms_acceptance.ip' => individualCardIssuingUserTermsAcceptanceIp,
  'individual.dob.day' => individualDobDay,
  'individual.dob.month' => individualDobMonth,
  'individual.dob.year' => individualDobYear,
  'individual.first_name' => individualFirstName,
  'individual.last_name' => individualLastName,
  'individual.verification.document' => individualVerificationDocument,
  _ => IssuingCardholderRequirementsPastDue._(json),
}; }

static const IssuingCardholderRequirementsPastDue companyTaxId = IssuingCardholderRequirementsPastDue._('company.tax_id');

static const IssuingCardholderRequirementsPastDue individualCardIssuingUserTermsAcceptanceDate = IssuingCardholderRequirementsPastDue._('individual.card_issuing.user_terms_acceptance.date');

static const IssuingCardholderRequirementsPastDue individualCardIssuingUserTermsAcceptanceIp = IssuingCardholderRequirementsPastDue._('individual.card_issuing.user_terms_acceptance.ip');

static const IssuingCardholderRequirementsPastDue individualDobDay = IssuingCardholderRequirementsPastDue._('individual.dob.day');

static const IssuingCardholderRequirementsPastDue individualDobMonth = IssuingCardholderRequirementsPastDue._('individual.dob.month');

static const IssuingCardholderRequirementsPastDue individualDobYear = IssuingCardholderRequirementsPastDue._('individual.dob.year');

static const IssuingCardholderRequirementsPastDue individualFirstName = IssuingCardholderRequirementsPastDue._('individual.first_name');

static const IssuingCardholderRequirementsPastDue individualLastName = IssuingCardholderRequirementsPastDue._('individual.last_name');

static const IssuingCardholderRequirementsPastDue individualVerificationDocument = IssuingCardholderRequirementsPastDue._('individual.verification.document');

static const List<IssuingCardholderRequirementsPastDue> values = [companyTaxId, individualCardIssuingUserTermsAcceptanceDate, individualCardIssuingUserTermsAcceptanceIp, individualDobDay, individualDobMonth, individualDobYear, individualFirstName, individualLastName, individualVerificationDocument];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardholderRequirementsPastDue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardholderRequirementsPastDue($value)'; } 
 }
/// 
@immutable final class IssuingCardholderRequirements {const IssuingCardholderRequirements({this.disabledReason = const Omittable.absent(), this.pastDue = const Omittable.absent(), });

factory IssuingCardholderRequirements.fromJson(Map<String, dynamic> json) { return IssuingCardholderRequirements(
  disabledReason: json.containsKey('disabled_reason') ? Omittable(json['disabled_reason'] != null ? IssuingCardholderRequirementsDisabledReason.fromJson(json['disabled_reason'] as String) : null) : const Omittable.absent(),
  pastDue: json.containsKey('past_due') ? Omittable((json['past_due'] as List<dynamic>?)?.map((e) => IssuingCardholderRequirementsPastDue.fromJson(e as String)).toList()) : const Omittable.absent(),
); }

/// If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
final Omittable<IssuingCardholderRequirementsDisabledReason?> disabledReason;

/// Array of fields that need to be collected in order to verify and re-enable the cardholder.
final Omittable<List<IssuingCardholderRequirementsPastDue>?> pastDue;

Map<String, dynamic> toJson() { return {
  if (disabledReason.isPresent) 'disabled_reason': disabledReason.value?.toJson(),
  if (pastDue.isPresent) 'past_due': pastDue.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled_reason', 'past_due'}.contains(key)); } 
IssuingCardholderRequirements copyWith({Omittable<IssuingCardholderRequirementsDisabledReason?>? disabledReason, Omittable<List<IssuingCardholderRequirementsPastDue>?>? pastDue, }) { return IssuingCardholderRequirements(
  disabledReason: disabledReason ?? this.disabledReason,
  pastDue: pastDue ?? this.pastDue,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderRequirements &&
          disabledReason == other.disabledReason &&
          pastDue.isPresent == other.pastDue.isPresent &&
          listEquals(pastDue.value, other.pastDue.value); } 
@override int get hashCode { return Object.hash(disabledReason, Object.hashAll(pastDue.value ?? const [])); } 
@override String toString() { return 'IssuingCardholderRequirements(disabledReason: $disabledReason, pastDue: $pastDue)'; } 
 }
