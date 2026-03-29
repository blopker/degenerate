// GENERATED CODE - DO NOT MODIFY BY HAND

/// Set if a ReceivedCredit cannot be reversed.
final class TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason {const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason._(this.value);

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
final class TreasuryReceivedCreditsResourceReversalDetails {const TreasuryReceivedCreditsResourceReversalDetails({this.deadline, this.restrictedReason, });

factory TreasuryReceivedCreditsResourceReversalDetails.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCreditsResourceReversalDetails(
  deadline: json['deadline'] != null ? (json['deadline'] as num).toInt() : null,
  restrictedReason: json['restricted_reason'] != null ? TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason.fromJson(json['restricted_reason'] as String) : null,
); }

/// Time before which a ReceivedCredit can be reversed.
final int? deadline;

/// Set if a ReceivedCredit cannot be reversed.
final TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason? restrictedReason;

Map<String, dynamic> toJson() { return {
  'deadline': ?deadline,
  if (restrictedReason != null) 'restricted_reason': restrictedReason?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TreasuryReceivedCreditsResourceReversalDetails copyWith({int? Function()? deadline, TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason? Function()? restrictedReason, }) { return TreasuryReceivedCreditsResourceReversalDetails(
  deadline: deadline != null ? deadline() : this.deadline,
  restrictedReason: restrictedReason != null ? restrictedReason() : this.restrictedReason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCreditsResourceReversalDetails &&
          deadline == other.deadline &&
          restrictedReason == other.restrictedReason; } 
@override int get hashCode { return Object.hash(deadline, restrictedReason); } 
@override String toString() { return 'TreasuryReceivedCreditsResourceReversalDetails(deadline: $deadline, restrictedReason: $restrictedReason)'; } 
 }
