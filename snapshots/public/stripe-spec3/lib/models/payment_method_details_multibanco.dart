// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsMultibanco {const PaymentMethodDetailsMultibanco({this.entity = const Omittable.absent(), this.reference = const Omittable.absent(), });

factory PaymentMethodDetailsMultibanco.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsMultibanco(
  entity: json.containsKey('entity') ? Omittable(json['entity'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// Entity number associated with this Multibanco payment.
final Omittable<String?> entity;

/// Reference number associated with this Multibanco payment.
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (entity.isPresent) 'entity': entity.value,
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'entity', 'reference'}.contains(key)); } 
PaymentMethodDetailsMultibanco copyWith({Omittable<String?>? entity, Omittable<String?>? reference, }) { return PaymentMethodDetailsMultibanco(
  entity: entity ?? this.entity,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsMultibanco &&
          entity == other.entity &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(entity, reference); } 
@override String toString() { return 'PaymentMethodDetailsMultibanco(entity: $entity, reference: $reference)'; } 
 }
