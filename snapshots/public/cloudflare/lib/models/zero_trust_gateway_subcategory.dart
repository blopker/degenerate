// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_beta.dart';import 'zero_trust_gateway_categories_components_schemas_name.dart';import 'zero_trust_gateway_class.dart';import 'zero_trust_gateway_components_schemas_description.dart';import 'zero_trust_gateway_id.dart';final class ZeroTrustGatewaySubcategory {const ZeroTrustGatewaySubcategory({this.beta, this.$class, this.description, this.id, this.name, });

factory ZeroTrustGatewaySubcategory.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewaySubcategory(
  beta: json['beta'] != null ? ZeroTrustGatewayBeta.fromJson(json['beta'] as bool) : null,
  $class: json['class'] != null ? ZeroTrustGatewayClass.fromJson(json['class'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayId.fromJson(json['id'] as num) : null,
  name: json['name'] != null ? ZeroTrustGatewayCategoriesComponentsSchemasName.fromJson(json['name'] as String) : null,
); }

/// Indicate whether the category is in beta and subject to change.
final ZeroTrustGatewayBeta? beta;

/// Specify which account types can create policies for this category. `blocked` Blocks unconditionally for all accounts. `removalPending` Allows removal from policies but disables addition. `noBlock` Prevents blocking.
final ZeroTrustGatewayClass? $class;

/// Provide a short summary of domains in the category.
final ZeroTrustGatewayComponentsSchemasDescription? description;

/// Identify this category. Only one category per ID.
final ZeroTrustGatewayId? id;

/// Specify the category name.
final ZeroTrustGatewayCategoriesComponentsSchemasName? name;

Map<String, dynamic> toJson() { return {
  if (beta != null) 'beta': beta?.toJson(),
  if ($class != null) 'class': $class?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewaySubcategory copyWith({ZeroTrustGatewayBeta Function()? beta, ZeroTrustGatewayClass Function()? $class, ZeroTrustGatewayComponentsSchemasDescription Function()? description, ZeroTrustGatewayId Function()? id, ZeroTrustGatewayCategoriesComponentsSchemasName Function()? name, }) { return ZeroTrustGatewaySubcategory(
  beta: beta != null ? beta() : this.beta,
  $class: $class != null ? $class() : this.$class,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewaySubcategory &&
          beta == other.beta &&
          $class == other.$class &&
          description == other.description &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(beta, $class, description, id, name); } 
@override String toString() { return 'ZeroTrustGatewaySubcategory(beta: $beta, \$class: ${$class}, description: $description, id: $id, name: $name)'; } 
 }
