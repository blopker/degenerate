// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationSpecs {const DestinationSpecs({required this.account, this.amount, });

factory DestinationSpecs.fromJson(Map<String, dynamic> json) { return DestinationSpecs(
  account: json['account'] as String,
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
); }

final String account;

final int? amount;

Map<String, dynamic> toJson() { return {
  'account': account,
  'amount': ?amount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String; } 
DestinationSpecs copyWith({String? account, int Function()? amount, }) { return DestinationSpecs(
  account: account ?? this.account,
  amount: amount != null ? amount() : this.amount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationSpecs &&
          account == other.account &&
          amount == other.amount; } 
@override int get hashCode { return Object.hash(account, amount); } 
@override String toString() { return 'DestinationSpecs(account: $account, amount: $amount)'; } 
 }
