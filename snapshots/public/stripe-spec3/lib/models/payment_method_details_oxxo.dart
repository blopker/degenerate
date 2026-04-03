// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsOxxo {const PaymentMethodDetailsOxxo({this.number});

factory PaymentMethodDetailsOxxo.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsOxxo(
  number: json['number'] as String?,
); }

/// OXXO reference number
final String? number;

Map<String, dynamic> toJson() { return {
  'number': ?number,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number'}.contains(key)); } 
PaymentMethodDetailsOxxo copyWith({String? Function()? number}) { return PaymentMethodDetailsOxxo(
  number: number != null ? number() : this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsOxxo &&
          number == other.number; } 
@override int get hashCode { return number.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsOxxo(number: $number)'; } 
 }
