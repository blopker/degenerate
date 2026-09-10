// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsOxxo {const PaymentMethodDetailsOxxo({this.number = const Omittable.absent()});

factory PaymentMethodDetailsOxxo.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsOxxo(
  number: json.containsKey('number') ? Omittable(json['number'] as String?) : const Omittable.absent(),
); }

/// OXXO reference number
final Omittable<String?> number;

Map<String, dynamic> toJson() { return {
  if (number.isPresent) 'number': number.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'number'}.contains(key)); } 
PaymentMethodDetailsOxxo copyWith({Omittable<String?>? number}) { return PaymentMethodDetailsOxxo(
  number: number ?? this.number,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsOxxo &&
          number == other.number; } 
@override int get hashCode { return number.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsOxxo(number: $number)'; } 
 }
