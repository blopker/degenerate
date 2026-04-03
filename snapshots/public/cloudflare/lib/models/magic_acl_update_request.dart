// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_forward_locally.dart';import 'magic_lan_acl_configuration.dart';import 'magic_unidirectional.dart';/// Array of allowed communication protocols between configured LANs. If no protocols are provided, all protocols are allowed.
@immutable final class MagicAclUpdateRequestProtocols {const MagicAclUpdateRequestProtocols._(this.value);

factory MagicAclUpdateRequestProtocols.fromJson(String json) { return switch (json) {
  'tcp' => tcp,
  'udp' => udp,
  'icmp' => icmp,
  _ => MagicAclUpdateRequestProtocols._(json),
}; }

static const MagicAclUpdateRequestProtocols tcp = MagicAclUpdateRequestProtocols._('tcp');

static const MagicAclUpdateRequestProtocols udp = MagicAclUpdateRequestProtocols._('udp');

static const MagicAclUpdateRequestProtocols icmp = MagicAclUpdateRequestProtocols._('icmp');

static const List<MagicAclUpdateRequestProtocols> values = [tcp, udp, icmp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicAclUpdateRequestProtocols && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicAclUpdateRequestProtocols($value)'; } 
 }
@immutable final class MagicAclUpdateRequest {const MagicAclUpdateRequest({this.description, this.forwardLocally, this.lan1, this.lan2, this.name, this.protocols, this.unidirectional, });

factory MagicAclUpdateRequest.fromJson(Map<String, dynamic> json) { return MagicAclUpdateRequest(
  description: json['description'] as String?,
  forwardLocally: json['forward_locally'] != null ? MagicForwardLocally.fromJson(json['forward_locally'] as bool) : null,
  lan1: json['lan_1'] != null ? MagicLanAclConfiguration.fromJson(json['lan_1'] as Map<String, dynamic>) : null,
  lan2: json['lan_2'] != null ? MagicLanAclConfiguration.fromJson(json['lan_2'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  protocols: (json['protocols'] as List<dynamic>?)?.map((e) => MagicAclUpdateRequestProtocols.fromJson(e as String)).toList(),
  unidirectional: json['unidirectional'] != null ? MagicUnidirectional.fromJson(json['unidirectional'] as bool) : null,
); }

/// Description for the ACL.
final String? description;

final MagicForwardLocally? forwardLocally;

final MagicLanAclConfiguration? lan1;

final MagicLanAclConfiguration? lan2;

/// The name of the ACL.
final String? name;

final List<MagicAclUpdateRequestProtocols>? protocols;

final MagicUnidirectional? unidirectional;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  if (forwardLocally != null) 'forward_locally': forwardLocally?.toJson(),
  if (lan1 != null) 'lan_1': lan1?.toJson(),
  if (lan2 != null) 'lan_2': lan2?.toJson(),
  'name': ?name,
  if (protocols != null) 'protocols': protocols?.map((e) => e.toJson()).toList(),
  if (unidirectional != null) 'unidirectional': unidirectional?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'forward_locally', 'lan_1', 'lan_2', 'name', 'protocols', 'unidirectional'}.contains(key)); } 
MagicAclUpdateRequest copyWith({String Function()? description, MagicForwardLocally Function()? forwardLocally, MagicLanAclConfiguration Function()? lan1, MagicLanAclConfiguration Function()? lan2, String Function()? name, List<MagicAclUpdateRequestProtocols> Function()? protocols, MagicUnidirectional Function()? unidirectional, }) { return MagicAclUpdateRequest(
  description: description != null ? description() : this.description,
  forwardLocally: forwardLocally != null ? forwardLocally() : this.forwardLocally,
  lan1: lan1 != null ? lan1() : this.lan1,
  lan2: lan2 != null ? lan2() : this.lan2,
  name: name != null ? name() : this.name,
  protocols: protocols != null ? protocols() : this.protocols,
  unidirectional: unidirectional != null ? unidirectional() : this.unidirectional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAclUpdateRequest &&
          description == other.description &&
          forwardLocally == other.forwardLocally &&
          lan1 == other.lan1 &&
          lan2 == other.lan2 &&
          name == other.name &&
          listEquals(protocols, other.protocols) &&
          unidirectional == other.unidirectional; } 
@override int get hashCode { return Object.hash(description, forwardLocally, lan1, lan2, name, Object.hashAll(protocols ?? const []), unidirectional); } 
@override String toString() { return 'MagicAclUpdateRequest(description: $description, forwardLocally: $forwardLocally, lan1: $lan1, lan2: $lan2, name: $name, protocols: $protocols, unidirectional: $unidirectional)'; } 
 }
