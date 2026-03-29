// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval day = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('day');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval month = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('month');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval week = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('week');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval year = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval._('year');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval($value)'; } 
 }
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand({this.averageAmount, this.maximumAmount, this.minimumAmount, this.purchaseInterval, this.purchaseIntervalCount, });

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand(
  averageAmount: json['average_amount'] != null ? (json['average_amount'] as num).toInt() : null,
  maximumAmount: json['maximum_amount'] != null ? (json['maximum_amount'] as num).toInt() : null,
  minimumAmount: json['minimum_amount'] != null ? (json['minimum_amount'] as num).toInt() : null,
  purchaseInterval: json['purchase_interval'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval.fromJson(json['purchase_interval'] as String) : null,
  purchaseIntervalCount: json['purchase_interval_count'] != null ? (json['purchase_interval_count'] as num).toInt() : null,
); }

final int? averageAmount;

final int? maximumAmount;

final int? minimumAmount;

final PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval? purchaseInterval;

final int? purchaseIntervalCount;

Map<String, dynamic> toJson() { return {
  'average_amount': ?averageAmount,
  'maximum_amount': ?maximumAmount,
  'minimum_amount': ?minimumAmount,
  if (purchaseInterval != null) 'purchase_interval': purchaseInterval?.toJson(),
  'purchase_interval_count': ?purchaseIntervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand copyWith({int Function()? averageAmount, int Function()? maximumAmount, int Function()? minimumAmount, PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemandPurchaseInterval Function()? purchaseInterval, int Function()? purchaseIntervalCount, }) { return PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand(
  averageAmount: averageAmount != null ? averageAmount() : this.averageAmount,
  maximumAmount: maximumAmount != null ? maximumAmount() : this.maximumAmount,
  minimumAmount: minimumAmount != null ? minimumAmount() : this.minimumAmount,
  purchaseInterval: purchaseInterval != null ? purchaseInterval() : this.purchaseInterval,
  purchaseIntervalCount: purchaseIntervalCount != null ? purchaseIntervalCount() : this.purchaseIntervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand &&
          averageAmount == other.averageAmount &&
          maximumAmount == other.maximumAmount &&
          minimumAmount == other.minimumAmount &&
          purchaseInterval == other.purchaseInterval &&
          purchaseIntervalCount == other.purchaseIntervalCount; } 
@override int get hashCode { return Object.hash(averageAmount, maximumAmount, minimumAmount, purchaseInterval, purchaseIntervalCount); } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsKlarnaOnDemand(averageAmount: $averageAmount, maximumAmount: $maximumAmount, minimumAmount: $minimumAmount, purchaseInterval: $purchaseInterval, purchaseIntervalCount: $purchaseIntervalCount)'; } 
 }
