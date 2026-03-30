// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common69_result.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_address_family.dart';import '../models/tunnel_existed_at.dart';import '../models/tunnel_ip_network_encoded.dart';import '../models/tunnel_page_number.dart';import '../models/tunnel_per_page.dart';import '../models/tunnel_subnet.dart';import '../models/tunnel_subnet_id.dart';import '../models/tunnel_subnet_query_comment.dart';import '../models/tunnel_subnet_query_name.dart';import '../models/zero_trust_networks_subnet_create_warp_request.dart';import '../models/zero_trust_networks_subnet_update_cloudflare_source_request.dart';import '../models/zero_trust_networks_subnet_update_warp_request.dart';import '../models/zero_trust_networks_subnets_list_sort_order.dart';import '../models/zero_trust_networks_subnets_list_subnet_types.dart';/// ZeroTrustSubnetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustSubnetsApi with ApiExecutor {const ZeroTrustSubnetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Subnets
///
/// Lists and filters subnets in an account.
///
/// `GET /accounts/{account_id}/zerotrust/subnets`
Future<ApiResult<List<TunnelSubnet>?, Never>> zeroTrustNetworksSubnetsList({required TunnelAccountId accountId, TunnelSubnetQueryName? name, TunnelSubnetQueryComment? comment, TunnelIpNetworkEncoded? network, TunnelExistedAt? existedAt, TunnelAddressFamily? addressFamily, bool? isDefaultNetwork, bool? isDeleted, ZeroTrustNetworksSubnetsListSortOrder? sortOrder, ZeroTrustNetworksSubnetsListSubnetTypes? subnetTypes, TunnelPerPage? perPage, TunnelPageNumber? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name.toString();
}
if (comment != null) {
  queryParameters['comment'] = comment.toString();
}
if (network != null) {
  queryParameters['network'] = network.toString();
}
if (existedAt != null) {
  queryParameters['existed_at'] = existedAt.toString();
}
if (addressFamily != null) {
  queryParameters['address_family'] = addressFamily.toJson();
}
if (isDefaultNetwork != null) {
  queryParameters['is_default_network'] = isDefaultNetwork.toString();
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (subnetTypes != null) {
  queryParameters['subnet_types'] = subnetTypes.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelSubnet.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Update Cloudflare Source Subnet
///
/// Updates the Cloudflare Source subnet of the given address family
///
/// `PATCH /accounts/{account_id}/zerotrust/subnets/cloudflare_source/{address_family}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksSubnetUpdateCloudflareSource({required TunnelAccountId accountId, required TunnelAddressFamily addressFamily, required ZeroTrustNetworksSubnetUpdateCloudflareSourceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets/cloudflare_source/${Uri.encodeComponent(addressFamily.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create WARP IP subnet
///
/// Create a WARP IP assignment subnet. Currently, only IPv4 subnets can be created.
/// 
/// **Network constraints:**
/// - The network must be within one of the following private IP ranges:
///   - `10.0.0.0/8` (RFC 1918)
///   - `172.16.0.0/12` (RFC 1918)
///   - `192.168.0.0/16` (RFC 1918)
///   - `100.64.0.0/10` (RFC 6598 - CGNAT)
/// - The subnet must have a prefix length of `/24` or larger (e.g., `/16`, `/20`, `/24` are valid; `/25`, `/28` are not)
/// 
///
/// `POST /accounts/{account_id}/zerotrust/subnets/warp`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksSubnetCreateWarp({required TunnelAccountId accountId, required ZeroTrustNetworksSubnetCreateWarpRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets/warp',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get WARP IP subnet
///
/// Get a WARP IP assignment subnet.
///
/// `GET /accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksSubnetGetWarp({required TunnelAccountId accountId, required TunnelSubnetId subnetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets/warp/${Uri.encodeComponent(subnetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update WARP IP subnet
///
/// Updates a WARP IP assignment subnet.
/// 
/// **Update constraints:**
/// - The `network` field cannot be modified for WARP subnets. Only `name`, `comment`, and `is_default_network` can be updated.
/// - IPv6 subnets cannot be updated
/// 
///
/// `PATCH /accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksSubnetUpdateWarp({required TunnelAccountId accountId, required TunnelSubnetId subnetId, required ZeroTrustNetworksSubnetUpdateWarpRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets/warp/${Uri.encodeComponent(subnetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete WARP IP subnet
///
/// Delete a WARP IP assignment subnet. This operation is idempotent - deleting an already-deleted or non-existent subnet will return success with a null result.
///
/// `DELETE /accounts/{account_id}/zerotrust/subnets/warp/{subnet_id}`
Future<ApiResult<ResponseCommon69Result, Never>> zeroTrustNetworksSubnetDeleteWarp({required TunnelAccountId accountId, required TunnelSubnetId subnetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/subnets/warp/${Uri.encodeComponent(subnetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
