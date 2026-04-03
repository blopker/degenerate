// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsMultibanco {const PaymentMethodDetailsMultibanco({this.entity, this.reference, });

factory PaymentMethodDetailsMultibanco.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsMultibanco(
  entity: json['entity'] as String?,
  reference: json['reference'] as String?,
); }

/// Entity number associated with this Multibanco payment.
final String? entity;

/// Reference number associated with this Multibanco payment.
final String? reference;

Map<String, dynamic> toJson() { return {
  'entity': ?entity,
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entity', 'reference'}.contains(key)); } 
PaymentMethodDetailsMultibanco copyWith({String? Function()? entity, String? Function()? reference, }) { return PaymentMethodDetailsMultibanco(
  entity: entity != null ? entity() : this.entity,
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsMultibanco &&
          entity == other.entity &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(entity, reference); } 
@override String toString() { return 'PaymentMethodDetailsMultibanco(entity: $entity, reference: $reference)'; } 
 }
