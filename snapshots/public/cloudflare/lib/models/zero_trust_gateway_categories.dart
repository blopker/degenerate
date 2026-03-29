// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_beta.dart';import 'zero_trust_gateway_categories_components_schemas_name.dart';import 'zero_trust_gateway_class.dart';import 'zero_trust_gateway_components_schemas_description.dart';import 'zero_trust_gateway_id.dart';import 'zero_trust_gateway_subcategory.dart';final class ZeroTrustGatewayCategories {const ZeroTrustGatewayCategories({this.beta, this.$class, this.description, this.id, this.name, this.subcategories, });

factory ZeroTrustGatewayCategories.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayCategories(
  beta: json['beta'] != null ? ZeroTrustGatewayBeta.fromJson(json['beta'] as bool) : null,
  $class: json['class'] != null ? ZeroTrustGatewayClass.fromJson(json['class'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayId.fromJson(json['id'] as num) : null,
  name: json['name'] != null ? ZeroTrustGatewayCategoriesComponentsSchemasName.fromJson(json['name'] as String) : null,
  subcategories: (json['subcategories'] as List<dynamic>?)?.map((e) => ZeroTrustGatewaySubcategory.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Indicate whether the category is in beta and subject to change.
final ZeroTrustGatewayBeta? beta;

final ZeroTrustGatewayClass? $class;

final ZeroTrustGatewayComponentsSchemasDescription? description;

final ZeroTrustGatewayId? id;

final ZeroTrustGatewayCategoriesComponentsSchemasName? name;

/// Provide all subcategories for this category.
final List<ZeroTrustGatewaySubcategory>? subcategories;

Map<String, dynamic> toJson() { return {
  if (beta != null) 'beta': beta?.toJson(),
  if ($class != null) 'class': $class?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (subcategories != null) 'subcategories': subcategories?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayCategories copyWith({ZeroTrustGatewayBeta Function()? beta, ZeroTrustGatewayClass Function()? $class, ZeroTrustGatewayComponentsSchemasDescription Function()? description, ZeroTrustGatewayId Function()? id, ZeroTrustGatewayCategoriesComponentsSchemasName Function()? name, List<ZeroTrustGatewaySubcategory> Function()? subcategories, }) { return ZeroTrustGatewayCategories(
  beta: beta != null ? beta() : this.beta,
  $class: $class != null ? $class() : this.$class,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  subcategories: subcategories != null ? subcategories() : this.subcategories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayCategories &&
          beta == other.beta &&
          $class == other.$class &&
          description == other.description &&
          id == other.id &&
          name == other.name &&
          listEquals(subcategories, other.subcategories); } 
@override int get hashCode { return Object.hash(beta, $class, description, id, name, Object.hashAll(subcategories ?? const [])); } 
@override String toString() { return 'ZeroTrustGatewayCategories(beta: $beta, \$class: ${$class}, description: $description, id: $id, name: $name, subcategories: $subcategories)'; } 
 }
