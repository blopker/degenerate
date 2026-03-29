// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_connector_id.dart';import 'magic_secondary_connector_id.dart';import 'magic_site_location.dart';import 'magic_site_name.dart';final class MagicSiteUpdateRequest {const MagicSiteUpdateRequest({this.connectorId, this.description, this.location, this.name, this.secondaryConnectorId, });

factory MagicSiteUpdateRequest.fromJson(Map<String, dynamic> json) { return MagicSiteUpdateRequest(
  connectorId: json['connector_id'] != null ? MagicConnectorId.fromJson(json['connector_id'] as String) : null,
  description: json['description'] as String?,
  location: json['location'] != null ? MagicSiteLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  name: json['name'] != null ? MagicSiteName.fromJson(json['name'] as String) : null,
  secondaryConnectorId: json['secondary_connector_id'] != null ? MagicSecondaryConnectorId.fromJson(json['secondary_connector_id'] as String) : null,
); }

/// Magic Connector identifier tag.
final MagicConnectorId? connectorId;

final String? description;

final MagicSiteLocation? location;

/// The name of the site.
final MagicSiteName? name;

/// Magic Connector identifier tag. Used when high availability mode is on.
final MagicSecondaryConnectorId? secondaryConnectorId;

Map<String, dynamic> toJson() { return {
  if (connectorId != null) 'connector_id': connectorId?.toJson(),
  'description': ?description,
  if (location != null) 'location': location?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (secondaryConnectorId != null) 'secondary_connector_id': secondaryConnectorId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'connector_id', 'description', 'location', 'name', 'secondary_connector_id'}.contains(key)); } 
MagicSiteUpdateRequest copyWith({MagicConnectorId Function()? connectorId, String Function()? description, MagicSiteLocation Function()? location, MagicSiteName Function()? name, MagicSecondaryConnectorId Function()? secondaryConnectorId, }) { return MagicSiteUpdateRequest(
  connectorId: connectorId != null ? connectorId() : this.connectorId,
  description: description != null ? description() : this.description,
  location: location != null ? location() : this.location,
  name: name != null ? name() : this.name,
  secondaryConnectorId: secondaryConnectorId != null ? secondaryConnectorId() : this.secondaryConnectorId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSiteUpdateRequest &&
          connectorId == other.connectorId &&
          description == other.description &&
          location == other.location &&
          name == other.name &&
          secondaryConnectorId == other.secondaryConnectorId; } 
@override int get hashCode { return Object.hash(connectorId, description, location, name, secondaryConnectorId); } 
@override String toString() { return 'MagicSiteUpdateRequest(connectorId: $connectorId, description: $description, location: $location, name: $name, secondaryConnectorId: $secondaryConnectorId)'; } 
 }
