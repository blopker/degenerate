// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessSamlSaasAppCustomAttributesSourceNameByIdp {const AccessSamlSaasAppCustomAttributesSourceNameByIdp({this.idpId, this.sourceName, });

factory AccessSamlSaasAppCustomAttributesSourceNameByIdp.fromJson(Map<String, dynamic> json) { return AccessSamlSaasAppCustomAttributesSourceNameByIdp(
  idpId: json['idp_id'] as String?,
  sourceName: json['source_name'] as String?,
); }

/// The UID of the IdP.
final String? idpId;

/// The name of the IdP provided attribute.
final String? sourceName;

Map<String, dynamic> toJson() { return {
  'idp_id': ?idpId,
  'source_name': ?sourceName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'idp_id', 'source_name'}.contains(key)); } 
AccessSamlSaasAppCustomAttributesSourceNameByIdp copyWith({String Function()? idpId, String Function()? sourceName, }) { return AccessSamlSaasAppCustomAttributesSourceNameByIdp(
  idpId: idpId != null ? idpId() : this.idpId,
  sourceName: sourceName != null ? sourceName() : this.sourceName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSamlSaasAppCustomAttributesSourceNameByIdp &&
          idpId == other.idpId &&
          sourceName == other.sourceName; } 
@override int get hashCode { return Object.hash(idpId, sourceName); } 
@override String toString() { return 'AccessSamlSaasAppCustomAttributesSourceNameByIdp(idpId: $idpId, sourceName: $sourceName)'; } 
 }
