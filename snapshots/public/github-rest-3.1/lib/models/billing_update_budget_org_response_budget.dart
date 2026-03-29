// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_update_budget_org_response_budget_budget_alerting.dart';/// The scope of the budget
final class BillingUpdateBudgetOrgResponseBudgetBudgetScope {const BillingUpdateBudgetOrgResponseBudgetBudgetScope._(this.value);

factory BillingUpdateBudgetOrgResponseBudgetBudgetScope.fromJson(String json) { return switch (json) {
  'enterprise' => enterprise,
  'organization' => organization,
  'repository' => repository,
  'cost_center' => costCenter,
  _ => BillingUpdateBudgetOrgResponseBudgetBudgetScope._(json),
}; }

static const BillingUpdateBudgetOrgResponseBudgetBudgetScope enterprise = BillingUpdateBudgetOrgResponseBudgetBudgetScope._('enterprise');

static const BillingUpdateBudgetOrgResponseBudgetBudgetScope organization = BillingUpdateBudgetOrgResponseBudgetBudgetScope._('organization');

static const BillingUpdateBudgetOrgResponseBudgetBudgetScope repository = BillingUpdateBudgetOrgResponseBudgetBudgetScope._('repository');

static const BillingUpdateBudgetOrgResponseBudgetBudgetScope costCenter = BillingUpdateBudgetOrgResponseBudgetBudgetScope._('cost_center');

static const List<BillingUpdateBudgetOrgResponseBudgetBudgetScope> values = [enterprise, organization, repository, costCenter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgResponseBudgetBudgetScope && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgResponseBudgetBudgetScope($value)'; } 
 }
/// The type of pricing for the budget
final class BillingUpdateBudgetOrgResponseBudgetBudgetType {const BillingUpdateBudgetOrgResponseBudgetBudgetType._(this.value);

factory BillingUpdateBudgetOrgResponseBudgetBudgetType.fromJson(String json) { return switch (json) {
  'ProductPricing' => productPricing,
  'SkuPricing' => skuPricing,
  _ => BillingUpdateBudgetOrgResponseBudgetBudgetType._(json),
}; }

static const BillingUpdateBudgetOrgResponseBudgetBudgetType productPricing = BillingUpdateBudgetOrgResponseBudgetBudgetType._('ProductPricing');

static const BillingUpdateBudgetOrgResponseBudgetBudgetType skuPricing = BillingUpdateBudgetOrgResponseBudgetBudgetType._('SkuPricing');

static const List<BillingUpdateBudgetOrgResponseBudgetBudgetType> values = [productPricing, skuPricing];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingUpdateBudgetOrgResponseBudgetBudgetType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingUpdateBudgetOrgResponseBudgetBudgetType($value)'; } 
 }
final class BillingUpdateBudgetOrgResponseBudget {const BillingUpdateBudgetOrgResponseBudget({this.id, this.budgetAmount, this.preventFurtherUsage, this.budgetAlerting, this.budgetScope, this.budgetEntityName = '', this.budgetType, this.budgetProductSku, });

factory BillingUpdateBudgetOrgResponseBudget.fromJson(Map<String, dynamic> json) { return BillingUpdateBudgetOrgResponseBudget(
  id: json['id'] as String?,
  budgetAmount: json['budget_amount'] != null ? (json['budget_amount'] as num).toDouble() : null,
  preventFurtherUsage: json['prevent_further_usage'] as bool?,
  budgetAlerting: json['budget_alerting'] != null ? BillingUpdateBudgetOrgResponseBudgetBudgetAlerting.fromJson(json['budget_alerting'] as Map<String, dynamic>) : null,
  budgetScope: json['budget_scope'] != null ? BillingUpdateBudgetOrgResponseBudgetBudgetScope.fromJson(json['budget_scope'] as String) : null,
  budgetEntityName: json.containsKey('budget_entity_name') ? json['budget_entity_name'] as String : '',
  budgetType: json['budget_type'] != null ? BillingUpdateBudgetOrgResponseBudgetBudgetType.fromJson(json['budget_type'] as String) : null,
  budgetProductSku: json['budget_product_sku'] as String?,
); }

/// ID of the budget.
final String? id;

/// The budget amount in whole dollars. For license-based products, this represents the number of licenses.
final double? budgetAmount;

/// Whether to prevent additional spending once the budget is exceeded
final bool? preventFurtherUsage;

final BillingUpdateBudgetOrgResponseBudgetBudgetAlerting? budgetAlerting;

/// The scope of the budget
final BillingUpdateBudgetOrgResponseBudgetBudgetScope? budgetScope;

/// The name of the entity to apply the budget to
final String budgetEntityName;

/// The type of pricing for the budget
final BillingUpdateBudgetOrgResponseBudgetBudgetType? budgetType;

/// A single product or SKU that will be covered in the budget
final String? budgetProductSku;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'budget_amount': ?budgetAmount,
  'prevent_further_usage': ?preventFurtherUsage,
  if (budgetAlerting != null) 'budget_alerting': budgetAlerting?.toJson(),
  if (budgetScope != null) 'budget_scope': budgetScope?.toJson(),
  'budget_entity_name': budgetEntityName,
  if (budgetType != null) 'budget_type': budgetType?.toJson(),
  'budget_product_sku': ?budgetProductSku,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingUpdateBudgetOrgResponseBudget copyWith({String Function()? id, double Function()? budgetAmount, bool Function()? preventFurtherUsage, BillingUpdateBudgetOrgResponseBudgetBudgetAlerting Function()? budgetAlerting, BillingUpdateBudgetOrgResponseBudgetBudgetScope Function()? budgetScope, String Function()? budgetEntityName, BillingUpdateBudgetOrgResponseBudgetBudgetType Function()? budgetType, String Function()? budgetProductSku, }) { return BillingUpdateBudgetOrgResponseBudget(
  id: id != null ? id() : this.id,
  budgetAmount: budgetAmount != null ? budgetAmount() : this.budgetAmount,
  preventFurtherUsage: preventFurtherUsage != null ? preventFurtherUsage() : this.preventFurtherUsage,
  budgetAlerting: budgetAlerting != null ? budgetAlerting() : this.budgetAlerting,
  budgetScope: budgetScope != null ? budgetScope() : this.budgetScope,
  budgetEntityName: budgetEntityName != null ? budgetEntityName() : this.budgetEntityName,
  budgetType: budgetType != null ? budgetType() : this.budgetType,
  budgetProductSku: budgetProductSku != null ? budgetProductSku() : this.budgetProductSku,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingUpdateBudgetOrgResponseBudget &&
          id == other.id &&
          budgetAmount == other.budgetAmount &&
          preventFurtherUsage == other.preventFurtherUsage &&
          budgetAlerting == other.budgetAlerting &&
          budgetScope == other.budgetScope &&
          budgetEntityName == other.budgetEntityName &&
          budgetType == other.budgetType &&
          budgetProductSku == other.budgetProductSku; } 
@override int get hashCode { return Object.hash(id, budgetAmount, preventFurtherUsage, budgetAlerting, budgetScope, budgetEntityName, budgetType, budgetProductSku); } 
@override String toString() { return 'BillingUpdateBudgetOrgResponseBudget(id: $id, budgetAmount: $budgetAmount, preventFurtherUsage: $preventFurtherUsage, budgetAlerting: $budgetAlerting, budgetScope: $budgetScope, budgetEntityName: $budgetEntityName, budgetType: $budgetType, budgetProductSku: $budgetProductSku)'; } 
 }
