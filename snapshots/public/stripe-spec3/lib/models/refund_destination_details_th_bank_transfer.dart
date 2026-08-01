// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RefundDestinationDetailsThBankTransfer {const RefundDestinationDetailsThBankTransfer({this.reference = const Omittable.absent(), this.referenceStatus = const Omittable.absent(), });

factory RefundDestinationDetailsThBankTransfer.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsThBankTransfer(
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
RefundDestinationDetailsThBankTransfer copyWith({Omittable<String?>? reference, Omittable<String?>? referenceStatus, }) { return RefundDestinationDetailsThBankTransfer(
  reference: reference ?? this.reference,
  referenceStatus: referenceStatus ?? this.referenceStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsThBankTransfer &&
          reference == other.reference &&
          referenceStatus == other.referenceStatus; } 
@override int get hashCode { return Object.hash(reference, referenceStatus); } 
@override String toString() { return 'RefundDestinationDetailsThBankTransfer(reference: $reference, referenceStatus: $referenceStatus)'; } 
 }
