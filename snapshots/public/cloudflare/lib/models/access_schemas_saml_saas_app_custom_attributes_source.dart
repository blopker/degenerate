// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessSchemasSamlSaasAppCustomAttributesSource {const AccessSchemasSamlSaasAppCustomAttributesSource({this.name, this.nameByIdp, });

factory AccessSchemasSamlSaasAppCustomAttributesSource.fromJson(Map<String, dynamic> json) { return AccessSchemasSamlSaasAppCustomAttributesSource(
  name: json['name'] as String?,
  nameByIdp: (json['name_by_idp'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// The name of the IdP attribute.
final String? name;

/// A mapping from IdP ID to attribute name.
final Map<String,String>? nameByIdp;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'name_by_idp': ?nameByIdp,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessSchemasSamlSaasAppCustomAttributesSource copyWith({String Function()? name, Map<String, String> Function()? nameByIdp, }) { return AccessSchemasSamlSaasAppCustomAttributesSource(
  name: name != null ? name() : this.name,
  nameByIdp: nameByIdp != null ? nameByIdp() : this.nameByIdp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSamlSaasAppCustomAttributesSource &&
          name == other.name &&
          nameByIdp == other.nameByIdp; } 
@override int get hashCode { return Object.hash(name, nameByIdp); } 
@override String toString() { return 'AccessSchemasSamlSaasAppCustomAttributesSource(name: $name, nameByIdp: $nameByIdp)'; } 
 }
