// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// For all L7 requests to this hostname, cloudflared will validate each request's Cf-Access-Jwt-Assertion request header.
final class TunnelOriginRequestAccess {const TunnelOriginRequestAccess({required this.audTag, this.$required, required this.teamName, });

factory TunnelOriginRequestAccess.fromJson(Map<String, dynamic> json) { return TunnelOriginRequestAccess(
  audTag: (json['audTag'] as List<dynamic>).map((e) => e as String).toList(),
  $required: json['required'] as bool?,
  teamName: json['teamName'] as String,
); }

/// Access applications that are allowed to reach this hostname for this Tunnel. Audience tags can be identified in the dashboard or via the List Access policies API.
final List<String> audTag;

/// Deny traffic that has not fulfilled Access authorization.
final bool? $required;

final String teamName;

Map<String, dynamic> toJson() { return {
  'audTag': audTag,
  'required': ?$required,
  'teamName': teamName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audTag') &&
      json.containsKey('teamName') && json['teamName'] is String; } 
TunnelOriginRequestAccess copyWith({List<String>? audTag, bool Function()? $required, String? teamName, }) { return TunnelOriginRequestAccess(
  audTag: audTag ?? this.audTag,
  $required: $required != null ? $required() : this.$required,
  teamName: teamName ?? this.teamName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TunnelOriginRequestAccess &&
          listEquals(audTag, other.audTag) &&
          $required == other.$required &&
          teamName == other.teamName; } 
@override int get hashCode { return Object.hash(Object.hashAll(audTag), $required, teamName); } 
@override String toString() { return 'TunnelOriginRequestAccess(audTag: $audTag, \$required: ${$required}, teamName: $teamName)'; } 
 }
