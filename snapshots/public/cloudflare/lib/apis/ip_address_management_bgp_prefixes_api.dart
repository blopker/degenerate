// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/addressing_account_identifier.dart';import '../models/addressing_bgp_prefix_create.dart';import '../models/addressing_bgp_prefix_identifier.dart';import '../models/addressing_bgp_prefix_update_advertisement.dart';import '../models/addressing_ipam_bgp_prefixes.dart';import '../models/addressing_prefix_identifier.dart';import '../models/response_common4.dart';/// IpAddressManagementBgpPrefixesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAddressManagementBgpPrefixesApi with ApiExecutor {const IpAddressManagementBgpPrefixesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List BGP Prefixes
///
/// List all BGP Prefixes within the specified IP Prefix. BGP Prefixes are used to control which specific subnets are advertised to the Internet. It is possible to advertise subnets more specific than an IP Prefix by creating more specific BGP Prefixes.
///
/// `GET /accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`
Future<ApiResult<List<AddressingIpamBgpPrefixes>?, Never>> ipAddressManagementPrefixesListBgpPrefixes({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bgp/prefixes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AddressingIpamBgpPrefixes.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create BGP Prefix
///
/// Create a BGP prefix, controlling the BGP advertisement status of a specific subnet. When created, BGP prefixes are initially withdrawn, and can be advertised with the Update BGP Prefix API.
///
/// `POST /accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes`
Future<ApiResult<AddressingIpamBgpPrefixes?, Never>> ipAddressManagementPrefixesCreateBgpPrefix({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingBgpPrefixCreate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bgp/prefixes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamBgpPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Fetch BGP Prefix
///
/// Retrieve a single BGP Prefix according to its identifier
///
/// `GET /accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`
Future<ApiResult<AddressingIpamBgpPrefixes?, Never>> ipAddressManagementPrefixesFetchBgpPrefix({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingBgpPrefixIdentifier bgpPrefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bgp/prefixes/${Uri.encodeComponent(bgpPrefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamBgpPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update BGP Prefix
///
/// Update the properties of a BGP Prefix, such as the on demand advertisement status (advertised or withdrawn).
///
/// `PATCH /accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`
Future<ApiResult<AddressingIpamBgpPrefixes?, Never>> ipAddressManagementPrefixesUpdateBgpPrefix({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingBgpPrefixIdentifier bgpPrefixId, required AddressingBgpPrefixUpdateAdvertisement body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bgp/prefixes/${Uri.encodeComponent(bgpPrefixId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamBgpPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete BGP Prefix
///
/// Delete a BGP Prefix associated with the specified IP Prefix. A BGP Prefix must be withdrawn before it can be deleted.
///
/// `DELETE /accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/prefixes/{bgp_prefix_id}`
Future<ApiResult<ResponseCommon4, Never>> ipAddressManagementPrefixesDeleteBgpPrefix({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingBgpPrefixIdentifier bgpPrefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bgp/prefixes/${Uri.encodeComponent(bgpPrefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
