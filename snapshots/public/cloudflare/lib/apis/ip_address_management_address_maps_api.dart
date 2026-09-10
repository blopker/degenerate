// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/addressing_account_identifier.dart';import '../models/addressing_address_map_identifier.dart';import '../models/addressing_address_maps.dart';import '../models/addressing_full_response_result.dart';import '../models/addressing_ip_address.dart';import '../models/addressing_zone_identifier.dart';import '../models/ip_address_management_address_maps_add_a_zone_membership_to_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_add_an_account_membership_to_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_add_an_ip_to_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_address_map_details_response4xx.dart';import '../models/ip_address_management_address_maps_create_address_map_request.dart';import '../models/ip_address_management_address_maps_create_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_delete_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_list_address_maps_response4xx.dart';import '../models/ip_address_management_address_maps_remove_a_zone_membership_from_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_remove_an_account_membership_from_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_remove_an_ip_from_an_address_map_response4xx.dart';import '../models/ip_address_management_address_maps_update_address_map_request.dart';import '../models/ip_address_management_address_maps_update_address_map_response4xx.dart';import '../models/response_collection4.dart';/// IpAddressManagementAddressMapsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAddressManagementAddressMapsApi with ApiExecutor {const IpAddressManagementAddressMapsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Address Maps
///
/// List all address maps owned by the account.
///
/// `GET /accounts/{account_id}/addressing/address_maps`
Future<ApiResult<List<AddressingAddressMaps>?, IpAddressManagementAddressMapsListAddressMapsResponse4xx>> ipAddressManagementAddressMapsListAddressMaps({required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>?)?.map((e) => AddressingAddressMaps.fromJson(e as Map<String, dynamic>)).toList();}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsListAddressMapsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Create Address Map
///
/// Create a new address map under the account.
///
/// `POST /accounts/{account_id}/addressing/address_maps`
Future<ApiResult<AddressingFullResponseResult?, IpAddressManagementAddressMapsCreateAddressMapResponse4xx>> ipAddressManagementAddressMapsCreateAddressMap({required AddressingAccountIdentifier accountId, required IpAddressManagementAddressMapsCreateAddressMapRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AddressingFullResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsCreateAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Address Map Details
///
/// Show a particular address map owned by the account.
///
/// `GET /accounts/{account_id}/addressing/address_maps/{address_map_id}`
Future<ApiResult<AddressingFullResponseResult?, IpAddressManagementAddressMapsAddressMapDetailsResponse4xx>> ipAddressManagementAddressMapsAddressMapDetails({required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AddressingFullResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsAddressMapDetailsResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Update Address Map
///
/// Modify properties of an address map owned by the account.
///
/// `PATCH /accounts/{account_id}/addressing/address_maps/{address_map_id}`
Future<ApiResult<AddressingAddressMaps?, IpAddressManagementAddressMapsUpdateAddressMapResponse4xx>> ipAddressManagementAddressMapsUpdateAddressMap({required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, required IpAddressManagementAddressMapsUpdateAddressMapRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? AddressingAddressMaps.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsUpdateAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Delete Address Map
///
/// Delete a particular address map owned by the account. An Address Map must be disabled before it can be deleted.
///
/// `DELETE /accounts/{account_id}/addressing/address_maps/{address_map_id}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsDeleteAddressMapResponse4xx>> ipAddressManagementAddressMapsDeleteAddressMap({required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsDeleteAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Add an account membership to an Address Map
///
/// Add an account as a member of a particular address map.
///
/// `PUT /accounts/{account_id}/addressing/address_maps/{address_map_id}/accounts/{account_id}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsAddAnAccountMembershipToAnAddressMapResponse4xx>> ipAddressManagementAddressMapsAddAnAccountMembershipToAnAddressMap({required AddressingAccountIdentifier accountId, required AddressingAddressMapIdentifier addressMapId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/accounts/${Uri.encodeComponent(accountId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsAddAnAccountMembershipToAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Remove an account membership from an Address Map
///
/// Remove an account as a member of a particular address map.
///
/// `DELETE /accounts/{account_id}/addressing/address_maps/{address_map_id}/accounts/{account_id}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsRemoveAnAccountMembershipFromAnAddressMapResponse4xx>> ipAddressManagementAddressMapsRemoveAnAccountMembershipFromAnAddressMap({required AddressingAccountIdentifier accountId, required AddressingAddressMapIdentifier addressMapId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/accounts/${Uri.encodeComponent(accountId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsRemoveAnAccountMembershipFromAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Add an IP to an Address Map
///
/// Add an IP from a prefix owned by the account to a particular address map.
///
/// `PUT /accounts/{account_id}/addressing/address_maps/{address_map_id}/ips/{ip_address}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4xx>> ipAddressManagementAddressMapsAddAnIpToAnAddressMap({required AddressingIpAddress ipAddress, required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/ips/${Uri.encodeComponent(ipAddress.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsAddAnIpToAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Remove an IP from an Address Map
///
/// Remove an IP from a particular address map.
///
/// `DELETE /accounts/{account_id}/addressing/address_maps/{address_map_id}/ips/{ip_address}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsRemoveAnIpFromAnAddressMapResponse4xx>> ipAddressManagementAddressMapsRemoveAnIpFromAnAddressMap({required AddressingIpAddress ipAddress, required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/ips/${Uri.encodeComponent(ipAddress.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsRemoveAnIpFromAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Add a zone membership to an Address Map
///
/// Add a zone as a member of a particular address map.
///
/// `PUT /accounts/{account_id}/addressing/address_maps/{address_map_id}/zones/{zone_id}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsAddAZoneMembershipToAnAddressMapResponse4xx>> ipAddressManagementAddressMapsAddAZoneMembershipToAnAddressMap({required AddressingZoneIdentifier zoneId, required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/zones/${Uri.encodeComponent(zoneId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsAddAZoneMembershipToAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Remove a zone membership from an Address Map
///
/// Remove a zone as a member of a particular address map.
///
/// `DELETE /accounts/{account_id}/addressing/address_maps/{address_map_id}/zones/{zone_id}`
Future<ApiResult<ResponseCollection4, IpAddressManagementAddressMapsRemoveAZoneMembershipFromAnAddressMapResponse4xx>> ipAddressManagementAddressMapsRemoveAZoneMembershipFromAnAddressMap({required AddressingZoneIdentifier zoneId, required AddressingAddressMapIdentifier addressMapId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/address_maps/${Uri.encodeComponent(addressMapId.toString())}/zones/${Uri.encodeComponent(zoneId.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  ResponseCollection4.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  IpAddressManagementAddressMapsRemoveAZoneMembershipFromAnAddressMapResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
