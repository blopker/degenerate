// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'budget_budget_alerting.dart';/// The type of pricing for the budget
@immutable final class BudgetBudgetType {const BudgetBudgetType._(this.value);

factory BudgetBudgetType.fromJson(String json) { return switch (json) {
  'SkuPricing' => skuPricing,
  'ProductPricing' => productPricing,
  _ => BudgetBudgetType._(json),
}; }

static const BudgetBudgetType skuPricing = BudgetBudgetType._('SkuPricing');

static const BudgetBudgetType productPricing = BudgetBudgetType._('ProductPricing');

static const List<BudgetBudgetType> values = [skuPricing, productPricing];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BudgetBudgetType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BudgetBudgetType($value)'; } 
 }
@immutable final class Budget {const Budget({required this.id, required this.budgetType, required this.budgetAmount, required this.preventFurtherUsage, required this.budgetScope, required this.budgetProductSku, required this.budgetAlerting, this.budgetEntityName, });

factory Budget.fromJson(Map<String, dynamic> json) { return Budget(
  id: json['id'] as String,
  budgetType: BudgetBudgetType.fromJson(json['budget_type'] as String),
  budgetAmount: (json['budget_amount'] as num).toInt(),
  preventFurtherUsage: json['prevent_further_usage'] as bool,
  budgetScope: json['budget_scope'] as String,
  budgetEntityName: json['budget_entity_name'] as String?,
  budgetProductSku: json['budget_product_sku'] as String,
  budgetAlerting: BudgetBudgetAlerting.fromJson(json['budget_alerting'] as Map<String, dynamic>),
); }

/// The unique identifier for the budget
final String id;

/// The type of pricing for the budget
final BudgetBudgetType budgetType;

/// The budget amount limit in whole dollars. For license-based products, this represents the number of licenses.
final int budgetAmount;

/// The type of limit enforcement for the budget
final bool preventFurtherUsage;

/// The scope of the budget (enterprise, organization, repository, cost center)
final String budgetScope;

/// The name of the entity for the budget (enterprise does not require a name).
final String? budgetEntityName;

/// A single product or sku to apply the budget to.
final String budgetProductSku;

final BudgetBudgetAlerting budgetAlerting;

Map<String, dynamic> toJson() { return {
  'id': id,
  'budget_type': budgetType.toJson(),
  'budget_amount': budgetAmount,
  'prevent_further_usage': preventFurtherUsage,
  'budget_scope': budgetScope,
  'budget_entity_name': ?budgetEntityName,
  'budget_product_sku': budgetProductSku,
  'budget_alerting': budgetAlerting.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('budget_type') &&
      json.containsKey('budget_amount') && json['budget_amount'] is num &&
      json.containsKey('prevent_further_usage') && json['prevent_further_usage'] is bool &&
      json.containsKey('budget_scope') && json['budget_scope'] is String &&
      json.containsKey('budget_product_sku') && json['budget_product_sku'] is String &&
      json.containsKey('budget_alerting'); } 
Budget copyWith({String? id, BudgetBudgetType? budgetType, int? budgetAmount, bool? preventFurtherUsage, String? budgetScope, String Function()? budgetEntityName, String? budgetProductSku, BudgetBudgetAlerting? budgetAlerting, }) { return Budget(
  id: id ?? this.id,
  budgetType: budgetType ?? this.budgetType,
  budgetAmount: budgetAmount ?? this.budgetAmount,
  preventFurtherUsage: preventFurtherUsage ?? this.preventFurtherUsage,
  budgetScope: budgetScope ?? this.budgetScope,
  budgetEntityName: budgetEntityName != null ? budgetEntityName() : this.budgetEntityName,
  budgetProductSku: budgetProductSku ?? this.budgetProductSku,
  budgetAlerting: budgetAlerting ?? this.budgetAlerting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Budget &&
          id == other.id &&
          budgetType == other.budgetType &&
          budgetAmount == other.budgetAmount &&
          preventFurtherUsage == other.preventFurtherUsage &&
          budgetScope == other.budgetScope &&
          budgetEntityName == other.budgetEntityName &&
          budgetProductSku == other.budgetProductSku &&
          budgetAlerting == other.budgetAlerting; } 
@override int get hashCode { return Object.hash(id, budgetType, budgetAmount, preventFurtherUsage, budgetScope, budgetEntityName, budgetProductSku, budgetAlerting); } 
@override String toString() { return 'Budget(id: $id, budgetType: $budgetType, budgetAmount: $budgetAmount, preventFurtherUsage: $preventFurtherUsage, budgetScope: $budgetScope, budgetEntityName: $budgetEntityName, budgetProductSku: $budgetProductSku, budgetAlerting: $budgetAlerting)'; } 
 }
