// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_components_schemas_uuid.dart';import 'zero_trust_gateway_pacfiles_components_schemas_description.dart';import 'zero_trust_gateway_pacfiles_components_schemas_name.dart';import 'zero_trust_gateway_read_only_timestamp.dart';import 'zero_trust_gateway_slug.dart';import 'zero_trust_gateway_url.dart';@immutable final class ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult {const ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult({this.createdAt, this.description, this.id, this.name, this.slug, this.updatedAt, this.url, });

factory ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult(
  createdAt: json['created_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['created_at'] as String) : null,
  description: json['description'] != null ? ZeroTrustGatewayPacfilesComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  id: json['id'] != null ? ZeroTrustGatewayComponentsSchemasUuid.fromJson(json['id'] as String) : null,
  name: json['name'] != null ? ZeroTrustGatewayPacfilesComponentsSchemasName.fromJson(json['name'] as String) : null,
  slug: json['slug'] != null ? ZeroTrustGatewaySlug.fromJson(json['slug'] as String) : null,
  updatedAt: json['updated_at'] != null ? ZeroTrustGatewayReadOnlyTimestamp.fromJson(json['updated_at'] as String) : null,
  url: json['url'] != null ? ZeroTrustGatewayUrl.fromJson(json['url'] as String) : null,
); }

final ZeroTrustGatewayReadOnlyTimestamp? createdAt;

/// Detailed description of the PAC file.
final ZeroTrustGatewayPacfilesComponentsSchemasDescription? description;

final ZeroTrustGatewayComponentsSchemasUuid? id;

/// Name of the PAC file.
final ZeroTrustGatewayPacfilesComponentsSchemasName? name;

final ZeroTrustGatewaySlug? slug;

final ZeroTrustGatewayReadOnlyTimestamp? updatedAt;

final ZeroTrustGatewayUrl? url;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (slug != null) 'slug': slug?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'description', 'id', 'name', 'slug', 'updated_at', 'url'}.contains(key)); } 
ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult copyWith({ZeroTrustGatewayReadOnlyTimestamp Function()? createdAt, ZeroTrustGatewayPacfilesComponentsSchemasDescription Function()? description, ZeroTrustGatewayComponentsSchemasUuid Function()? id, ZeroTrustGatewayPacfilesComponentsSchemasName Function()? name, ZeroTrustGatewaySlug Function()? slug, ZeroTrustGatewayReadOnlyTimestamp Function()? updatedAt, ZeroTrustGatewayUrl Function()? url, }) { return ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  slug: slug != null ? slug() : this.slug,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult &&
          createdAt == other.createdAt &&
          description == other.description &&
          id == other.id &&
          name == other.name &&
          slug == other.slug &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(createdAt, description, id, name, slug, updatedAt, url); } 
@override String toString() { return 'ZeroTrustGatewayPacfilesComponentsSchemasResponseCollectionResult(createdAt: $createdAt, description: $description, id: $id, name: $name, slug: $slug, updatedAt: $updatedAt, url: $url)'; } 
 }
