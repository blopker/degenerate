// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RefundDestinationDetailsBrBankTransfer {const RefundDestinationDetailsBrBankTransfer({this.reference = const Omittable.absent(), this.referenceStatus = const Omittable.absent(), });

factory RefundDestinationDetailsBrBankTransfer.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsBrBankTransfer(
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  referenceStatus: json.containsKey('reference_status') ? Omittable(json['reference_status'] as String?) : const Omittable.absent(),
); }

/// The reference assigned to the refund.
final Omittable<String?> reference;

/// Status of the reference on the refund. This can be `pending`, `available` or `unavailable`.
final Omittable<String?> referenceStatus;

Map<String, dynamic> toJson() { return {
  if (reference.isPresent) 'reference': reference.value,
  if (referenceStatus.isPresent) 'reference_status': referenceStatus.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference', 'reference_status'}.contains(key)); } 
RefundDestinationDetailsBrBankTransfer copyWith({Omittable<String?>? reference, Omittable<String?>? referenceStatus, }) { return RefundDestinationDetailsBrBankTransfer(
  reference: reference ?? this.reference,
  referenceStatus: referenceStatus ?? this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsBrBankTransfer &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsBrBankTransfer(reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
