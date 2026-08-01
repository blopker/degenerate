// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_requirements_error.dart';/// 
@immutable final class ExternalAccountRequirements {const ExternalAccountRequirements({this.currentlyDue = const Omittable.absent(), this.errors = const Omittable.absent(), this.pastDue = const Omittable.absent(), this.pendingVerification = const Omittable.absent(), });

factory ExternalAccountRequirements.fromJson(Map<String, dynamic> json) { return ExternalAccountRequirements(
  currentlyDue: json.containsKey('currently_due') ? Omittable((json['currently_due'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  errors: json.containsKey('errors') ? Omittable((json['errors'] as List<dynamic>?)?.map((e) => AccountRequirementsError.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  pastDue: json.containsKey('past_due') ? Omittable((json['past_due'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pendingVerification: json.containsKey('pending_verification') ? Omittable((json['pending_verification'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// Fields that need to be resolved to keep the external account enabled. If not resolved by `current_deadline`, these fields will appear in `past_due` as well, and the account is disabled.
final Omittable<List<String>?> currentlyDue;

/// Details about validation and verification failures for `due` requirements that must be resolved.
final Omittable<List<AccountRequirementsError>?> errors;

/// Fields that haven't been resolved by `current_deadline`. These fields need to be resolved to enable the external account.
final Omittable<List<String>?> pastDue;

/// Fields that are being reviewed, or might become required depending on the results of a review. If the review fails, these fields can move to `eventually_due`, `currently_due`, `past_due` or `alternatives`. Fields might appear in `eventually_due`, `currently_due`, `past_due` or `alternatives` and in `pending_verification` if one verification fails but another is still pending.
final Omittable<List<String>?> pendingVerification;

Map<String, dynamic> toJson() { return {
  if (currentlyDue.isPresent) 'currently_due': currentlyDue.value,
  if (errors.isPresent) 'errors': errors.value?.map((e) => e.toJson()).toList(),
  if (pastDue.isPresent) 'past_due': pastDue.value,
  if (pendingVerification.isPresent) 'pending_verification': pendingVerification.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'currently_due', 'errors', 'past_due', 'pending_verification'}.contains(key)); } 
ExternalAccountRequirements copyWith({Omittable<List<String>?>? currentlyDue, Omittable<List<AccountRequirementsError>?>? errors, Omittable<List<String>?>? pastDue, Omittable<List<String>?>? pendingVerification, }) { return ExternalAccountRequirements(
  currentlyDue: currentlyDue ?? this.currentlyDue,
  errors: errors ?? this.errors,
  pastDue: pastDue ?? this.pastDue,
  pendingVerification: pendingVerification ?? this.pendingVerification,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExternalAccountRequirements &&
          currentlyDue.isPresent == other.currentlyDue.isPresent &&
          listEquals(currentlyDue.value, other.currentlyDue.value) &&
          errors.isPresent == other.errors.isPresent &&
          listEquals(errors.value, other.errors.value) &&
          pastDue.isPresent == other.pastDue.isPresent &&
          listEquals(pastDue.value, other.pastDue.value) &&
          pendingVerification.isPresent == other.pendingVerification.isPresent &&
          listEquals(pendingVerification.value, other.pendingVerification.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(currentlyDue.value ?? const []), Object.hashAll(errors.value ?? const []), Object.hashAll(pastDue.value ?? const []), Object.hashAll(pendingVerification.value ?? const [])); } 
@override String toString() { return 'ExternalAccountRequirements(currentlyDue: $currentlyDue, errors: $errors, pastDue: $pastDue, pendingVerification: $pendingVerification)'; } 
 }
