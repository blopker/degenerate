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
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsGetStatus({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Set Leaked Credential Checks Status
///
/// Updates the current status of Leaked Credential Checks.
///
/// `POST /zones/{zone_id}/leaked-credential-checks`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsSetStatus({required BundleIdentifier zoneId, required BundleStatus body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List Leaked Credential Checks Custom Detections
///
/// List user-defined detection patterns for Leaked Credential Checks.
///
/// `GET /zones/{zone_id}/leaked-credential-checks/detections`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsListDetections({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create Leaked Credential Checks Custom Detection
///
/// Create user-defined detection pattern for Leaked Credential Checks.
///
/// `POST /zones/{zone_id}/leaked-credential-checks/detections`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsCreateDetection({required BundleIdentifier zoneId, required BundleCustomDetection body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Get Leaked Credential Checks Custom Detection
///
/// Get user-defined detection pattern for Leaked Credential Checks.
///
/// `GET /zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsGetDetection({required BundleIdentifier zoneId, required BundleIdentifier detectionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update Leaked Credential Checks Custom Detection
///
/// Update user-defined detection pattern for Leaked Credential Checks.
///
/// `PUT /zones/{zone_id}/leaked-credential-checks/detections/{detection_id}`
Future<ApiResult<ResponseCommon74Result, Never>> wafProductApiLeakedCredentialsUpdateDetection({required BundleIdentifier zoneId, required BundleIdentifier detectionId, required BundleCustomDetection body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(), fromC: (v) => v as String,);
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
