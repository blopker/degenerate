// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RefundDestinationDetailsBlik {const RefundDestinationDetailsBlik({this.networkDeclineCode, this.reference, this.referenceStatus, });

factory RefundDestinationDetailsBlik.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsBlik(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'network_decline_code', 'reference', 'reference_status'}.contains(key)); } 
RefundDestinationDetailsBlik copyWith({String? Function()? networkDeclineCode, String? Function()? reference, String? Function()? referenceStatus, }) { return RefundDestinationDetailsBlik(
  networkDeclineCode: networkDeclineCode != null ? networkDeclineCode() : this.networkDeclineCode,
  reference: reference != null ? reference() : this.reference,
  referenceStatus: referenceStatus != null ? referenceStatus() : this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsBlik &&
          networkDeclineCode == other.networkDeclineCode &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(networkDeclineCode, reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsBlik(networkDeclineCode: $networkDeclineCode, reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
