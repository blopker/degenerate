// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
@immutable final class PostPaymentMethodsRequestBoleto {const PostPaymentMethodsRequestBoleto({required this.taxId});

factory PostPaymentMethodsRequestBoleto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestBoleto(
  taxId: json['tax_id'] as String,
); }

final String taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tax_id') && json['tax_id'] is String; } 
PostPaymentMethodsRequestBoleto copyWith({String? taxId}) { return PostPaymentMethodsRequestBoleto(
  taxId: taxId ?? this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestBoleto &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestBoleto(taxId: $taxId)'; } 
 }
