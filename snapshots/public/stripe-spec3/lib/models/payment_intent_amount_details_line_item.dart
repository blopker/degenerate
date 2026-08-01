// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_flows_amount_details_resource_line_items_list_resource_line_item_resource_payment_method_options.dart';import 'payment_flows_amount_details_resource_line_items_list_resource_line_item_resource_tax.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class PaymentIntentAmountDetailsLineItemObject {const PaymentIntentAmountDetailsLineItemObject._(this.value);

factory PaymentIntentAmountDetailsLineItemObject.fromJson(String json) { return switch (json) {
  'payment_intent_amount_details_line_item' => paymentIntentAmountDetailsLineItem,
  _ => PaymentIntentAmountDetailsLineItemObject._(json),
}; }

static const PaymentIntentAmountDetailsLineItemObject paymentIntentAmountDetailsLineItem = PaymentIntentAmountDetailsLineItemObject._('payment_intent_amount_details_line_item');

static const List<PaymentIntentAmountDetailsLineItemObject> values = [paymentIntentAmountDetailsLineItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentAmountDetailsLineItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentAmountDetailsLineItemObject($value)'; } 
 }
/// 
@immutable final class PaymentIntentAmountDetailsLineItem {const PaymentIntentAmountDetailsLineItem({required this.id, required this.object, required this.productName, required this.quantity, required this.unitCost, this.discountAmount = const Omittable.absent(), this.paymentMethodOptions = const Omittable.absent(), this.productCode = const Omittable.absent(), this.tax = const Omittable.absent(), this.unitOfMeasure = const Omittable.absent(), });

factory PaymentIntentAmountDetailsLineItem.fromJson(Map<String, dynamic> json) { return PaymentIntentAmountDetailsLineItem(
  discountAmount: json.containsKey('discount_amount') ? Omittable(json['discount_amount'] != null ? (json['discount_amount'] as num).toInt() : null) : const Omittable.absent(),
  id: json['id'] as String,
  object: PaymentIntentAmountDetailsLineItemObject.fromJson(json['object'] as String),
  paymentMethodOptions: json.containsKey('payment_method_options') ? Omittable(json['payment_method_options'] != null ? PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  productCode: json.containsKey('product_code') ? Omittable(json['product_code'] as String?) : const Omittable.absent(),
  productName: json['product_name'] as String,
  quantity: (json['quantity'] as num).toInt(),
  tax: json.containsKey('tax') ? Omittable(json['tax'] != null ? PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax.fromJson(json['tax'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  unitCost: (json['unit_cost'] as num).toInt(),
  unitOfMeasure: json.containsKey('unit_of_measure') ? Omittable(json['unit_of_measure'] as String?) : const Omittable.absent(),
); }

/// The discount applied on this line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). An integer greater than 0.
/// 
/// This field is mutually exclusive with the `amount_details[discount_amount]` field.
final Omittable<int?> discountAmount;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final PaymentIntentAmountDetailsLineItemObject object;

/// Payment method-specific information for line items.
final Omittable<PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions?> paymentMethodOptions;

/// The product code of the line item, such as an SKU. Required for L3 rates. At most 12 characters long.
final Omittable<String?> productCode;

/// The product name of the line item. Required for L3 rates. At most 1024 characters long.
/// 
/// For Cards, this field is truncated to 26 alphanumeric characters before being sent to the card networks. For PayPal, this field is truncated to 127 characters.
final String productName;

/// The quantity of items. Required for L3 rates. An integer greater than 0.
final int quantity;

/// Contains information about the tax on the item.
final Omittable<PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax?> tax;

/// The unit cost of the line item represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L3 rates. An integer greater than or equal to 0.
final int unitCost;

/// A unit of measure for the line item, such as gallons, feet, meters, etc. Required for L3 rates. At most 12 alphanumeric characters long.
final Omittable<String?> unitOfMeasure;

Map<String, dynamic> toJson() { return {
  if (discountAmount.isPresent) 'discount_amount': discountAmount.value,
  'id': id,
  'object': object.toJson(),
  if (paymentMethodOptions.isPresent) 'payment_method_options': paymentMethodOptions.value?.toJson(),
  if (productCode.isPresent) 'product_code': productCode.value,
  'product_name': productName,
  'quantity': quantity,
  if (tax.isPresent) 'tax': tax.value?.toJson(),
  'unit_cost': unitCost,
  if (unitOfMeasure.isPresent) 'unit_of_measure': unitOfMeasure.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('product_name') && json['product_name'] is String &&
      json.containsKey('quantity') && json['quantity'] is num &&
      json.containsKey('unit_cost') && json['unit_cost'] is num; } 
PaymentIntentAmountDetailsLineItem copyWith({Omittable<int?>? discountAmount, String? id, PaymentIntentAmountDetailsLineItemObject? object, Omittable<PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourcePaymentMethodOptions?>? paymentMethodOptions, Omittable<String?>? productCode, String? productName, int? quantity, Omittable<PaymentFlowsAmountDetailsResourceLineItemsListResourceLineItemResourceTax?>? tax, int? unitCost, Omittable<String?>? unitOfMeasure, }) { return PaymentIntentAmountDetailsLineItem(
  discountAmount: discountAmount ?? this.discountAmount,
  id: id ?? this.id,
  object: object ?? this.object,
  paymentMethodOptions: paymentMethodOptions ?? this.paymentMethodOptions,
  productCode: productCode ?? this.productCode,
  productName: productName ?? this.productName,
  quantity: quantity ?? this.quantity,
  tax: tax ?? this.tax,
  unitCost: unitCost ?? this.unitCost,
  unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentAmountDetailsLineItem &&
          discountAmount == other.discountAmount &&
          id == other.id &&
          object == other.object &&
          paymentMethodOptions == other.paymentMethodOptions &&
          productCode == other.productCode &&
          productName == other.productName &&
          quantity == other.quantity &&
          tax == other.tax &&
          unitCost == other.unitCost &&
          unitOfMeasure == other.unitOfMeasure; } 
@override int get hashCode { return Object.hash(discountAmount, id, object, paymentMethodOptions, productCode, productName, quantity, tax, unitCost, unitOfMeasure); } 
@override String toString() { return 'PaymentIntentAmountDetailsLineItem(discountAmount: $discountAmount, id: $id, object: $object, paymentMethodOptions: $paymentMethodOptions, productCode: $productCode, productName: $productName, quantity: $quantity, tax: $tax, unitCost: $unitCost, unitOfMeasure: $unitOfMeasure)'; } 
 }
