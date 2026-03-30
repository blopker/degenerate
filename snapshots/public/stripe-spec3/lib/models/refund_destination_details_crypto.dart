// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RefundDestinationDetailsCrypto {const RefundDestinationDetailsCrypto({this.reference});

factory RefundDestinationDetailsCrypto.fromJson(Map<String, dynamic> json) { return RefundDestinationDetailsCrypto(
  reference: json['reference'] as String?,
); }

/// The transaction hash of the refund.
final String? reference;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
RefundDestinationDetailsCrypto copyWith({String? Function()? reference}) { return RefundDestinationDetailsCrypto(
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundDestinationDetailsCrypto &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'RefundDestinationDetailsCrypto(reference: $reference)'; } 
 }
