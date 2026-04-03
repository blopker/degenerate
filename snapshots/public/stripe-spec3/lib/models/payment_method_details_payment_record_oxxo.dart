// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsPaymentRecordOxxo {const PaymentMethodDetailsPaymentRecordOxxo({this.number});

factory PaymentMethodDetailsPaymentRecordOxxo.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordOxxo(
  number: json['number'] as String?,
); }

/// OXXO reference number
final String? number;

Map<String, dynamic> toJson() { return {
  'number': ?number,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number'}.contains(key)); } 
PaymentMethodDetailsPaymentRecordOxxo copyWith({String? Function()? number}) { return PaymentMethodDetailsPaymentRecordOxxo(
  number: number != null ? number() : this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordOxxo &&
          number == other.number; } 
@override int get hashCode { return number.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordOxxo(number: $number)'; } 
 }
