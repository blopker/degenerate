// GENERATED CODE - DO NOT MODIFY BY HAND

final class AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory {const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory._(this.value);

factory AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(String json) { return switch (json) {
  'digital_goods' => digitalGoods,
  'donation' => donation,
  'physical_goods' => physicalGoods,
  _ => AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory._(json),
}; }

static const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory digitalGoods = AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory._('digital_goods');

static const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory donation = AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory._('donation');

static const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory physicalGoods = AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory._('physical_goods');

static const List<AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory> values = [digitalGoods, donation, physicalGoods];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory($value)'; } 
 }
final class AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal {const AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal({this.category, this.description, this.soldBy, });

factory AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal.fromJson(Map<String, dynamic> json) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal(
  category: json['category'] != null ? AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory.fromJson(json['category'] as String) : null,
  description: json['description'] as String?,
  soldBy: json['sold_by'] as String?,
); }

final AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory? category;

final String? description;

final String? soldBy;

Map<String, dynamic> toJson() { return {
  if (category != null) 'category': category?.toJson(),
  'description': ?description,
  'sold_by': ?soldBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'category', 'description', 'sold_by'}.contains(key)); } 
AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal copyWith({AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypalCategory Function()? category, String Function()? description, String Function()? soldBy, }) { return AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal(
  category: category != null ? category() : this.category,
  description: description != null ? description() : this.description,
  soldBy: soldBy != null ? soldBy() : this.soldBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal &&
          category == other.category &&
          description == other.description &&
          soldBy == other.soldBy; } 
@override int get hashCode { return Object.hash(category, description, soldBy); } 
@override String toString() { return 'AmountDetailsParam2LineItemsVariant1PaymentMethodOptionsPaypal(category: $category, description: $description, soldBy: $soldBy)'; } 
 }
