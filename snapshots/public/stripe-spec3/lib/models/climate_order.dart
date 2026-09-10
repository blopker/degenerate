// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'climate_order_product.dart';import 'climate_product.dart';import 'climate_removals_beneficiary.dart';import 'climate_removals_order_deliveries.dart';/// Reason for the cancellation of this order.
@immutable final class ClimateOrderCancellationReason {const ClimateOrderCancellationReason._(this.value);

factory ClimateOrderCancellationReason.fromJson(String json) { return switch (json) {
  'expired' => expired,
  'product_unavailable' => productUnavailable,
  'requested' => requested,
  _ => ClimateOrderCancellationReason._(json),
}; }

static const ClimateOrderCancellationReason expired = ClimateOrderCancellationReason._('expired');

static const ClimateOrderCancellationReason productUnavailable = ClimateOrderCancellationReason._('product_unavailable');

static const ClimateOrderCancellationReason requested = ClimateOrderCancellationReason._('requested');

static const List<ClimateOrderCancellationReason> values = [expired, productUnavailable, requested];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ClimateOrderCancellationReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ClimateOrderCancellationReason($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ClimateOrderObject {const ClimateOrderObject._(this.value);

factory ClimateOrderObject.fromJson(String json) { return switch (json) {
  'climate.order' => climateOrder,
  _ => ClimateOrderObject._(json),
}; }

static const ClimateOrderObject climateOrder = ClimateOrderObject._('climate.order');

static const List<ClimateOrderObject> values = [climateOrder];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ClimateOrderObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ClimateOrderObject($value)'; } 
 }
/// The current status of this order.
@immutable final class ClimateOrderStatus {const ClimateOrderStatus._(this.value);

factory ClimateOrderStatus.fromJson(String json) { return switch (json) {
  'awaiting_funds' => awaitingFunds,
  'canceled' => canceled,
  'confirmed' => confirmed,
  'delivered' => delivered,
  'open' => open,
  _ => ClimateOrderStatus._(json),
}; }

static const ClimateOrderStatus awaitingFunds = ClimateOrderStatus._('awaiting_funds');

static const ClimateOrderStatus canceled = ClimateOrderStatus._('canceled');

static const ClimateOrderStatus confirmed = ClimateOrderStatus._('confirmed');

static const ClimateOrderStatus delivered = ClimateOrderStatus._('delivered');

static const ClimateOrderStatus open = ClimateOrderStatus._('open');

static const List<ClimateOrderStatus> values = [awaitingFunds, canceled, confirmed, delivered, open];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ClimateOrderStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ClimateOrderStatus($value)'; } 
 }
/// Orders represent your intent to purchase a particular Climate product. When you create an order, the
/// payment is deducted from your merchant balance.
@immutable final class ClimateOrder {const ClimateOrder({required this.amountFees, required this.amountSubtotal, required this.amountTotal, required this.created, required this.currency, required this.deliveryDetails, required this.expectedDeliveryYear, required this.id, required this.livemode, required this.metadata, required this.metricTons, required this.object, required this.product, required this.status, this.beneficiary, this.canceledAt = const Omittable.absent(), this.cancellationReason = const Omittable.absent(), this.certificate = const Omittable.absent(), this.confirmedAt = const Omittable.absent(), this.delayedAt = const Omittable.absent(), this.deliveredAt = const Omittable.absent(), this.productSubstitutedAt = const Omittable.absent(), });

factory ClimateOrder.fromJson(Map<String, dynamic> json) { return ClimateOrder(
  amountFees: (json['amount_fees'] as num).toInt(),
  amountSubtotal: (json['amount_subtotal'] as num).toInt(),
  amountTotal: (json['amount_total'] as num).toInt(),
  beneficiary: json['beneficiary'] != null ? ClimateRemovalsBeneficiary.fromJson(json['beneficiary'] as Map<String, dynamic>) : null,
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  cancellationReason: json.containsKey('cancellation_reason') ? Omittable(json['cancellation_reason'] != null ? ClimateOrderCancellationReason.fromJson(json['cancellation_reason'] as String) : null) : const Omittable.absent(),
  certificate: json.containsKey('certificate') ? Omittable(json['certificate'] as String?) : const Omittable.absent(),
  confirmedAt: json.containsKey('confirmed_at') ? Omittable(json['confirmed_at'] != null ? (json['confirmed_at'] as num).toInt() : null) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  delayedAt: json.containsKey('delayed_at') ? Omittable(json['delayed_at'] != null ? (json['delayed_at'] as num).toInt() : null) : const Omittable.absent(),
  deliveredAt: json.containsKey('delivered_at') ? Omittable(json['delivered_at'] != null ? (json['delivered_at'] as num).toInt() : null) : const Omittable.absent(),
  deliveryDetails: (json['delivery_details'] as List<dynamic>).map((e) => ClimateRemovalsOrderDeliveries.fromJson(e as Map<String, dynamic>)).toList(),
  expectedDeliveryYear: (json['expected_delivery_year'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  metricTons: json['metric_tons'] as String,
  object: ClimateOrderObject.fromJson(json['object'] as String),
  product: OneOf2.parse(json['product'], fromA: (v) => v as String, fromB: (v) => ClimateProduct.fromJson(v as Map<String, dynamic>),),
  productSubstitutedAt: json.containsKey('product_substituted_at') ? Omittable(json['product_substituted_at'] != null ? (json['product_substituted_at'] as num).toInt() : null) : const Omittable.absent(),
  status: ClimateOrderStatus.fromJson(json['status'] as String),
); }

/// Total amount of [Frontier](https://frontierclimate.com/)'s service fees in the currency's smallest unit.
final int amountFees;

/// Total amount of the carbon removal in the currency's smallest unit.
final int amountSubtotal;

/// Total amount of the order including fees in the currency's smallest unit.
final int amountTotal;

final ClimateRemovalsBeneficiary? beneficiary;

/// Time at which the order was canceled. Measured in seconds since the Unix epoch.
final Omittable<int?> canceledAt;

/// Reason for the cancellation of this order.
final Omittable<ClimateOrderCancellationReason?> cancellationReason;

/// For delivered orders, a URL to a delivery certificate for the order.
final Omittable<String?> certificate;

/// Time at which the order was confirmed. Measured in seconds since the Unix epoch.
final Omittable<int?> confirmedAt;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase, representing the currency for this order.
final String currency;

/// Time at which the order's expected_delivery_year was delayed. Measured in seconds since the Unix epoch.
final Omittable<int?> delayedAt;

/// Time at which the order was delivered. Measured in seconds since the Unix epoch.
final Omittable<int?> deliveredAt;

/// Details about the delivery of carbon removal for this order.
final List<ClimateRemovalsOrderDeliveries> deliveryDetails;

/// The year this order is expected to be delivered.
final int expectedDeliveryYear;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// Quantity of carbon removal that is included in this order.
final String metricTons;

/// String representing the object's type. Objects of the same type share the same value.
final ClimateOrderObject object;

/// Unique ID for the Climate `Product` this order is purchasing.
final ClimateOrderProduct product;

/// Time at which the order's product was substituted for a different product. Measured in seconds since the Unix epoch.
final Omittable<int?> productSubstitutedAt;

/// The current status of this order.
final ClimateOrderStatus status;

Map<String, dynamic> toJson() { return {
  'amount_fees': amountFees,
  'amount_subtotal': amountSubtotal,
  'amount_total': amountTotal,
  if (beneficiary != null) 'beneficiary': beneficiary?.toJson(),
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (cancellationReason.isPresent) 'cancellation_reason': cancellationReason.value?.toJson(),
  if (certificate.isPresent) 'certificate': certificate.value,
  if (confirmedAt.isPresent) 'confirmed_at': confirmedAt.value,
  'created': created,
  'currency': currency,
  if (delayedAt.isPresent) 'delayed_at': delayedAt.value,
  if (deliveredAt.isPresent) 'delivered_at': deliveredAt.value,
  'delivery_details': deliveryDetails.map((e) => e.toJson()).toList(),
  'expected_delivery_year': expectedDeliveryYear,
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  'metric_tons': metricTons,
  'object': object.toJson(),
  'product': product.toJson(),
  if (productSubstitutedAt.isPresent) 'product_substituted_at': productSubstitutedAt.value,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_fees') && json['amount_fees'] is num &&
      json.containsKey('amount_subtotal') && json['amount_subtotal'] is num &&
      json.containsKey('amount_total') && json['amount_total'] is num &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('delivery_details') &&
      json.containsKey('expected_delivery_year') && json['expected_delivery_year'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('metric_tons') && json['metric_tons'] is String &&
      json.containsKey('object') &&
      json.containsKey('product') &&
      json.containsKey('status'); } 
ClimateOrder copyWith({int? amountFees, int? amountSubtotal, int? amountTotal, ClimateRemovalsBeneficiary? Function()? beneficiary, Omittable<int?>? canceledAt, Omittable<ClimateOrderCancellationReason?>? cancellationReason, Omittable<String?>? certificate, Omittable<int?>? confirmedAt, int? created, String? currency, Omittable<int?>? delayedAt, Omittable<int?>? deliveredAt, List<ClimateRemovalsOrderDeliveries>? deliveryDetails, int? expectedDeliveryYear, String? id, bool? livemode, Map<String,String>? metadata, String? metricTons, ClimateOrderObject? object, ClimateOrderProduct? product, Omittable<int?>? productSubstitutedAt, ClimateOrderStatus? status, }) { return ClimateOrder(
  amountFees: amountFees ?? this.amountFees,
  amountSubtotal: amountSubtotal ?? this.amountSubtotal,
  amountTotal: amountTotal ?? this.amountTotal,
  beneficiary: beneficiary != null ? beneficiary() : this.beneficiary,
  canceledAt: canceledAt ?? this.canceledAt,
  cancellationReason: cancellationReason ?? this.cancellationReason,
  certificate: certificate ?? this.certificate,
  confirmedAt: confirmedAt ?? this.confirmedAt,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  delayedAt: delayedAt ?? this.delayedAt,
  deliveredAt: deliveredAt ?? this.deliveredAt,
  deliveryDetails: deliveryDetails ?? this.deliveryDetails,
  expectedDeliveryYear: expectedDeliveryYear ?? this.expectedDeliveryYear,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  metricTons: metricTons ?? this.metricTons,
  object: object ?? this.object,
  product: product ?? this.product,
  productSubstitutedAt: productSubstitutedAt ?? this.productSubstitutedAt,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClimateOrder &&
          amountFees == other.amountFees &&
          amountSubtotal == other.amountSubtotal &&
          amountTotal == other.amountTotal &&
          beneficiary == other.beneficiary &&
          canceledAt == other.canceledAt &&
          cancellationReason == other.cancellationReason &&
          certificate == other.certificate &&
          confirmedAt == other.confirmedAt &&
          created == other.created &&
          currency == other.currency &&
          delayedAt == other.delayedAt &&
          deliveredAt == other.deliveredAt &&
          listEquals(deliveryDetails, other.deliveryDetails) &&
          expectedDeliveryYear == other.expectedDeliveryYear &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          metricTons == other.metricTons &&
          object == other.object &&
          product == other.product &&
          productSubstitutedAt == other.productSubstitutedAt &&
          status == other.status; } 
@override int get hashCode { return Object.hashAll([amountFees, amountSubtotal, amountTotal, beneficiary, canceledAt, cancellationReason, certificate, confirmedAt, created, currency, delayedAt, deliveredAt, Object.hashAll(deliveryDetails), expectedDeliveryYear, id, livemode, metadata, metricTons, object, product, productSubstitutedAt, status]); } 
@override String toString() { return 'ClimateOrder(amountFees: $amountFees, amountSubtotal: $amountSubtotal, amountTotal: $amountTotal, beneficiary: $beneficiary, canceledAt: $canceledAt, cancellationReason: $cancellationReason, certificate: $certificate, confirmedAt: $confirmedAt, created: $created, currency: $currency, delayedAt: $delayedAt, deliveredAt: $deliveredAt, deliveryDetails: $deliveryDetails, expectedDeliveryYear: $expectedDeliveryYear, id: $id, livemode: $livemode, metadata: $metadata, metricTons: $metricTons, object: $object, product: $product, productSubstitutedAt: $productSubstitutedAt, status: $status)'; } 
 }
