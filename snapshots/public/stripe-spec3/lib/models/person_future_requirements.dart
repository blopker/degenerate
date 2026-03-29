// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_requirements_alternative.dart';import 'account_requirements_error.dart';/// 
final class PersonFutureRequirements {const PersonFutureRequirements({this.alternatives, required this.currentlyDue, required this.errors, required this.eventuallyDue, required this.pastDue, required this.pendingVerification, });

factory PersonFutureRequirements.fromJson(Map<String, dynamic> json) { return PersonFutureRequirements(
  alternatives: (json['alternatives'] as List<dynamic>?)?.map((e) => AccountRequirementsAlternative.fromJson(e as Map<String, dynamic>)).toList(),
  currentlyDue: (json['currently_due'] as List<dynamic>).map((e) => e as String).toList(),
  errors: (json['errors'] as List<dynamic>).map((e) => AccountRequirementsError.fromJson(e as Map<String, dynamic>)).toList(),
  eventuallyDue: (json['eventually_due'] as List<dynamic>).map((e) => e as String).toList(),
  pastDue: (json['past_due'] as List<dynamic>).map((e) => e as String).toList(),
  pendingVerification: (json['pending_verification'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Fields that are due and can be resolved by providing the corresponding alternative fields instead. Many alternatives can list the same `original_fields_due`, and any of these alternatives can serve as a pathway for attempting to resolve the fields again. Re-providing `original_fields_due` also serves as a pathway for attempting to resolve the fields again.
final List<AccountRequirementsAlternative>? alternatives;

/// Fields that need to be resolved to keep the person's account enabled. If not resolved by the account's `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash, and may immediately become `past_due`, but the account may also be given a grace period depending on the account's enablement state prior to transition.
final List<String> currentlyDue;

/// Details about validation and verification failures for `due` requirements that must be resolved.
final List<AccountRequirementsError> errors;

/// Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `future_requirements[current_deadline]` becomes set.
final List<String> eventuallyDue;

/// Fields that haven't been resolved by the account's `requirements.current_deadline`. These fields need to be resolved to enable the person's account. `future_requirements.past_due` is a subset of `requirements.past_due`.
final List<String> pastDue;

/// Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
final List<String> pendingVerification;

Map<String, dynamic> toJson() { return {
  if (alternatives != null) 'alternatives': alternatives?.map((e) => e.toJson()).toList(),
  'currently_due': currentlyDue,
  'errors': errors.map((e) => e.toJson()).toList(),
  'eventually_due': eventuallyDue,
  'past_due': pastDue,
  'pending_verification': pendingVerification,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('currently_due') &&
      json.containsKey('errors') &&
      json.containsKey('eventually_due') &&
      json.containsKey('past_due') &&
      json.containsKey('pending_verification'); } 
PersonFutureRequirements copyWith({List<AccountRequirementsAlternative>? Function()? alternatives, List<String>? currentlyDue, List<AccountRequirementsError>? errors, List<String>? eventuallyDue, List<String>? pastDue, List<String>? pendingVerification, }) { return PersonFutureRequirements(
  alternatives: alternatives != null ? alternatives() : this.alternatives,
  currentlyDue: currentlyDue ?? this.currentlyDue,
  errors: errors ?? this.errors,
  eventuallyDue: eventuallyDue ?? this.eventuallyDue,
  pastDue: pastDue ?? this.pastDue,
  pendingVerification: pendingVerification ?? this.pendingVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonFutureRequirements &&
          listEquals(alternatives, other.alternatives) &&
          listEquals(currentlyDue, other.currentlyDue) &&
          listEquals(errors, other.errors) &&
          listEquals(eventuallyDue, other.eventuallyDue) &&
          listEquals(pastDue, other.pastDue) &&
          listEquals(pendingVerification, other.pendingVerification); } 
@override int get hashCode { return Object.hash(Object.hashAll(alternatives ?? const []), Object.hashAll(currentlyDue), Object.hashAll(errors), Object.hashAll(eventuallyDue), Object.hashAll(pastDue), Object.hashAll(pendingVerification)); } 
@override String toString() { return 'PersonFutureRequirements(alternatives: $alternatives, currentlyDue: $currentlyDue, errors: $errors, eventuallyDue: $eventuallyDue, pastDue: $pastDue, pendingVerification: $pendingVerification)'; } 
 }
