// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RefundDestinationDetailsJpBankTransfer {const RefundDestinationDetailsJpBankTransfer({this.reference, this.referenceStatus, });

factory RefundDestinationDetailsJpBankTransfer.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsJpBankTransfer(
  reference: json['reference'] as String?,
  referenceStatus: json['reference_status'] as String?,
); }

/// The reference assigned to the refund.
final String? reference;

/// Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
final String? referenceStatus;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
  'reference_status': ?referenceStatus,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RefundDestinationDetailsJpBankTransfer copyWith({String? Function()? reference, String? Function()? referenceStatus, }) { return RefundDestinationDetailsJpBankTransfer(
  reference: reference != null ? reference() : this.reference,
  referenceStatus: referenceStatus != null ? referenceStatus() : this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsJpBankTransfer &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsJpBankTransfer(reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
