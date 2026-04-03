// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsBoleto {const PaymentMethodDetailsBoleto({required this.taxId});

factory PaymentMethodDetailsBoleto.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBoleto(
  taxId: json['tax_id'] as String,
); }

/// The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
final String taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tax_id') && json['tax_id'] is String; } 
PaymentMethodDetailsBoleto copyWith({String? taxId}) { return PaymentMethodDetailsBoleto(
  taxId: taxId ?? this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBoleto &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsBoleto(taxId: $taxId)'; } 
 }
