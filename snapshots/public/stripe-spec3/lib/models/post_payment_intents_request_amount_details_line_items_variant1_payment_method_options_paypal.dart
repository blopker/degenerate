// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory._(this.value);

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(String json) { return switch (json) {
  'digital_goods' => digitalGoods,
  'donation' => donation,
  'physical_goods' => physicalGoods,
  _ => PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory._(json),
}; }

static const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory digitalGoods = PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory._('digital_goods');

static const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory donation = PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory._('donation');

static const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory physicalGoods = PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory._('physical_goods');

static const List<PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory> values = [digitalGoods, donation, physicalGoods];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory($value)'; } 
 }
@immutable final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal({this.category, this.description, this.soldBy, });

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal(
  category: json['category'] != null ? PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(json['category'] as String) : null,
  description: json['description'] as String?,
  soldBy: json['sold_by'] as String?,
); }

final PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory? category;

final String? description;

final String? soldBy;

Map<String, dynamic> toJson() { return {
  if (category != null) 'category': category?.toJson(),
  'description': ?description,
  'sold_by': ?soldBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'category', 'description', 'sold_by'}.contains(key)); } 
PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal copyWith({PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypalCategory Function()? category, String Function()? description, String Function()? soldBy, }) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal(
  category: category != null ? category() : this.category,
  description: description != null ? description() : this.description,
  soldBy: soldBy != null ? soldBy() : this.soldBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal &&
          category == other.category &&
          description == other.description &&
          soldBy == other.soldBy; } 
@override int get hashCode { return Object.hash(category, description, soldBy); } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant1PaymentMethodOptionsPaypal(category: $category, description: $description, soldBy: $soldBy)'; } 
 }
