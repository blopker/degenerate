// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_forward_locally.dart';import 'magic_identifier.dart';import 'magic_lan_acl_configuration.dart';import 'magic_unidirectional.dart';/// Array of allowed communication protocols between configured LANs. If no protocols are provided, all protocols are allowed.
@immutable final class MagicAclProtocols {const MagicAclProtocols._(this.value);

factory MagicAclProtocols.fromJson(String json) { return switch (json) {
  'tcp' => tcp,
  'udp' => udp,
  'icmp' => icmp,
  _ => MagicAclProtocols._(json),
}; }

static const MagicAclProtocols tcp = MagicAclProtocols._('tcp');

static const MagicAclProtocols udp = MagicAclProtocols._('udp');

static const MagicAclProtocols icmp = MagicAclProtocols._('icmp');

static const List<MagicAclProtocols> values = [tcp, udp, icmp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicAclProtocols && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicAclProtocols($value)'; } 
 }
/// Bidirectional ACL policy for network traffic within a site.
@immutable final class MagicAcl {const MagicAcl({this.description, this.forwardLocally, this.id, this.lan1, this.lan2, this.name, this.protocols, this.unidirectional, });

factory MagicAcl.fromJson(Map<String, dynamic> json) { return MagicAcl(
  description: json['description'] as String?,
  forwardLocally: json['forward_locally'] != null ? MagicForwardLocally.fromJson(json['forward_locally'] as bool) : null,
  id: json['id'] != null ? MagicIdentifier.fromJson(json['id'] as String) : null,
  lan1: json['lan_1'] != null ? MagicLanAclConfiguration.fromJson(json['lan_1'] as Map<String, dynamic>) : null,
  lan2: json['lan_2'] != null ? MagicLanAclConfiguration.fromJson(json['lan_2'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  protocols: (json['protocols'] as List<dynamic>?)?.map((e) => MagicAclProtocols.fromJson(e as String)).toList(),
  unidirectional: json['unidirectional'] != null ? MagicUnidirectional.fromJson(json['unidirectional'] as bool) : null,
); }

/// Description for the ACL.
final String? description;

final MagicForwardLocally? forwardLocally;

final MagicIdentifier? id;

final MagicLanAclConfiguration? lan1;

final MagicLanAclConfiguration? lan2;

/// The name of the ACL.
final String? name;

final List<MagicAclProtocols>? protocols;

final MagicUnidirectional? unidirectional;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  if (forwardLocally != null) 'forward_locally': forwardLocally?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (lan1 != null) 'lan_1': lan1?.toJson(),
  if (lan2 != null) 'lan_2': lan2?.toJson(),
  'name': ?name,
  if (protocols != null) 'protocols': protocols?.map((e) => e.toJson()).toList(),
  if (unidirectional != null) 'unidirectional': unidirectional?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'forward_locally', 'id', 'lan_1', 'lan_2', 'name', 'protocols', 'unidirectional'}.contains(key)); } 
MagicAcl copyWith({String Function()? description, MagicForwardLocally Function()? forwardLocally, MagicIdentifier Function()? id, MagicLanAclConfiguration Function()? lan1, MagicLanAclConfiguration Function()? lan2, String Function()? name, List<MagicAclProtocols> Function()? protocols, MagicUnidirectional Function()? unidirectional, }) { return MagicAcl(
  description: description != null ? description() : this.description,
  forwardLocally: forwardLocally != null ? forwardLocally() : this.forwardLocally,
  id: id != null ? id() : this.id,
  lan1: lan1 != null ? lan1() : this.lan1,
  lan2: lan2 != null ? lan2() : this.lan2,
  name: name != null ? name() : this.name,
  protocols: protocols != null ? protocols() : this.protocols,
  unidirectional: unidirectional != null ? unidirectional() : this.unidirectional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAcl &&
          description == other.description &&
          forwardLocally == other.forwardLocally &&
          id == other.id &&
          lan1 == other.lan1 &&
          lan2 == other.lan2 &&
          name == other.name &&
          listEquals(protocols, other.protocols) &&
          unidirectional == other.unidirectional; } 
@override int get hashCode { return Object.hash(description, forwardLocally, id, lan1, lan2, name, Object.hashAll(protocols ?? const []), unidirectional); } 
@override String toString() { return 'MagicAcl(description: $description, forwardLocally: $forwardLocally, id: $id, lan1: $lan1, lan2: $lan2, name: $name, protocols: $protocols, unidirectional: $unidirectional)'; } 
 }
