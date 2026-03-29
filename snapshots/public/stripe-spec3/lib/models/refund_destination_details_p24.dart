// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RefundDestinationDetailsP24 {const RefundDestinationDetailsP24({this.reference, this.referenceStatus, });

factory RefundDestinationDetailsP24.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsP24(
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
RefundDestinationDetailsP24 copyWith({String? Function()? reference, String? Function()? referenceStatus, }) { return RefundDestinationDetailsP24(
  reference: reference != null ? reference() : this.reference,
  referenceStatus: referenceStatus != null ? referenceStatus() : this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsP24 &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsP24(reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
