// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/secondary_dns_disable_transfer_response.dart';import '../models/secondary_dns_enable_transfer_response.dart';import '../models/secondary_dns_id_response_result.dart';import '../models/secondary_dns_identifier.dart';import '../models/secondary_dns_primary_zone_create_primary_zone_configuration_response4xx.dart';import '../models/secondary_dns_primary_zone_delete_primary_zone_configuration_response4xx.dart';import '../models/secondary_dns_primary_zone_disable_outgoing_zone_transfers_response4xx.dart';import '../models/secondary_dns_primary_zone_enable_outgoing_zone_transfers_response4xx.dart';import '../models/secondary_dns_primary_zone_force_dns_notify_response4xx.dart';import '../models/secondary_dns_primary_zone_get_outgoing_zone_transfer_status_response4xx.dart';import '../models/secondary_dns_primary_zone_primary_zone_configuration_details_response4xx.dart';import '../models/secondary_dns_primary_zone_update_primary_zone_configuration_response4xx.dart';import '../models/secondary_dns_schemas_force_response.dart';import '../models/secondary_dns_single_request_outgoing_request.dart';import '../models/secondary_dns_single_response_outgoing_result.dart';/// SecondaryDnsPrimaryZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecondaryDnsPrimaryZoneApi with ApiExecutor {const SecondaryDnsPrimaryZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Primary Zone Configuration Details
///
/// Get primary zone configuration for outgoing zone transfers.
///
/// `GET /zones/{zone_id}/secondary_dns/outgoing`
Future<ApiResult<SecondaryDnsSingleResponseOutgoingResult?, SecondaryDnsPrimaryZonePrimaryZoneConfigurationDetailsResponse4xx>> secondaryDnsPrimaryZonePrimaryZoneConfigurationDetails({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsSingleResponseOutgoingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZonePrimaryZoneConfigurationDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Primary Zone Configuration
///
/// Create primary zone configuration for outgoing zone transfers.
///
/// `POST /zones/{zone_id}/secondary_dns/outgoing`
Future<ApiResult<SecondaryDnsSingleResponseOutgoingResult?, SecondaryDnsPrimaryZoneCreatePrimaryZoneConfigurationResponse4xx>> secondaryDnsPrimaryZoneCreatePrimaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, required SecondaryDnsSingleRequestOutgoingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsSingleResponseOutgoingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneCreatePrimaryZoneConfigurationResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Primary Zone Configuration
///
/// Update primary zone configuration for outgoing zone transfers.
///
/// `PUT /zones/{zone_id}/secondary_dns/outgoing`
Future<ApiResult<SecondaryDnsSingleResponseOutgoingResult?, SecondaryDnsPrimaryZoneUpdatePrimaryZoneConfigurationResponse4xx>> secondaryDnsPrimaryZoneUpdatePrimaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, required SecondaryDnsSingleRequestOutgoingRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsSingleResponseOutgoingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneUpdatePrimaryZoneConfigurationResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete Primary Zone Configuration
///
/// Delete primary zone configuration for outgoing zone transfers.
///
/// `DELETE /zones/{zone_id}/secondary_dns/outgoing`
Future<ApiResult<SecondaryDnsIdResponseResult?, SecondaryDnsPrimaryZoneDeletePrimaryZoneConfigurationResponse4xx>> secondaryDnsPrimaryZoneDeletePrimaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneDeletePrimaryZoneConfigurationResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Disable Outgoing Zone Transfers
///
/// Disable outgoing zone transfers for primary zone and clears IXFR backlog of primary zone.
///
/// `POST /zones/{zone_id}/secondary_dns/outgoing/disable`
Future<ApiResult<SecondaryDnsDisableTransferResult?, SecondaryDnsPrimaryZoneDisableOutgoingZoneTransfersResponse4xx>> secondaryDnsPrimaryZoneDisableOutgoingZoneTransfers({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing/disable',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsDisableTransferResult.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneDisableOutgoingZoneTransfersResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Enable Outgoing Zone Transfers
///
/// Enable outgoing zone transfers for primary zone.
///
/// `POST /zones/{zone_id}/secondary_dns/outgoing/enable`
Future<ApiResult<SecondaryDnsEnableTransferResult?, SecondaryDnsPrimaryZoneEnableOutgoingZoneTransfersResponse4xx>> secondaryDnsPrimaryZoneEnableOutgoingZoneTransfers({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing/enable',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsEnableTransferResult.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneEnableOutgoingZoneTransfersResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Force DNS NOTIFY
///
/// Notifies the secondary nameserver(s) and clears IXFR backlog of primary zone.
///
/// `POST /zones/{zone_id}/secondary_dns/outgoing/force_notify`
Future<ApiResult<SecondaryDnsSchemasForceResult?, SecondaryDnsPrimaryZoneForceDnsNotifyResponse4xx>> secondaryDnsPrimaryZoneForceDnsNotify({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing/force_notify',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsSchemasForceResult.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneForceDnsNotifyResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Outgoing Zone Transfer Status
///
/// Get primary zone transfer status.
///
/// `GET /zones/{zone_id}/secondary_dns/outgoing/status`
Future<ApiResult<SecondaryDnsEnableTransferResult?, SecondaryDnsPrimaryZoneGetOutgoingZoneTransferStatusResponse4xx>> secondaryDnsPrimaryZoneGetOutgoingZoneTransferStatus({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/outgoing/status',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecondaryDnsEnableTransferResult.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return SecondaryDnsPrimaryZoneGetOutgoingZoneTransferStatusResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
