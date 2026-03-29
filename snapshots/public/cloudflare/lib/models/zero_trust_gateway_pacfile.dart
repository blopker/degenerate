// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_components_schemas_uuid.dart';import 'zero_trust_gateway_contents.dart';import 'zero_trust_gateway_pacfiles_components_schemas_description.dart';import 'zero_trust_gateway_pacfiles_components_schemas_name.dart';import 'zero_trust_gateway_read_only_timestamp.dart';/// URL-friendly version of the PAC file name.
extension type const ZeroTrustGatewaySlug(String value) {
factory ZeroTrustGatewaySlug.fromJson(String json) => ZeroTrustGatewaySlug(json);

String toJson() => value;

}
/// Unique URL to download the PAC file.
extension type const ZeroTrustGatewayUrl(String value) {
factory ZeroTrustGatewayUrl.fromJson(String json) => ZeroTrustGatewayUrl(json);

String toJson() => value;

}
final class ZeroTrustGatewayPacfile {const ZeroTrustGatewayPacfile({this.contents, this.createdAt, this.description, this.id, this.name, this.slug, this.updatedAt, this.url, });

factory ZeroTrustGatewayPacfile.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfile(
  contents: json['contents'] != null ? ZeroTrustGatewayContents.fromJson(json['contents'] as String) : null,
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayPacfilesComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayComponentsSchemasUuid.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? ZeroTrustGatewayPacfilesComponentsSchemasName.fromJson(json['name'] as String) : null,
  slug: json['slug'] != null ? ZeroTrustGatewaySlug.fromJson(json['slug'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
  url: json['url'] != null ? ZeroTrustGatewayUrl.fromJson(json['url'] as String) : null,
); }

/// Actual contents of the PAC file
final ZeroTrustGatewayContents? contents;

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

final ZeroTrustGatewayPacfilesComponentsSchemasDescription? description;

final ZeroTrustGatewayComponentsSchemasUuid? id;

final ZeroTrustGatewayPacfilesComponentsSchemasName? name;

final ZeroTrustGatewaySlug? slug;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

final ZeroTrustGatewayUrl? url;

Map<String, dynamic> toJson() { return {
  if (contents != null) 'contents': contents?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (slug != null) 'slug': slug?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'contents', 'created_at', 'description', 'id', 'name', 'slug', 'updated_at', 'url'}.contains(key)); } 
ZeroTrustGatewayPacfile copyWith({ZeroTrustGatewayContents Function()? contents, ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayPacfilesComponentsSchemasDescription Function()? description, ZeroTrustGatewayComponentsSchemasUuid Function()? id, ZeroTrustGatewayPacfilesComponentsSchemasName Function()? name, ZeroTrustGatewaySlug Function()? slug, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, ZeroTrustGatewayUrl Function()? url, }) { return ZeroTrustGatewayPacfile(
  contents: contents != null ? contents() : this.contents,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  slug: slug != null ? slug() : this.slug,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfile &&
          contents == other.contents &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          name == other.name &&
          slug == other.slug &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(contents, createdAt, description, id, name, slug, updatedAt, url); } 
@override String toString() { return 'ZeroTrustGatewayPacfile(contents: $contents, createdAt: $createdAt, description: $description, id: $id, name: $name, slug: $slug, updatedAt: $updatedAt, url: $url)'; } 
 }
