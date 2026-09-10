// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'promotion_code_currency_option.dart';/// 
@immutable final class PromotionCodesResourceRestrictions {const PromotionCodesResourceRestrictions({required this.firstTimeTransaction, this.currencyOptions, this.minimumAmount = const Omittable.absent(), this.minimumAmountCurrency = const Omittable.absent(), });

factory PromotionCodesResourceRestrictions.fromJson(Map<String, dynamic> json) { return PromotionCodesResourceRestrictions(
  currencyOptions: (json['currency_options'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, PromotionCodeCurrencyOption.fromJson(v as Map<String, dynamic>))),
  firstTimeTransaction: json['first_time_transaction'] as bool,
  minimumAmount: json.containsKey('minimum_amount') ? Omittable(json['minimum_amount'] != null ? (json['minimum_amount'] as num).toInt() : null) : const Omittable.absent(),
  minimumAmountCurrency: json.containsKey('minimum_amount_currency') ? Omittable(json['minimum_amount_currency'] as String?) : const Omittable.absent(),
); }

/// Promotion code restrictions defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
final Map<String,PromotionCodeCurrencyOption>? currencyOptions;

/// A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
final bool firstTimeTransaction;

/// Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
final Omittable<int?> minimumAmount;

/// Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
final Omittable<String?> minimumAmountCurrency;

Map<String, dynamic> toJson() { return {
  if (currencyOptions != null) 'currency_options': currencyOptions?.map((k, v) => MapEntry(k, v.toJson())),
  'first_time_transaction': firstTimeTransaction,
  if (minimumAmount.isPresent) 'minimum_amount': minimumAmount.value,
  if (minimumAmountCurrency.isPresent) 'minimum_amount_currency': minimumAmountCurrency.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('first_time_transaction') && json['first_time_transaction'] is bool; } 
PromotionCodesResourceRestrictions copyWith({Map<String, PromotionCodeCurrencyOption>? Function()? currencyOptions, bool? firstTimeTransaction, Omittable<int?>? minimumAmount, Omittable<String?>? minimumAmountCurrency, }) { return PromotionCodesResourceRestrictions(
  currencyOptions: currencyOptions != null ? currencyOptions() : this.currencyOptions,
  firstTimeTransaction: firstTimeTransaction ?? this.firstTimeTransaction,
  minimumAmount: minimumAmount ?? this.minimumAmount,
  minimumAmountCurrency: minimumAmountCurrency ?? this.minimumAmountCurrency,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PromotionCodesResourceRestrictions &&
          currencyOptions == other.currencyOptions &&
          firstTimeTransaction == other.firstTimeTransaction &&
          minimumAmount == other.minimumAmount &&
          minimumAmountCurrency == other.minimumAmountCurrency; } 
@override int get hashCode { return Object.hash(currencyOptions, firstTimeTransaction, minimumAmount, minimumAmountCurrency); } 
@override String toString() { return 'PromotionCodesResourceRestrictions(currencyOptions: $currencyOptions, firstTimeTransaction: $firstTimeTransaction, minimumAmount: $minimumAmount, minimumAmountCurrency: $minimumAmountCurrency)'; } 
 }
