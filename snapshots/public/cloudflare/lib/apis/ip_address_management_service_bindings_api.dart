// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/addressing_account_identifier.dart';import '../models/addressing_create_binding_request.dart';import '../models/addressing_prefix_identifier.dart';import '../models/addressing_service_binding.dart';import '../models/addressing_service_binding_identifier.dart';import '../models/ip_address_management_service_bindings_list_services_response_result.dart';import '../models/response_common4.dart';/// IpAddressManagementServiceBindingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAddressManagementServiceBindingsApi with ApiExecutor {const IpAddressManagementServiceBindingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Service Bindings
///
/// List the Cloudflare services this prefix is currently bound to. Traffic sent to an address within an IP prefix will be routed to the Cloudflare service of the most-specific Service Binding matching the address.
/// **Example:** binding `192.0.2.0/24` to Cloudflare Magic Transit and `192.0.2.1/32` to the Cloudflare CDN would route traffic for `192.0.2.1` to the CDN, and traffic for all other IPs in the prefix to Cloudflare Magic Transit.
/// 
///
/// `GET /accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings`
Future<ApiResult<List<AddressingServiceBinding>?, Never>> ipAddressManagementServiceBindingsListServiceBindings({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bindings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AddressingServiceBinding.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Service Binding
///
/// Creates a new Service Binding, routing traffic to IPs within the given CIDR to a service running on Cloudflare's network.
/// **NOTE:** The first Service Binding created for an IP Prefix must exactly match the IP Prefix's CIDR. Subsequent Service Bindings may be created with a more-specific CIDR. Refer to the  [Service Bindings Documentation](https://developers.cloudflare.com/byoip/service-bindings/) for compatibility details.
/// 
///
/// `POST /accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings`
Future<ApiResult<AddressingServiceBinding?, Never>> ipAddressManagementServiceBindingsCreateServiceBinding({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, AddressingCreateBindingRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bindings',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingServiceBinding.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Service Binding
///
/// Fetch a single Service Binding
///
/// `GET /accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings/{binding_id}`
Future<ApiResult<AddressingServiceBinding?, Never>> ipAddressManagementServiceBindingsGetServiceBinding({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingServiceBindingIdentifier bindingId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bindings/${Uri.encodeComponent(bindingId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingServiceBinding.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Service Binding
///
/// Delete a Service Binding
///
/// `DELETE /accounts/{account_id}/addressing/prefixes/{prefix_id}/bindings/{binding_id}`
Future<ApiResult<ResponseCommon4, Never>> ipAddressManagementServiceBindingsDeleteServiceBinding({required AddressingAccountIdentifier accountId, required AddressingPrefixIdentifier prefixId, required AddressingServiceBindingIdentifier bindingId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/bindings/${Uri.encodeComponent(bindingId.toString())}',
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
/// List Services
///
/// Bring-Your-Own IP (BYOIP) prefixes onboarded to Cloudflare must be bound to a service running on the Cloudflare network to enable a Cloudflare product on the IP addresses. This endpoint can be used as a reference of available services on the Cloudflare network, and their service IDs.
/// 
///
/// `GET /accounts/{account_id}/addressing/services`
Future<ApiResult<List<IpAddressManagementServiceBindingsListServicesResponseResult>?, Never>> ipAddressManagementServiceBindingsListServices({required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/services',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => IpAddressManagementServiceBindingsListServicesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
