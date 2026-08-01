// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasSamlConfigHeaderAttributes {const AccessSchemasSamlConfigHeaderAttributes({this.attributeName, this.headerName, });

factory AccessSchemasSamlConfigHeaderAttributes.fromJson(Map<String, dynamic> json) { return AccessSchemasSamlConfigHeaderAttributes(
  attributeName: json['attribute_name'] as String?,
  headerName: json['header_name'] as String?,
); }

/// attribute name from the IDP
final String? attributeName;

/// header that will be added on the request to the origin
final String? headerName;

Map<String, dynamic> toJson() { return {
  'attribute_name': ?attributeName,
  'header_name': ?headerName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'attribute_name', 'header_name'}.contains(key)); } 
AccessSchemasSamlConfigHeaderAttributes copyWith({String? Function()? attributeName, String? Function()? headerName, }) { return AccessSchemasSamlConfigHeaderAttributes(
  attributeName: attributeName != null ? attributeName() : this.attributeName,
  headerName: headerName != null ? headerName() : this.headerName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSamlConfigHeaderAttributes &&
          attributeName == other.attributeName &&
          headerName == other.headerName; } 
@override int get hashCode { return Object.hash(attributeName, headerName); } 
@override String toString() { return 'AccessSchemasSamlConfigHeaderAttributes(attributeName: $attributeName, headerName: $headerName)'; } 
 }
