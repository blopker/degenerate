// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/secondary_dns_dns_secondary_secondary_zone.dart';import '../models/secondary_dns_force_response.dart';import '../models/secondary_dns_id_response_result.dart';import '../models/secondary_dns_identifier.dart';import '../models/secondary_dns_single_response_incoming_result.dart';/// SecondaryDnsSecondaryZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecondaryDnsSecondaryZoneApi with ApiExecutor {const SecondaryDnsSecondaryZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Force AXFR
///
/// Sends AXFR zone transfer request to primary nameserver(s).
///
/// `POST /zones/{zone_id}/secondary_dns/force_axfr`
Future<ApiResult<SecondaryDnsForceResult?, Never>> secondaryDnsSecondaryZoneForceAxfr({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/force_axfr',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsForceResult.fromJson(json['result'] as String) : null;
  },
);
 } 
/// Secondary Zone Configuration Details
///
/// Get secondary zone configuration for incoming zone transfers.
///
/// `GET /zones/{zone_id}/secondary_dns/incoming`
Future<ApiResult<SecondaryDnsSingleResponseIncomingResult?, Never>> secondaryDnsSecondaryZoneSecondaryZoneConfigurationDetails({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/incoming',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsSingleResponseIncomingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create Secondary Zone Configuration
///
/// Create secondary zone configuration for incoming zone transfers.
///
/// `POST /zones/{zone_id}/secondary_dns/incoming`
Future<ApiResult<SecondaryDnsSingleResponseIncomingResult?, Never>> secondaryDnsSecondaryZoneCreateSecondaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, required SecondaryDnsDnsSecondarySecondaryZone body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/incoming',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsSingleResponseIncomingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Secondary Zone Configuration
///
/// Update secondary zone configuration for incoming zone transfers.
///
/// `PUT /zones/{zone_id}/secondary_dns/incoming`
Future<ApiResult<SecondaryDnsSingleResponseIncomingResult?, Never>> secondaryDnsSecondaryZoneUpdateSecondaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, required SecondaryDnsDnsSecondarySecondaryZone body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/incoming',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsSingleResponseIncomingResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Secondary Zone Configuration
///
/// Delete secondary zone configuration for incoming zone transfers.
///
/// `DELETE /zones/{zone_id}/secondary_dns/incoming`
Future<ApiResult<SecondaryDnsIdResponseResult?, Never>> secondaryDnsSecondaryZoneDeleteSecondaryZoneConfiguration({required SecondaryDnsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/secondary_dns/incoming',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? SecondaryDnsIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
