// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'public_ip_etag.dart';final class PublicIpIpsJdcloud {const PublicIpIpsJdcloud({this.etag, this.ipv4Cidrs, this.ipv6Cidrs, this.jdcloudCidrs, });

factory PublicIpIpsJdcloud.fromJson(Map<String, dynamic> json) { return PublicIpIpsJdcloud(
  etag: json['etag'] != null ? PublicIpEtag.fromJson(json['etag'] as String) : null,
  ipv4Cidrs: (json['ipv4_cidrs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  ipv6Cidrs: (json['ipv6_cidrs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jdcloudCidrs: (json['jdcloud_cidrs'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A digest of the IP data. Useful for determining if the data has changed.
final PublicIpEtag? etag;

final List<String>? ipv4Cidrs;

final List<String>? ipv6Cidrs;

final List<String>? jdcloudCidrs;

Map<String, dynamic> toJson() { return {
  if (etag != null) 'etag': etag?.toJson(),
  'ipv4_cidrs': ?ipv4Cidrs,
  'ipv6_cidrs': ?ipv6Cidrs,
  'jdcloud_cidrs': ?jdcloudCidrs,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PublicIpIpsJdcloud copyWith({PublicIpEtag Function()? etag, List<String> Function()? ipv4Cidrs, List<String> Function()? ipv6Cidrs, List<String> Function()? jdcloudCidrs, }) { return PublicIpIpsJdcloud(
  etag: etag != null ? etag() : this.etag,
  ipv4Cidrs: ipv4Cidrs != null ? ipv4Cidrs() : this.ipv4Cidrs,
  ipv6Cidrs: ipv6Cidrs != null ? ipv6Cidrs() : this.ipv6Cidrs,
  jdcloudCidrs: jdcloudCidrs != null ? jdcloudCidrs() : this.jdcloudCidrs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PublicIpIpsJdcloud &&
          etag == other.etag &&
          listEquals(ipv4Cidrs, other.ipv4Cidrs) &&
          listEquals(ipv6Cidrs, other.ipv6Cidrs) &&
          listEquals(jdcloudCidrs, other.jdcloudCidrs); } 
@override int get hashCode { return Object.hash(etag, Object.hashAll(ipv4Cidrs ?? const []), Object.hashAll(ipv6Cidrs ?? const []), Object.hashAll(jdcloudCidrs ?? const [])); } 
@override String toString() { return 'PublicIpIpsJdcloud(etag: $etag, ipv4Cidrs: $ipv4Cidrs, ipv6Cidrs: $ipv6Cidrs, jdcloudCidrs: $jdcloudCidrs)'; } 
 }
