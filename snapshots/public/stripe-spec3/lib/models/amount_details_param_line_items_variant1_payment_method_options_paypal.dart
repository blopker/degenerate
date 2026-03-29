// GENERATED CODE - DO NOT MODIFY BY HAND

final class AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory {const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory._(this.value);

factory AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(String json) { return switch (json) {
  'digital_goods' => digitalGoods,
  'donation' => donation,
  'physical_goods' => physicalGoods,
  _ => AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory._(json),
}; }

static const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory digitalGoods = AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory._('digital_goods');

static const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory donation = AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory._('donation');

static const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory physicalGoods = AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory._('physical_goods');

static const List<AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory> values = [digitalGoods, donation, physicalGoods];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory($value)'; } 
 }
final class AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal {const AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal({this.category, this.description, this.soldBy, });

factory AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal(
  category: json['category'] != null ? AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(json['category'] as String) : null,
  description: json['description'] as String?,
  soldBy: json['sold_by'] as String?,
); }

final AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory? category;

final String? description;

final String? soldBy;

Map<String, dynamic> toJson() { return {
  if (category != null) 'category': category?.toJson(),
  'description': ?description,
  'sold_by': ?soldBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal copyWith({AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypalCategory Function()? category, String Function()? description, String Function()? soldBy, }) { return AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal(
  category: category != null ? category() : this.category,
  description: description != null ? description() : this.description,
  soldBy: soldBy != null ? soldBy() : this.soldBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal &&
          category == other.category &&
          description == other.description &&
          soldBy == other.soldBy; } 
@override int get hashCode { return Object.hash(category, description, soldBy); } 
@override String toString() { return 'AmountDetailsParamLineItemsVariant1PaymentMethodOptionsPaypal(category: $category, description: $description, soldBy: $soldBy)'; } 
 }
