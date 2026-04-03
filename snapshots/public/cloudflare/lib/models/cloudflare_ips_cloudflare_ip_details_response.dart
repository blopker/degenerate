// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_ips_cloudflare_ip_details_response_result.dart';import 'public_ip_ips.dart';import 'public_ip_ips_jdcloud.dart';@immutable final class CloudflareIpsCloudflareIpDetailsResponse {const CloudflareIpsCloudflareIpDetailsResponse({this.result});

factory CloudflareIpsCloudflareIpDetailsResponse.fromJson(Map<String, dynamic> json) { return CloudflareIpsCloudflareIpDetailsResponse(
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => PublicIpIps.fromJson(v as Map<String, dynamic>), fromB: (v) => PublicIpIpsJdcloud.fromJson(v as Map<String, dynamic>),) : null,
); }

final CloudflareIpsCloudflareIpDetailsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CloudflareIpsCloudflareIpDetailsResponse copyWith({CloudflareIpsCloudflareIpDetailsResponseResult Function()? result}) { return CloudflareIpsCloudflareIpDetailsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflareIpsCloudflareIpDetailsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CloudflareIpsCloudflareIpDetailsResponse(result: $result)'; } 
 }
