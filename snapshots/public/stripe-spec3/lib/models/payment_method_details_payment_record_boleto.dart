// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPaymentRecordBoleto {const PaymentMethodDetailsPaymentRecordBoleto({this.taxId = const Omittable.absent()});

factory PaymentMethodDetailsPaymentRecordBoleto.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordBoleto(
  taxId: json.containsKey('tax_id') ? Omittable(json['tax_id'] as String?) : const Omittable.absent(),
); }

/// The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
final Omittable<String?> taxId;

Map<String, dynamic> toJson() { return {
  if (taxId.isPresent) 'tax_id': taxId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax_id'}.contains(key)); } 
PaymentMethodDetailsPaymentRecordBoleto copyWith({Omittable<String?>? taxId}) { return PaymentMethodDetailsPaymentRecordBoleto(
  taxId: taxId ?? this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordBoleto &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordBoleto(taxId: $taxId)'; } 
 }
