// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountAnnualRevenue {const AccountAnnualRevenue({this.amount = const Omittable.absent(), this.currency = const Omittable.absent(), this.fiscalYearEnd = const Omittable.absent(), });

factory AccountAnnualRevenue.fromJson(Map<String, dynamic> json) { return AccountAnnualRevenue(
  amount: json.containsKey('amount') ? Omittable(json['amount'] != null ? (json['amount'] as num).toInt() : null) : const Omittable.absent(),
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  fiscalYearEnd: json.containsKey('fiscal_year_end') ? Omittable(json['fiscal_year_end'] as String?) : const Omittable.absent(),
); }

/// A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
final Omittable<int?> amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final Omittable<String?> currency;

/// The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
final Omittable<String?> fiscalYearEnd;

Map<String, dynamic> toJson() { return {
  if (amount.isPresent) 'amount': amount.value,
  if (currency.isPresent) 'currency': currency.value,
  if (fiscalYearEnd.isPresent) 'fiscal_year_end': fiscalYearEnd.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'currency', 'fiscal_year_end'}.contains(key)); } 
AccountAnnualRevenue copyWith({Omittable<int?>? amount, Omittable<String?>? currency, Omittable<String?>? fiscalYearEnd, }) { return AccountAnnualRevenue(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  fiscalYearEnd: fiscalYearEnd ?? this.fiscalYearEnd,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAnnualRevenue &&
          amount == other.amount &&
          currency == other.currency &&
          fiscalYearEnd == other.fiscalYearEnd; } 
@override int get hashCode { return Object.hash(amount, currency, fiscalYearEnd); } 
@override String toString() { return 'AccountAnnualRevenue(amount: $amount, currency: $currency, fiscalYearEnd: $fiscalYearEnd)'; } 
 }
