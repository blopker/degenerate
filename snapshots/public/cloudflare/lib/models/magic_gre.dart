// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The configuration specific to GRE interconnects.
@immutable final class MagicGre {const MagicGre({this.cloudflareEndpoint});

factory MagicGre.fromJson(Map<String, dynamic> json) { return MagicGre(
  cloudflareEndpoint: json['cloudflare_endpoint'] as String?,
); }

/// The IP address assigned to the Cloudflare side of the GRE tunnel created as part of the Interconnect.
final String? cloudflareEndpoint;

Map<String, dynamic> toJson() { return {
  'cloudflare_endpoint': ?cloudflareEndpoint,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cloudflare_endpoint'}.contains(key)); } 
MagicGre copyWith({String Function()? cloudflareEndpoint}) { return MagicGre(
  cloudflareEndpoint: cloudflareEndpoint != null ? cloudflareEndpoint() : this.cloudflareEndpoint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicGre &&
          cloudflareEndpoint == other.cloudflareEndpoint; } 
@override int get hashCode { return cloudflareEndpoint.hashCode; } 
@override String toString() { return 'MagicGre(cloudflareEndpoint: $cloudflareEndpoint)'; } 
 }
