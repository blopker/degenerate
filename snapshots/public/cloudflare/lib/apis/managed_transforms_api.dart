// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_managed_transforms_response4xx.dart';import '../models/list_managed_transforms_response4xx.dart';import '../models/rulesets_managed_transforms.dart';import '../models/rulesets_managed_transforms_request.dart';import '../models/rulesets_zone_id.dart';import '../models/update_managed_transforms_response4xx.dart';/// ManagedTransformsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ManagedTransformsApi with ApiExecutor {const ManagedTransformsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Managed Transforms
///
/// Fetches a list of all Managed Transforms.
///
/// `GET /zones/{zone_id}/managed_headers`
Future<ApiResult<RulesetsManagedTransforms, ListManagedTransformsResponse4xx>> listManagedTransforms({required RulesetsZoneId zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/managed_headers',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return RulesetsManagedTransforms.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListManagedTransformsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update Managed Transforms
///
/// Updates the status of one or more Managed Transforms.
///
/// `PATCH /zones/{zone_id}/managed_headers`
Future<ApiResult<RulesetsManagedTransforms, UpdateManagedTransformsResponse4xx>> updateManagedTransforms({required RulesetsZoneId zoneId, required RulesetsManagedTransformsRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/managed_headers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return RulesetsManagedTransforms.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateManagedTransformsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete Managed Transforms
///
/// Disables all Managed Transforms.
///
/// `DELETE /zones/{zone_id}/managed_headers`
Future<ApiResult<void, DeleteManagedTransformsResponse4xx>> deleteManagedTransforms({required RulesetsZoneId zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/managed_headers',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteManagedTransformsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
