// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/addressing_lease.dart';import '../models/addressing_schemas_account_identifier.dart';import '../models/ip_address_management_list_leases_response4_xx.dart';/// IpAddressManagementLeasesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAddressManagementLeasesApi with ApiExecutor {const IpAddressManagementLeasesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Leases
///
/// List all leases owned by the account.
///
/// `GET /accounts/{account_id}/addressing/leases`
Future<ApiResult<List<AddressingLease>?, IpAddressManagementListLeasesResponse4Xx>> ipAddressManagementListLeases({required AddressingSchemasAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/leases',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => AddressingLease.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return IpAddressManagementListLeasesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
