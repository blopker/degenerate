// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_requirements_alternative.dart';import 'account_requirements_error.dart';/// This is typed as an enum for consistency with `requirements.disabled_reason`.
final class AccountFutureRequirementsDisabledReason {const AccountFutureRequirementsDisabledReason._(this.value);

factory AccountFutureRequirementsDisabledReason.fromJson(String json) { return switch (json) {
  'action_required.requested_capabilities' => actionRequiredRequestedCapabilities,
  'listed' => listed,
  'other' => $other,
  'platform_paused' => platformPaused,
  'rejected.fraud' => rejectedFraud,
  'rejected.incomplete_verification' => rejectedIncompleteVerification,
  'rejected.listed' => rejectedListed,
  'rejected.other' => rejectedOther,
  'rejected.platform_fraud' => rejectedPlatformFraud,
  'rejected.platform_other' => rejectedPlatformOther,
  'rejected.platform_terms_of_service' => rejectedPlatformTermsOfService,
  'rejected.terms_of_service' => rejectedTermsOfService,
  'requirements.past_due' => requirementsPastDue,
  'requirements.pending_verification' => requirementsPendingVerification,
  'under_review' => underReview,
  _ => AccountFutureRequirementsDisabledReason._(json),
}; }

static const AccountFutureRequirementsDisabledReason actionRequiredRequestedCapabilities = AccountFutureRequirementsDisabledReason._('action_required.requested_capabilities');

static const AccountFutureRequirementsDisabledReason listed = AccountFutureRequirementsDisabledReason._('listed');

static const AccountFutureRequirementsDisabledReason $other = AccountFutureRequirementsDisabledReason._('other');

static const AccountFutureRequirementsDisabledReason platformPaused = AccountFutureRequirementsDisabledReason._('platform_paused');

static const AccountFutureRequirementsDisabledReason rejectedFraud = AccountFutureRequirementsDisabledReason._('rejected.fraud');

static const AccountFutureRequirementsDisabledReason rejectedIncompleteVerification = AccountFutureRequirementsDisabledReason._('rejected.incomplete_verification');

static const AccountFutureRequirementsDisabledReason rejectedListed = AccountFutureRequirementsDisabledReason._('rejected.listed');

static const AccountFutureRequirementsDisabledReason rejectedOther = AccountFutureRequirementsDisabledReason._('rejected.other');

static const AccountFutureRequirementsDisabledReason rejectedPlatformFraud = AccountFutureRequirementsDisabledReason._('rejected.platform_fraud');

static const AccountFutureRequirementsDisabledReason rejectedPlatformOther = AccountFutureRequirementsDisabledReason._('rejected.platform_other');

static const AccountFutureRequirementsDisabledReason rejectedPlatformTermsOfService = AccountFutureRequirementsDisabledReason._('rejected.platform_terms_of_service');

static const AccountFutureRequirementsDisabledReason rejectedTermsOfService = AccountFutureRequirementsDisabledReason._('rejected.terms_of_service');

static const AccountFutureRequirementsDisabledReason requirementsPastDue = AccountFutureRequirementsDisabledReason._('requirements.past_due');

static const AccountFutureRequirementsDisabledReason requirementsPendingVerification = AccountFutureRequirementsDisabledReason._('requirements.pending_verification');

static const AccountFutureRequirementsDisabledReason underReview = AccountFutureRequirementsDisabledReason._('under_review');

static const List<AccountFutureRequirementsDisabledReason> values = [actionRequiredRequestedCapabilities, listed, $other, platformPaused, rejectedFraud, rejectedIncompleteVerification, rejectedListed, rejectedOther, rejectedPlatformFraud, rejectedPlatformOther, rejectedPlatformTermsOfService, rejectedTermsOfService, requirementsPastDue, requirementsPendingVerification, underReview];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountFutureRequirementsDisabledReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountFutureRequirementsDisabledReason($value)'; } 
 }
/// 
final class AccountFutureRequirements {const AccountFutureRequirements({this.alternatives, this.currentDeadline, this.currentlyDue, this.disabledReason, this.errors, this.eventuallyDue, this.pastDue, this.pendingVerification, });

factory AccountFutureRequirements.fromJson(Map<String, dynamic> json) { return AccountFutureRequirements(
  alternatives: (json['alternatives'] as List<dynamic>?)?.map((e) => AccountRequirementsAlternative.fromJson(e as Map<String, dynamic>)).toList(),
  currentDeadline: json['current_deadline'] != null ? (json['current_deadline'] as num).toInt() : null,
  currentlyDue: (json['currently_due'] as List<dynamic>?)?.map((e) => e as String).toList(),
  disabledReason: json['disabled_reason'] != null ? AccountFutureRequirementsDisabledReason.fromJson(json['disabled_reason'] as String) : null,
  errors: (json['errors'] as List<dynamic>?)?.map((e) => AccountRequirementsError.fromJson(e as Map<String, dynamic>)).toList(),
  eventuallyDue: (json['eventually_due'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pastDue: (json['past_due'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pendingVerification: (json['pending_verification'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again.
final List<AccountRequirementsAlternative>? alternatives;

/// Date on which `future_requirements` becomes the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on its enablement state prior to transitioning.
final int? currentDeadline;

/// Fields that need to be resolved to keep the account enabled. If not resolved by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
final List<String>? currentlyDue;

/// This is typed as an enum for consistency with `requirements.disabled_reason`.
final AccountFutureRequirementsDisabledReason? disabledReason;

/// Details about validation and verification failures for `due` requirements that must be resolved.
final List<AccountRequirementsError>? errors;

/// Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well.
final List<String>? eventuallyDue;

/// Fields that haven't been resolved by `requirements.current_deadline`. These fields need to be resolved to enable the capability on the account. `future_requirements.past_due` is a subset of `requirements.past_due`.
final List<String>? pastDue;

/// Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
final List<String>? pendingVerification;

Map<String, dynamic> toJson() { return {
  if (alternatives != null) 'alternatives': alternatives?.map((e) => e.toJson()).toList(),
  'current_deadline': ?currentDeadline,
  'currently_due': ?currentlyDue,
  if (disabledReason != null) 'disabled_reason': disabledReason?.toJson(),
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  'eventually_due': ?eventuallyDue,
  'past_due': ?pastDue,
  'pending_verification': ?pendingVerification,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alternatives', 'current_deadline', 'currently_due', 'disabled_reason', 'errors', 'eventually_due', 'past_due', 'pending_verification'}.contains(key)); } 
AccountFutureRequirements copyWith({List<AccountRequirementsAlternative>? Function()? alternatives, int? Function()? currentDeadline, List<String>? Function()? currentlyDue, AccountFutureRequirementsDisabledReason? Function()? disabledReason, List<AccountRequirementsError>? Function()? errors, List<String>? Function()? eventuallyDue, List<String>? Function()? pastDue, List<String>? Function()? pendingVerification, }) { return AccountFutureRequirements(
  alternatives: alternatives != null ? alternatives() : this.alternatives,
  currentDeadline: currentDeadline != null ? currentDeadline() : this.currentDeadline,
  currentlyDue: currentlyDue != null ? currentlyDue() : this.currentlyDue,
  disabledReason: disabledReason != null ? disabledReason() : this.disabledReason,
  errors: errors != null ? errors() : this.errors,
  eventuallyDue: eventuallyDue != null ? eventuallyDue() : this.eventuallyDue,
  pastDue: pastDue != null ? pastDue() : this.pastDue,
  pendingVerification: pendingVerification != null ? pendingVerification() : this.pendingVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountFutureRequirements &&
          listEquals(alternatives, other.alternatives) &&
          currentDeadline == other.currentDeadline &&
          listEquals(currentlyDue, other.currentlyDue) &&
          disabledReason == other.disabledReason &&
          listEquals(errors, other.errors) &&
          listEquals(eventuallyDue, other.eventuallyDue) &&
          listEquals(pastDue, other.pastDue) &&
          listEquals(pendingVerification, other.pendingVerification); } 
@override int get hashCode { return Object.hash(Object.hashAll(alternatives ?? const []), currentDeadline, Object.hashAll(currentlyDue ?? const []), disabledReason, Object.hashAll(errors ?? const []), Object.hashAll(eventuallyDue ?? const []), Object.hashAll(pastDue ?? const []), Object.hashAll(pendingVerification ?? const [])); } 
@override String toString() { return 'AccountFutureRequirements(alternatives: $alternatives, currentDeadline: $currentDeadline, currentlyDue: $currentlyDue, disabledReason: $disabledReason, errors: $errors, eventuallyDue: $eventuallyDue, pastDue: $pastDue, pendingVerification: $pendingVerification)'; } 
 }
