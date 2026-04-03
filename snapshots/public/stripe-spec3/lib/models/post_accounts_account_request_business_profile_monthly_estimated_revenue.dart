// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue {const PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue({required this.amount, required this.currency, });

factory PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
); }

final int amount;

final String currency;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String; } 
PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue copyWith({int? amount, String? currency, }) { return PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue &&
          amount == other.amount &&
          currency == other.currency; } 
@override int get hashCode { return Object.hash(amount, currency); } 
@override String toString() { return 'PostAccountsAccountRequestBusinessProfileMonthlyEstimatedRevenue(amount: $amount, currency: $currency)'; } 
 }
