// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alexandria_application_human_id.dart';import 'alexandria_application_name.dart';/// Returns the application creation time.
extension type const AlexandriaApplicationCreatedAt(String value) {
factory AlexandriaApplicationCreatedAt.fromJson(String json) => AlexandriaApplicationCreatedAt(json);

String toJson() => value;

}
/// Returns the application ID.
extension type const AlexandriaApplicationId(String value) {
factory AlexandriaApplicationId.fromJson(String json) => AlexandriaApplicationId(json);

String toJson() => value;

}
/// Returns the application source.
extension type const AlexandriaApplicationSource(String value) {
factory AlexandriaApplicationSource.fromJson(String json) => AlexandriaApplicationSource(json);

String toJson() => value;

}
/// Returns the application type.
extension type const AlexandriaApplicationType(String value) {
factory AlexandriaApplicationType.fromJson(String json) => AlexandriaApplicationType(json);

String toJson() => value;

}
/// Returns the application type description.
extension type const AlexandriaApplicationTypeDescription(String value) {
factory AlexandriaApplicationTypeDescription.fromJson(String json) => AlexandriaApplicationTypeDescription(json);

String toJson() => value;

}
/// Returns the application update time.
extension type const AlexandriaApplicationUpdatedAt(String value) {
factory AlexandriaApplicationUpdatedAt.fromJson(String json) => AlexandriaApplicationUpdatedAt(json);

String toJson() => value;

}
/// Returns the application version.
extension type const AlexandriaApplicationVersion(String value) {
factory AlexandriaApplicationVersion.fromJson(String json) => AlexandriaApplicationVersion(json);

String toJson() => value;

}
final class AlexandriaApplication {const AlexandriaApplication({required this.applicationSource, required this.applicationType, required this.applicationTypeDescription, required this.createdAt, required this.hostnames, required this.humanId, required this.id, required this.ipSubnets, required this.name, required this.portProtocols, required this.supportDomains, required this.updatedAt, required this.version, });

factory AlexandriaApplication.fromJson(Map<String, dynamic> json) { return AlexandriaApplication(
  applicationSource: AlexandriaApplicationSource.fromJson(json['application_source'] as String),
  applicationType: AlexandriaApplicationType.fromJson(json['application_type'] as String),
  applicationTypeDescription: AlexandriaApplicationTypeDescription.fromJson(json['application_type_description'] as String),
  createdAt: AlexandriaApplicationCreatedAt.fromJson(json['created_at'] as String),
  hostnames: (json['hostnames'] as List<dynamic>).map((e) => e as String).toList(),
  humanId: AlexandriaApplicationHumanId.fromJson(json['human_id'] as String),
  id: AlexandriaApplicationId.fromJson(json['id'] as String),
  ipSubnets: (json['ip_subnets'] as List<dynamic>).map((e) => e as String).toList(),
  name: AlexandriaApplicationName.fromJson(json['name'] as String),
  portProtocols: (json['port_protocols'] as List<dynamic>).map((e) => e as String).toList(),
  supportDomains: (json['support_domains'] as List<dynamic>).map((e) => e as String).toList(),
  updatedAt: AlexandriaApplicationUpdatedAt.fromJson(json['updated_at'] as String),
  version: AlexandriaApplicationVersion.fromJson(json['version'] as String),
); }

final AlexandriaApplicationSource applicationSource;

final AlexandriaApplicationType applicationType;

final AlexandriaApplicationTypeDescription applicationTypeDescription;

final AlexandriaApplicationCreatedAt createdAt;

final List<String> hostnames;

final AlexandriaApplicationHumanId humanId;

final AlexandriaApplicationId id;

final List<String> ipSubnets;

final AlexandriaApplicationName name;

final List<String> portProtocols;

final List<String> supportDomains;

final AlexandriaApplicationUpdatedAt updatedAt;

final AlexandriaApplicationVersion version;

Map<String, dynamic> toJson() { return {
  'application_source': applicationSource.toJson(),
  'application_type': applicationType.toJson(),
  'application_type_description': applicationTypeDescription.toJson(),
  'created_at': createdAt.toJson(),
  'hostnames': hostnames,
  'human_id': humanId.toJson(),
  'id': id.toJson(),
  'ip_subnets': ipSubnets,
  'name': name.toJson(),
  'port_protocols': portProtocols,
  'support_domains': supportDomains,
  'updated_at': updatedAt.toJson(),
  'version': version.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('application_source') &&
      json.containsKey('application_type') &&
      json.containsKey('application_type_description') &&
      json.containsKey('created_at') &&
      json.containsKey('hostnames') &&
      json.containsKey('human_id') &&
      json.containsKey('id') &&
      json.containsKey('ip_subnets') &&
      json.containsKey('name') &&
      json.containsKey('port_protocols') &&
      json.containsKey('support_domains') &&
      json.containsKey('updated_at') &&
      json.containsKey('version'); } 
AlexandriaApplication copyWith({AlexandriaApplicationSource? applicationSource, AlexandriaApplicationType? applicationType, AlexandriaApplicationTypeDescription? applicationTypeDescription, AlexandriaApplicationCreatedAt? createdAt, List<String>? hostnames, AlexandriaApplicationHumanId? humanId, AlexandriaApplicationId? id, List<String>? ipSubnets, AlexandriaApplicationName? name, List<String>? portProtocols, List<String>? supportDomains, AlexandriaApplicationUpdatedAt? updatedAt, AlexandriaApplicationVersion? version, }) { return AlexandriaApplication(
  applicationSource: applicationSource ?? this.applicationSource,
  applicationType: applicationType ?? this.applicationType,
  applicationTypeDescription: applicationTypeDescription ?? this.applicationTypeDescription,
  createdAt: createdAt ?? this.createdAt,
  hostnames: hostnames ?? this.hostnames,
  humanId: humanId ?? this.humanId,
  id: id ?? this.id,
  ipSubnets: ipSubnets ?? this.ipSubnets,
  name: name ?? this.name,
  portProtocols: portProtocols ?? this.portProtocols,
  supportDomains: supportDomains ?? this.supportDomains,
  updatedAt: updatedAt ?? this.updatedAt,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaApplication &&
          applicationSource == other.applicationSource &&
          applicationType == other.applicationType &&
          applicationTypeDescription == other.applicationTypeDescription &&
          createdAt == other.createdAt &&
          listEquals(hostnames, other.hostnames) &&
          humanId == other.humanId &&
          id == other.id &&
          listEquals(ipSubnets, other.ipSubnets) &&
          name == other.name &&
          listEquals(portProtocols, other.portProtocols) &&
          listEquals(supportDomains, other.supportDomains) &&
          updatedAt == other.updatedAt &&
          version == other.version; } 
@override int get hashCode { return Object.hash(applicationSource, applicationType, applicationTypeDescription, createdAt, Object.hashAll(hostnames), humanId, id, Object.hashAll(ipSubnets), name, Object.hashAll(portProtocols), Object.hashAll(supportDomains), updatedAt, version); } 
@override String toString() { return 'AlexandriaApplication(applicationSource: $applicationSource, applicationType: $applicationType, applicationTypeDescription: $applicationTypeDescription, createdAt: $createdAt, hostnames: $hostnames, humanId: $humanId, id: $id, ipSubnets: $ipSubnets, name: $name, portProtocols: $portProtocols, supportDomains: $supportDomains, updatedAt: $updatedAt, version: $version)'; } 
 }
