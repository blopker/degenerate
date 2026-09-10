// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodConfigBizPaymentMethodConfigurationDetails {const PaymentMethodConfigBizPaymentMethodConfigurationDetails({required this.id, this.parent = const Omittable.absent(), });

factory PaymentMethodConfigBizPaymentMethodConfigurationDetails.fromJson(Map<String, dynamic> json) { return PaymentMethodConfigBizPaymentMethodConfigurationDetails(
  id: json['id'] as String,
  parent: json.containsKey('parent') ? Omittable(json['parent'] as String?) : const Omittable.absent(),
); }

/// ID of the payment method configuration used.
final String id;

/// ID of the parent payment method configuration used.
final Omittable<String?> parent;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (parent.isPresent) 'parent': parent.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
PaymentMethodConfigBizPaymentMethodConfigurationDetails copyWith({String? id, Omittable<String?>? parent, }) { return PaymentMethodConfigBizPaymentMethodConfigurationDetails(
  id: id ?? this.id,
  parent: parent ?? this.parent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodConfigBizPaymentMethodConfigurationDetails &&
          id == other.id &&
          parent == other.parent; } 
@override int get hashCode { return Object.hash(id, parent); } 
@override String toString() { return 'PaymentMethodConfigBizPaymentMethodConfigurationDetails(id: $id, parent: $parent)'; } 
 }
