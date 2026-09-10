// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RefundDestinationDetailsSwish {const RefundDestinationDetailsSwish({this.networkDeclineCode = const Omittable.absent(), this.reference = const Omittable.absent(), this.referenceStatus = const Omittable.absent(), });

factory RefundDestinationDetailsSwish.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsSwish(
  networkDeclineCode: json.containsKey('network_decline_code') ? Omittable(json['network_decline_code'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  referenceStatus: json.containsKey('reference_status') ? Omittable(json['reference_status'] as String?) : const Omittable.absent(),
); }

/// For refunds declined by the network, a decline code provided by the network which indicates the reason the refund failed.
final Omittable<String?> networkDeclineCode;

/// The reference assigned to the refund.
final Omittable<String?> reference;

/// Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
final Omittable<String?> referenceStatus;

Map<String, dynamic> toJson() { return {
  if (networkDeclineCode.isPresent) 'network_decline_code': networkDeclineCode.value,
  if (reference.isPresent) 'reference': reference.value,
  if (referenceStatus.isPresent) 'reference_status': referenceStatus.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'network_decline_code', 'reference', 'reference_status'}.contains(key)); } 
RefundDestinationDetailsSwish copyWith({Omittable<String?>? networkDeclineCode, Omittable<String?>? reference, Omittable<String?>? referenceStatus, }) { return RefundDestinationDetailsSwish(
  networkDeclineCode: networkDeclineCode ?? this.networkDeclineCode,
  reference: reference ?? this.reference,
  referenceStatus: referenceStatus ?? this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsSwish &&
          networkDeclineCode == other.networkDeclineCode &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(networkDeclineCode, reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsSwish(networkDeclineCode: $networkDeclineCode, reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
