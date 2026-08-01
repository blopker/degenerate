// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Set if a ReceivedCredit cannot be reversed.
@immutable final class TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason {const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._(this.value);

factory TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason.fromJson(String json) { return switch (json) {
  'already_reversed' => alreadyReversed,
  'deadline_passed' => deadlinePassed,
  'network_restricted' => networkRestricted,
  'other' => $other,
  'source_flow_restricted' => sourceFlowRestricted,
  _ => TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._(json),
}; }

static const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason alreadyReversed = TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._('already_reversed');

static const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason deadlinePassed = TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._('deadline_passed');

static const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason networkRestricted = TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._('network_restricted');

static const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason $other = TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._('other');

static const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason sourceFlowRestricted = TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._('source_flow_restricted');

static const List<TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason> values = [alreadyReversed, deadlinePassed, networkRestricted, $other, sourceFlowRestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason($value)'; } 
 }
/// 
@immutable final class TreasuryReceivedCreditsResourceReversalDetails {const TreasuryReceivedCreditsResourceReversalDetails({this.deadline = const Omittable.absent(), this.restrictedReason = const Omittable.absent(), });

factory TreasuryReceivedCreditsResourceReversalDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceReversalDetails(
  deadline: json.containsKey('deadline') ? Omittable(json['deadline'] != null ? (json['deadline'] as num).toInt() : null) : const Omittable.absent(),
  restrictedReason: json.containsKey('restricted_reason') ? Omittable(json['restricted_reason'] != null ? TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason.fromJson(json['restricted_reason'] as String) : null) : const Omittable.absent(),
); }

/// Time before which a ReceivedCredit can be reversed.
final Omittable<int?> deadline;

/// Set if a ReceivedCredit cannot be reversed.
final Omittable<TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason?> restrictedReason;

Map<String, dynamic> toJson() { return {
  if (deadline.isPresent) 'deadline': deadline.value,
  if (restrictedReason.isPresent) 'restricted_reason': restrictedReason.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deadline', 'restricted_reason'}.contains(key)); } 
TreasuryReceivedCreditsResourceReversalDetails copyWith({Omittable<int?>? deadline, Omittable<TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason?>? restrictedReason, }) { return TreasuryReceivedCreditsResourceReversalDetails(
  deadline: deadline ?? this.deadline,
  restrictedReason: restrictedReason ?? this.restrictedReason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCreditsResourceReversalDetails &&
          deadline == other.deadline &&
          restrictedReason == other.restrictedReason; } 
@override int get hashCode { return Object.hash(deadline, restrictedReason); } 
@override String toString() { return 'TreasuryReceivedCreditsResourceReversalDetails(deadline: $deadline, restrictedReason: $restrictedReason)'; } 
 }
