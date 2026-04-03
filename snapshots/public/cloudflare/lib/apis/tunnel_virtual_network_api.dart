// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common69_result.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_virtual_network.dart';import '../models/tunnel_virtual_network_create_a_virtual_network_request.dart';import '../models/tunnel_virtual_network_get_request.dart';import '../models/tunnel_virtual_network_id.dart';import '../models/tunnel_virtual_network_name.dart';import '../models/tunnel_virtual_network_update_request.dart';/// TunnelVirtualNetworkApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TunnelVirtualNetworkApi with ApiExecutor {const TunnelVirtualNetworkApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List virtual networks
///
/// Lists and filters virtual networks in an account.
///
/// `GET /accounts/{account_id}/teamnet/virtual_networks`
Future<ApiResult<List<TunnelVirtualNetwork>?, Never>> tunnelVirtualNetworkListVirtualNetworks({required TunnelAccountId accountId, TunnelVirtualNetworkId? id, TunnelVirtualNetworkName? name, bool? isDefault, bool? isDefaultNetwork, bool? isDeleted, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id.toString();
}
if (name != null) {
  queryParameters['name'] = name.toString();
}
if (isDefault != null) {
  queryParameters['is_default'] = isDefault.toString();
}
if (isDefaultNetwork != null) {
  queryParameters['is_default_network'] = isDefaultNetwork.toString();
}
if (isDeleted != null) {
  queryParameters['is_deleted'] = isDeleted.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/virtual_networks',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TunnelVirtualNetwork.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a virtual network
///
/// Adds a new virtual network to an account.
///
/// `POST /accounts/{account_id}/teamnet/virtual_networks`
Future<ApiResult<ResponseCommon69Result, Never>> tunnelVirtualNetworkCreateAVirtualNetwork({required TunnelAccountId accountId, required TunnelVirtualNetworkCreateAVirtualNetworkRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/virtual_networks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get a virtual network
///
/// Get a virtual network.
///
/// `GET /accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`
Future<ApiResult<ResponseCommon69Result, Never>> tunnelVirtualNetworkGet({required TunnelAccountId accountId, required TunnelVirtualNetworkId virtualNetworkId, required TunnelVirtualNetworkGetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/virtual_networks/${Uri.encodeComponent(virtualNetworkId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update a virtual network
///
/// Updates an existing virtual network.
///
/// `PATCH /accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`
Future<ApiResult<ResponseCommon69Result, Never>> tunnelVirtualNetworkUpdate({required TunnelAccountId accountId, required TunnelVirtualNetworkId virtualNetworkId, required TunnelVirtualNetworkUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/virtual_networks/${Uri.encodeComponent(virtualNetworkId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete a virtual network
///
/// Deletes an existing virtual network.
///
/// `DELETE /accounts/{account_id}/teamnet/virtual_networks/{virtual_network_id}`
Future<ApiResult<ResponseCommon69Result, Never>> tunnelVirtualNetworkDelete({required TunnelVirtualNetworkId virtualNetworkId, required TunnelAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/teamnet/virtual_networks/${Uri.encodeComponent(virtualNetworkId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
