// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling {const PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling({required this.amount, required this.date, });

factory PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling(
  amount: (json['amount'] as num).toInt(),
  date: json['date'] as String,
); }

final int amount;

final String date;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'date': date,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('date') && json['date'] is String; } 
PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling copyWith({int? amount, String? date, }) { return PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling(
  amount: amount ?? this.amount,
  date: date ?? this.date,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling &&
          amount == other.amount &&
          date == other.date; } 
@override int get hashCode { return Object.hash(amount, date); } 
@override String toString() { return 'PaymentMethodOptionsParam54SubscriptionsVariant1NextBilling(amount: $amount, date: $date)'; } 
 }
