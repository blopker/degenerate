// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RefundDestinationDetailsSwish {const RefundDestinationDetailsSwish({this.networkDeclineCode, this.reference, this.referenceStatus, });

factory RefundDestinationDetailsSwish.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsSwish(
  networkDeclineCode: json['network_decline_code'] as String?,
  reference: json['reference'] as String?,
  referenceStatus: json['reference_status'] as String?,
); }

/// For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
final String? networkDeclineCode;

/// The reference assigned to the refund.
final String? reference;

/// Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
final String? referenceStatus;

Map<String, dynamic> toJson() { return {
  'network_decline_code': ?networkDeclineCode,
  'reference': ?reference,
  'reference_status': ?referenceStatus,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RefundDestinationDetailsSwish copyWith({String? Function()? networkDeclineCode, String? Function()? reference, String? Function()? referenceStatus, }) { return RefundDestinationDetailsSwish(
  networkDeclineCode: networkDeclineCode != null ? networkDeclineCode() : this.networkDeclineCode,
  reference: reference != null ? reference() : this.reference,
  referenceStatus: referenceStatus != null ? referenceStatus() : this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsSwish &&
          networkDeclineCode == other.networkDeclineCode &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(networkDeclineCode, reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsSwish(networkDeclineCode: $networkDeclineCode, reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
