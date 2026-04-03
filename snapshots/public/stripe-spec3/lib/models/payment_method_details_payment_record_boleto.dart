// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPaymentRecordBoleto {const PaymentMethodDetailsPaymentRecordBoleto({this.taxId});

factory PaymentMethodDetailsPaymentRecordBoleto.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordBoleto(
  taxId: json['tax_id'] as String?,
); }

/// The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
final String? taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax_id'}.contains(key)); } 
PaymentMethodDetailsPaymentRecordBoleto copyWith({String? Function()? taxId}) { return PaymentMethodDetailsPaymentRecordBoleto(
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordBoleto &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordBoleto(taxId: $taxId)'; } 
 }
