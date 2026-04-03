// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/bundle_custom_detection.dart';import '../models/bundle_identifier.dart';import '../models/bundle_status.dart';import '../models/response_common74_result.dart';/// LeakedCredentialChecksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LeakedCredentialChecksApi with ApiExecutor {const LeakedCredentialChecksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Leaked Credential Checks Status
///
/// Retrieves the current status of Leaked Credential Checks.
///
/// `GET /zones/{zone_id}/leaked-credential-checks`
Future<ApiResult<BundleStatus?, Never>> wafProductApiLeakedCredentialsGetStatus({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BundleStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Set Leaked Credential Checks Status
///
/// Updates the current status of Leaked Credential Checks.
///
/// `POST /zones/{zone_id}/leaked-credential-checks`
Future<ApiResult<BundleStatus?, Never>> wafProductApiLeakedCredentialsSetStatus({required BundleIdentifier zoneId, required BundleStatus body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BundleStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List Leaked Credential Checks Custom Detections
///
/// List user-defined detection patterns for Leaked Credential Checks.
///
/// `GET /zones/{zone_id}/leaked-credential-checks/detections`
Future<ApiResult<List<BundleCustomDetection>?, Never>> wafProductApiLeakedCredentialsListDetections({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks/detections',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => BundleCustomDetection.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Leaked Credential Checks Custom Detection
///
/// Create user-defined detection pattern for Leaked Credential Checks.
///
/// `POST /zones/{zone_id}/leaked-credential-checks/detections`
Future<ApiResult<BundleCustomDetection?, Never>> wafProductApiLeakedCredentialsCreateDetection({required BundleIdentifier zoneId, required BundleCustomDetection body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks/detections',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BundleCustomDetection.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Leaked Credential Checks Custom Detection
///
/// Get user-defined detection pattern for Leaked Credential Checks.
///
/// `GET /zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`
Future<ApiResult<BundleCustomDetection?, Never>> wafProductApiLeakedCredentialsGetDetection({required BundleIdentifier zoneId, required BundleIdentifier detectionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks/detections/${Uri.encodeComponent(detectionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BundleCustomDetection.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Leaked Credential Checks Custom Detection
///
/// Update user-defined detection pattern for Leaked Credential Checks.
///
/// `PUT /zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`
Future<ApiResult<BundleCustomDetection?, Never>> wafProductApiLeakedCredentialsUpdateDetection({required BundleIdentifier zoneId, required BundleIdentifier detectionId, required BundleCustomDetection body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks/detections/${Uri.encodeComponent(detectionId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BundleCustomDetection.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Leaked Credential Checks Custom Detection
///
/// Remove user-defined detection pattern for Leaked Credential Checks.
///
/// `DELETE /zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsDeleteDetection({required BundleIdentifier zoneId, required BundleIdentifier detectionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/leaked-credential-checks/detections/${Uri.encodeComponent(detectionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
