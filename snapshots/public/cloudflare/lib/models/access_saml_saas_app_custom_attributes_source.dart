// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_saml_saas_app_custom_attributes_source_name_by_idp.dart';@immutable final class AccessSamlSaasAppCustomAttributesSource {const AccessSamlSaasAppCustomAttributesSource({this.name, this.nameByIdp, });

factory AccessSamlSaasAppCustomAttributesSource.fromJson(Map<String, dynamic> json) { return AccessSamlSaasAppCustomAttributesSource(
  name: json['name'] as String?,
  nameByIdp: (json['name_by_idp'] as List<dynamic>?)?.map((e) => AccessSamlSaasAppCustomAttributesSourceNameByIdp.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The name of the IdP attribute.
final String? name;

/// A mapping from IdP ID to attribute name.
final List<AccessSamlSaasAppCustomAttributesSourceNameByIdp>? nameByIdp;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  if (nameByIdp != null) 'name_by_idp': nameByIdp?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'name_by_idp'}.contains(key)); } 
AccessSamlSaasAppCustomAttributesSource copyWith({String Function()? name, List<AccessSamlSaasAppCustomAttributesSourceNameByIdp> Function()? nameByIdp, }) { return AccessSamlSaasAppCustomAttributesSource(
  name: name != null ? name() : this.name,
  nameByIdp: nameByIdp != null ? nameByIdp() : this.nameByIdp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSamlSaasAppCustomAttributesSource &&
          name == other.name &&
          listEquals(nameByIdp, other.nameByIdp); } 
@override int get hashCode { return Object.hash(name, Object.hashAll(nameByIdp ?? const [])); } 
@override String toString() { return 'AccessSamlSaasAppCustomAttributesSource(name: $name, nameByIdp: $nameByIdp)'; } 
 }
