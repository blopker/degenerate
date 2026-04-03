// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto({required this.taxId});

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto(
  taxId: json['tax_id'] as String,
); }

final String taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tax_id') && json['tax_id'] is String; } 
PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto copyWith({String? taxId}) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto(
  taxId: taxId ?? this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBoleto(taxId: $taxId)'; } 
 }
