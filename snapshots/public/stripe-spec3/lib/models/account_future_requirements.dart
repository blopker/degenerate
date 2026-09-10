// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_requirements_alternative.dart';import 'account_requirements_error.dart';/// This is typed as an enum for consistency with `requirements.disabled_reason`.
@immutable final class AccountFutureRequirementsDisabledReason {const AccountFutureRequirementsDisabledReason._(this.value);

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
@immutable final class AccountFutureRequirements {const AccountFutureRequirements({this.alternatives = const Omittable.absent(), this.currentDeadline = const Omittable.absent(), this.currentlyDue = const Omittable.absent(), this.disabledReason = const Omittable.absent(), this.errors = const Omittable.absent(), this.eventuallyDue = const Omittable.absent(), this.pastDue = const Omittable.absent(), this.pendingVerification = const Omittable.absent(), });

factory AccountFutureRequirements.fromJson(Map<String, dynamic> json) { return AccountFutureRequirements(
  alternatives: json.containsKey('alternatives') ? Omittable((json['alternatives'] as List<dynamic>?)?.map((e) => AccountRequirementsAlternative.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  currentDeadline: json.containsKey('current_deadline') ? Omittable(json['current_deadline'] != null ? (json['current_deadline'] as num).toInt() : null) : const Omittable.absent(),
  currentlyDue: json.containsKey('currently_due') ? Omittable((json['currently_due'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  disabledReason: json.containsKey('disabled_reason') ? Omittable(json['disabled_reason'] != null ? AccountFutureRequirementsDisabledReason.fromJson(json['disabled_reason'] as String) : null) : const Omittable.absent(),
  errors: json.containsKey('errors') ? Omittable((json['errors'] as List<dynamic>?)?.map((e) => AccountRequirementsError.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  eventuallyDue: json.containsKey('eventually_due') ? Omittable((json['eventually_due'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pastDue: json.containsKey('past_due') ? Omittable((json['past_due'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pendingVerification: json.containsKey('pending_verification') ? Omittable((json['pending_verification'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again.
final Omittable<List<AccountRequirementsAlternative>?> alternatives;

/// Date on which `future_requirements` becomes the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on its enablement state prior to transitioning.
final Omittable<int?> currentDeadline;

/// Fields that need to be resolved to keep the account enabled. If not resolved by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
final Omittable<List<String>?> currentlyDue;

/// This is typed as an enum for consistency with `requirements.disabled_reason`.
final Omittable<AccountFutureRequirementsDisabledReason?> disabledReason;

/// Details about validation and verification failures for `due` requirements that must be resolved.
final Omittable<List<AccountRequirementsError>?> errors;

/// Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well.
final Omittable<List<String>?> eventuallyDue;

/// Fields that haven't been resolved by `requirements.current_deadline`. These fields need to be resolved to enable the capability on the account. `future_requirements.past_due` is a subset of `requirements.past_due`.
final Omittable<List<String>?> pastDue;

/// Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
final Omittable<List<String>?> pendingVerification;

Map<String, dynamic> toJson() { return {
  if (alternatives.isPresent) 'alternatives': alternatives.value?.map((e) => e.toJson()).toList(),
  if (currentDeadline.isPresent) 'current_deadline': currentDeadline.value,
  if (currentlyDue.isPresent) 'currently_due': currentlyDue.value,
  if (disabledReason.isPresent) 'disabled_reason': disabledReason.value?.toJson(),
  if (errors.isPresent) 'errors': errors.value?.map((e) => e.toJson()).toList(),
  if (eventuallyDue.isPresent) 'eventually_due': eventuallyDue.value,
  if (pastDue.isPresent) 'past_due': pastDue.value,
  if (pendingVerification.isPresent) 'pending_verification': pendingVerification.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alternatives', 'current_deadline', 'currently_due', 'disabled_reason', 'errors', 'eventually_due', 'past_due', 'pending_verification'}.contains(key)); } 
AccountFutureRequirements copyWith({Omittable<List<AccountRequirementsAlternative>?>? alternatives, Omittable<int?>? currentDeadline, Omittable<List<String>?>? currentlyDue, Omittable<AccountFutureRequirementsDisabledReason?>? disabledReason, Omittable<List<AccountRequirementsError>?>? errors, Omittable<List<String>?>? eventuallyDue, Omittable<List<String>?>? pastDue, Omittable<List<String>?>? pendingVerification, }) { return AccountFutureRequirements(
  alternatives: alternatives ?? this.alternatives,
  currentDeadline: currentDeadline ?? this.currentDeadline,
  currentlyDue: currentlyDue ?? this.currentlyDue,
  disabledReason: disabledReason ?? this.disabledReason,
  errors: errors ?? this.errors,
  eventuallyDue: eventuallyDue ?? this.eventuallyDue,
  pastDue: pastDue ?? this.pastDue,
  pendingVerification: pendingVerification ?? this.pendingVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountFutureRequirements &&
          alternatives.isPresent == other.alternatives.isPresent &&
          listEquals(alternatives.value, other.alternatives.value) &&
          currentDeadline == other.currentDeadline &&
          currentlyDue.isPresent == other.currentlyDue.isPresent &&
          listEquals(currentlyDue.value, other.currentlyDue.value) &&
          disabledReason == other.disabledReason &&
          errors.isPresent == other.errors.isPresent &&
          listEquals(errors.value, other.errors.value) &&
          eventuallyDue.isPresent == other.eventuallyDue.isPresent &&
          listEquals(eventuallyDue.value, other.eventuallyDue.value) &&
          pastDue.isPresent == other.pastDue.isPresent &&
          listEquals(pastDue.value, other.pastDue.value) &&
          pendingVerification.isPresent == other.pendingVerification.isPresent &&
          listEquals(pendingVerification.value, other.pendingVerification.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(alternatives.value ?? const []), currentDeadline, Object.hashAll(currentlyDue.value ?? const []), disabledReason, Object.hashAll(errors.value ?? const []), Object.hashAll(eventuallyDue.value ?? const []), Object.hashAll(pastDue.value ?? const []), Object.hashAll(pendingVerification.value ?? const [])); } 
@override String toString() { return 'AccountFutureRequirements(alternatives: $alternatives, currentDeadline: $currentDeadline, currentlyDue: $currentlyDue, disabledReason: $disabledReason, errors: $errors, eventuallyDue: $eventuallyDue, pastDue: $pastDue, pendingVerification: $pendingVerification)'; } 
 }
