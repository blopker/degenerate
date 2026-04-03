// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_contents.dart';import 'zero_trust_gateway_pacfiles_components_schemas_description.dart';import 'zero_trust_gateway_pacfiles_components_schemas_name.dart';@immutable final class ZeroTrustGatewayPacfilesCreatePacfileRequest {const ZeroTrustGatewayPacfilesCreatePacfileRequest({required this.contents, required this.name, this.description, this.slug, });

factory ZeroTrustGatewayPacfilesCreatePacfileRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayPacfilesCreatePacfileRequest(
  contents: ZeroTrustGatewayContents.fromJson(json['contents'] as String),
  description: json['description'] != null ? ZeroTrustGatewayPacfilesComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  name: ZeroTrustGatewayPacfilesComponentsSchemasName.fromJson(json['name'] as String),
  slug: json['slug'] as String?,
); }

/// Actual contents of the PAC file
final ZeroTrustGatewayContents contents;

/// Detailed description of the PAC file.
final ZeroTrustGatewayPacfilesComponentsSchemasDescription? description;

/// Name of the PAC file.
final ZeroTrustGatewayPacfilesComponentsSchemasName name;

/// URL-friendly version of the PAC file name. If not provided, it will be auto-generated
final String? slug;

Map<String, dynamic> toJson() { return {
  'contents': contents.toJson(),
  if (description != null) 'description': description?.toJson(),
  'name': name.toJson(),
  'slug': ?slug,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('contents') &&
      json.containsKey('name'); } 
ZeroTrustGatewayPacfilesCreatePacfileRequest copyWith({ZeroTrustGatewayContents? contents, ZeroTrustGatewayPacfilesComponentsSchemasDescription Function()? description, ZeroTrustGatewayPacfilesComponentsSchemasName? name, String Function()? slug, }) { return ZeroTrustGatewayPacfilesCreatePacfileRequest(
  contents: contents ?? this.contents,
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  slug: slug != null ? slug() : this.slug,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayPacfilesCreatePacfileRequest &&
          contents == other.contents &&
          description == other.description &&
          name == other.name &&
          slug == other.slug; } 
@override int get hashCode { return Object.hash(contents, description, name, slug); } 
@override String toString() { return 'ZeroTrustGatewayPacfilesCreatePacfileRequest(contents: $contents, description: $description, name: $name, slug: $slug)'; } 
 }
