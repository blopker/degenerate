// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Set if a ReceivedDebit can't be reversed.
@immutable final class TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason {const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._(this.value);

factory TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason.fromJson(String json) { return switch (json) {
  'already_reversed' => alreadyReversed,
  'deadline_passed' => deadlinePassed,
  'network_restricted' => networkRestricted,
  'other' => $other,
  'source_flow_restricted' => sourceFlowRestricted,
  _ => TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._(json),
}; }

static const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason alreadyReversed = TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._('already_reversed');

static const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason deadlinePassed = TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._('deadline_passed');

static const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason networkRestricted = TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._('network_restricted');

static const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason $other = TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._('other');

static const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason sourceFlowRestricted = TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason._('source_flow_restricted');

static const List<TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason> values = [alreadyReversed, deadlinePassed, networkRestricted, $other, sourceFlowRestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason($value)'; } 
 }
/// 
@immutable final class TreasuryReceivedDebitsResourceReversalDetails {const TreasuryReceivedDebitsResourceReversalDetails({this.deadline = const Omittable.absent(), this.restrictedReason = const Omittable.absent(), });

factory TreasuryReceivedDebitsResourceReversalDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitsResourceReversalDetails(
  deadline: json.containsKey('deadline') ? Omittable(json['deadline'] != null ? (json['deadline'] as num).toInt() : null) : const Omittable.absent(),
  restrictedReason: json.containsKey('restricted_reason') ? Omittable(json['restricted_reason'] != null ? TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason.fromJson(json['restricted_reason'] as String) : null) : const Omittable.absent(),
); }

/// Time before which a ReceivedDebit can be reversed.
final Omittable<int?> deadline;

/// Set if a ReceivedDebit can't be reversed.
final Omittable<TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason?> restrictedReason;

Map<String, dynamic> toJson() { return {
  if (deadline.isPresent) 'deadline': deadline.value,
  if (restrictedReason.isPresent) 'restricted_reason': restrictedReason.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deadline', 'restricted_reason'}.contains(key)); } 
TreasuryReceivedDebitsResourceReversalDetails copyWith({Omittable<int?>? deadline, Omittable<TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason?>? restrictedReason, }) { return TreasuryReceivedDebitsResourceReversalDetails(
  deadline: deadline ?? this.deadline,
  restrictedReason: restrictedReason ?? this.restrictedReason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedDebitsResourceReversalDetails &&
          deadline == other.deadline &&
          restrictedReason == other.restrictedReason; } 
@override int get hashCode { return Object.hash(deadline, restrictedReason); } 
@override String toString() { return 'TreasuryReceivedDebitsResourceReversalDetails(deadline: $deadline, restrictedReason: $restrictedReason)'; } 
 }
