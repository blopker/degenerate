// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval {const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval day = PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('day');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval month = PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('month');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval week = PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('week');

static const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval year = PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('year');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval($value)'; } 
 }
final class PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand {const PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand({this.averageAmount, this.maximumAmount, this.minimumAmount, this.purchaseInterval, this.purchaseIntervalCount, });

factory PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand(
  averageAmount: json['average_amount'] != null ? (json['average_amount'] as num).toInt() : null,
  maximumAmount: json['maximum_amount'] != null ? (json['maximum_amount'] as num).toInt() : null,
  minimumAmount: json['minimum_amount'] != null ? (json['minimum_amount'] as num).toInt() : null,
  purchaseInterval: json['purchase_interval'] != null ? PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval.fromJson(json['purchase_interval'] as String) : null,
  purchaseIntervalCount: json['purchase_interval_count'] != null ? (json['purchase_interval_count'] as num).toInt() : null,
); }

final int? averageAmount;

final int? maximumAmount;

final int? minimumAmount;

final PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval? purchaseInterval;

final int? purchaseIntervalCount;

Map<String, dynamic> toJson() { return {
  'average_amount': ?averageAmount,
  'maximum_amount': ?maximumAmount,
  'minimum_amount': ?minimumAmount,
  if (purchaseInterval != null) 'purchase_interval': purchaseInterval?.toJson(),
  'purchase_interval_count': ?purchaseIntervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand copyWith({int Function()? averageAmount, int Function()? maximumAmount, int Function()? minimumAmount, PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval Function()? purchaseInterval, int Function()? purchaseIntervalCount, }) { return PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand(
  averageAmount: averageAmount != null ? averageAmount() : this.averageAmount,
  maximumAmount: maximumAmount != null ? maximumAmount() : this.maximumAmount,
  minimumAmount: minimumAmount != null ? minimumAmount() : this.minimumAmount,
  purchaseInterval: purchaseInterval != null ? purchaseInterval() : this.purchaseInterval,
  purchaseIntervalCount: purchaseIntervalCount != null ? purchaseIntervalCount() : this.purchaseIntervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand &&
          averageAmount == other.averageAmount &&
          maximumAmount == other.maximumAmount &&
          minimumAmount == other.minimumAmount &&
          purchaseInterval == other.purchaseInterval &&
          purchaseIntervalCount == other.purchaseIntervalCount; } 
@override int get hashCode { return Object.hash(averageAmount, maximumAmount, minimumAmount, purchaseInterval, purchaseIntervalCount); } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsKlarnaOnDemand(averageAmount: $averageAmount, maximumAmount: $maximumAmount, minimumAmount: $minimumAmount, purchaseInterval: $purchaseInterval, purchaseIntervalCount: $purchaseIntervalCount)'; } 
 }
