// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class AccountAnnualRevenue {const AccountAnnualRevenue({this.amount, this.currency, this.fiscalYearEnd, });

factory AccountAnnualRevenue.fromJson(Map<String, dynamic> json) { return AccountAnnualRevenue(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  currency: json['currency'] as String?,
  fiscalYearEnd: json['fiscal_year_end'] as String?,
); }

/// A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
final int? amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String? currency;

/// The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
final String? fiscalYearEnd;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'currency': ?currency,
  'fiscal_year_end': ?fiscalYearEnd,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountAnnualRevenue copyWith({int? Function()? amount, String? Function()? currency, String? Function()? fiscalYearEnd, }) { return AccountAnnualRevenue(
  amount: amount != null ? amount() : this.amount,
  currency: currency != null ? currency() : this.currency,
  fiscalYearEnd: fiscalYearEnd != null ? fiscalYearEnd() : this.fiscalYearEnd,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountAnnualRevenue &&
          amount == other.amount &&
          currency == other.currency &&
          fiscalYearEnd == other.fiscalYearEnd; } 
@override int get hashCode { return Object.hash(amount, currency, fiscalYearEnd); } 
@override String toString() { return 'AccountAnnualRevenue(amount: $amount, currency: $currency, fiscalYearEnd: $fiscalYearEnd)'; } 
 }
