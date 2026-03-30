// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class BankConnectionsResourceTransactionResourceStatusTransitions {const BankConnectionsResourceTransactionResourceStatusTransitions({this.postedAt, this.voidAt, });

factory BankConnectionsResourceTransactionResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return BankConnectionsResourceTransactionResourceStatusTransitions(
  postedAt: json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null,
  voidAt: json['void_at'] != null ? (json['void_at'] as num).toInt() : null,
); }

/// Time at which this transaction posted. Measured in seconds since the Unix epoch.
final int? postedAt;

/// Time at which this transaction was voided. Measured in seconds since the Unix epoch.
final int? voidAt;

Map<String, dynamic> toJson() { return {
  'posted_at': ?postedAt,
  'void_at': ?voidAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at', 'void_at'}.contains(key)); } 
BankConnectionsResourceTransactionResourceStatusTransitions copyWith({int? Function()? postedAt, int? Function()? voidAt, }) { return BankConnectionsResourceTransactionResourceStatusTransitions(
  postedAt: postedAt != null ? postedAt() : this.postedAt,
  voidAt: voidAt != null ? voidAt() : this.voidAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankConnectionsResourceTransactionResourceStatusTransitions &&
          postedAt == other.postedAt &&
          voidAt == other.voidAt; } 
@override int get hashCode { return Object.hash(postedAt, voidAt); } 
@override String toString() { return 'BankConnectionsResourceTransactionResourceStatusTransitions(postedAt: $postedAt, voidAt: $voidAt)'; } 
 }
