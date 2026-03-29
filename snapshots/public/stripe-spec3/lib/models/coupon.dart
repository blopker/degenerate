// GENERATED CODE - DO NOT MODIFY BY HAND

import 'coupon_applies_to.dart';import 'coupon_currency_option.dart';/// One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
final class CouponDuration {const CouponDuration._(this.value);

factory CouponDuration.fromJson(String json) { return switch (json) {
  'forever' => forever,
  'once' => once,
  'repeating' => repeating,
  _ => CouponDuration._(json),
}; }

static const CouponDuration forever = CouponDuration._('forever');

static const CouponDuration once = CouponDuration._('once');

static const CouponDuration repeating = CouponDuration._('repeating');

static const List<CouponDuration> values = [forever, once, repeating];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CouponDuration && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CouponDuration($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class CouponObject {const CouponObject._(this.value);

factory CouponObject.fromJson(String json) { return switch (json) {
  'coupon' => coupon,
  _ => CouponObject._(json),
}; }

static const CouponObject coupon = CouponObject._('coupon');

static const List<CouponObject> values = [coupon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CouponObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CouponObject($value)'; } 
 }
/// A coupon contains information about a percent-off or amount-off discount you
/// might want to apply to a customer. Coupons may be applied to [subscriptions](https://api.stripe.com#subscriptions), [invoices](https://api.stripe.com#invoices),
/// [checkout sessions](https://docs.stripe.com/api/checkout/sessions), [quotes](https://api.stripe.com#quotes), and more. Coupons do not work with conventional one-off [charges](https://api.stripe.com#create_charge) or [payment intents](https://docs.stripe.com/api/payment_intents).
final class Coupon {const Coupon({this.amountOff, this.appliesTo, required this.created, this.currency, this.currencyOptions, required this.duration, this.durationInMonths, required this.id, required this.livemode, this.maxRedemptions, this.metadata, this.name, required this.object, this.percentOff, this.redeemBy, required this.timesRedeemed, required this.valid, });

factory Coupon.fromJson(Map<String, dynamic> json) { return Coupon(
  amountOff: json['amount_off'] != null ? (json['amount_off'] as num).toInt() : null,
  appliesTo: json['applies_to'] != null ? CouponAppliesTo.fromJson(json['applies_to'] as Map<String, dynamic>) : null,
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String?,
  currencyOptions: (json['currency_options'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, CouponCurrencyOption.fromJson(v as Map<String, dynamic>))),
  duration: CouponDuration.fromJson(json['duration'] as String),
  durationInMonths: json['duration_in_months'] != null ? (json['duration_in_months'] as num).toInt() : null,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  maxRedemptions: json['max_redemptions'] != null ? (json['max_redemptions'] as num).toInt() : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String?,
  object: CouponObject.fromJson(json['object'] as String),
  percentOff: json['percent_off'] != null ? (json['percent_off'] as num).toDouble() : null,
  redeemBy: json['redeem_by'] != null ? (json['redeem_by'] as num).toInt() : null,
  timesRedeemed: (json['times_redeemed'] as num).toInt(),
  valid: json['valid'] as bool,
); }

/// Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
final int? amountOff;

final CouponAppliesTo? appliesTo;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
final String? currency;

/// Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
final Map<String,CouponCurrencyOption>? currencyOptions;

/// One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
final CouponDuration duration;

/// If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
final int? durationInMonths;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
final int? maxRedemptions;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// Name of the coupon displayed to customers on for instance invoices or receipts.
final String? name;

/// String representing the object's type. Objects of the same type share the same value.
final CouponObject object;

/// Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
final double? percentOff;

/// Date after which the coupon can no longer be redeemed.
final int? redeemBy;

/// Number of times this coupon has been applied to a customer.
final int timesRedeemed;

/// Taking account of the above properties, whether this coupon can still be applied to a customer.
final bool valid;

Map<String, dynamic> toJson() { return {
  'amount_off': ?amountOff,
  if (appliesTo != null) 'applies_to': appliesTo?.toJson(),
  'created': created,
  'currency': ?currency,
  if (currencyOptions != null) 'currency_options': currencyOptions?.map((k, v) => MapEntry(k, v.toJson())),
  'duration': duration.toJson(),
  'duration_in_months': ?durationInMonths,
  'id': id,
  'livemode': livemode,
  'max_redemptions': ?maxRedemptions,
  'metadata': ?metadata,
  'name': ?name,
  'object': object.toJson(),
  'percent_off': ?percentOff,
  'redeem_by': ?redeemBy,
  'times_redeemed': timesRedeemed,
  'valid': valid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('duration') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('times_redeemed') && json['times_redeemed'] is num &&
      json.containsKey('valid') && json['valid'] is bool; } 
Coupon copyWith({int? Function()? amountOff, CouponAppliesTo Function()? appliesTo, int? created, String? Function()? currency, Map<String, CouponCurrencyOption> Function()? currencyOptions, CouponDuration? duration, int? Function()? durationInMonths, String? id, bool? livemode, int? Function()? maxRedemptions, Map<String, String>? Function()? metadata, String? Function()? name, CouponObject? object, double? Function()? percentOff, int? Function()? redeemBy, int? timesRedeemed, bool? valid, }) { return Coupon(
  amountOff: amountOff != null ? amountOff() : this.amountOff,
  appliesTo: appliesTo != null ? appliesTo() : this.appliesTo,
  created: created ?? this.created,
  currency: currency != null ? currency() : this.currency,
  currencyOptions: currencyOptions != null ? currencyOptions() : this.currencyOptions,
  duration: duration ?? this.duration,
  durationInMonths: durationInMonths != null ? durationInMonths() : this.durationInMonths,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  maxRedemptions: maxRedemptions != null ? maxRedemptions() : this.maxRedemptions,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
  object: object ?? this.object,
  percentOff: percentOff != null ? percentOff() : this.percentOff,
  redeemBy: redeemBy != null ? redeemBy() : this.redeemBy,
  timesRedeemed: timesRedeemed ?? this.timesRedeemed,
  valid: valid ?? this.valid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Coupon &&
          amountOff == other.amountOff &&
          appliesTo == other.appliesTo &&
          created == other.created &&
          currency == other.currency &&
          currencyOptions == other.currencyOptions &&
          duration == other.duration &&
          durationInMonths == other.durationInMonths &&
          id == other.id &&
          livemode == other.livemode &&
          maxRedemptions == other.maxRedemptions &&
          metadata == other.metadata &&
          name == other.name &&
          object == other.object &&
          percentOff == other.percentOff &&
          redeemBy == other.redeemBy &&
          timesRedeemed == other.timesRedeemed &&
          valid == other.valid; } 
@override int get hashCode { return Object.hash(amountOff, appliesTo, created, currency, currencyOptions, duration, durationInMonths, id, livemode, maxRedemptions, metadata, name, object, percentOff, redeemBy, timesRedeemed, valid); } 
@override String toString() { return 'Coupon(amountOff: $amountOff, appliesTo: $appliesTo, created: $created, currency: $currency, currencyOptions: $currencyOptions, duration: $duration, durationInMonths: $durationInMonths, id: $id, livemode: $livemode, maxRedemptions: $maxRedemptions, metadata: $metadata, name: $name, object: $object, percentOff: $percentOff, redeemBy: $redeemBy, timesRedeemed: $timesRedeemed, valid: $valid)'; } 
 }
