// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class RefundDestinationDetailsCrypto {const RefundDestinationDetailsCrypto({this.reference = const Omittable.absent()});

factory RefundDestinationDetailsCrypto.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsCrypto(
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// The transaction hash of the refund.
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
RefundDestinationDetailsCrypto copyWith({Omittable<String?>? reference}) { return RefundDestinationDetailsCrypto(
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsCrypto &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'RefundDestinationDetailsCrypto(reference: $reference)'; } 
 }
