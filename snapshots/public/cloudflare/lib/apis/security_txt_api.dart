// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common61.dart';import '../models/response_common_failure64.dart';import '../models/security_center_identifier.dart';import '../models/security_center_security_txt.dart';/// SecurityTxtApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecurityTxtApi with ApiExecutor {const SecurityTxtApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves security.txt
///
/// `GET /zones/{zone_id}/security-center/securitytxt`
Future<ApiResult<SecurityCenterSecurityTxt?, ResponseCommonFailure64>> getSecurityTxt({required SecurityCenterIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/security-center/securitytxt',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? SecurityCenterSecurityTxt.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure64.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates security.txt
///
/// `PUT /zones/{zone_id}/security-center/securitytxt`
Future<ApiResult<ResponseCommon61, ResponseCommonFailure64>> updateSecurityTxt({required SecurityCenterIdentifier zoneId, required SecurityCenterSecurityTxt body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/security-center/securitytxt',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon61.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure64.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Deletes security.txt
///
/// `DELETE /zones/{zone_id}/security-center/securitytxt`
Future<ApiResult<ResponseCommon61, ResponseCommonFailure64>> deleteSecurityTxt({required SecurityCenterIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/security-center/securitytxt',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon61.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure64.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
