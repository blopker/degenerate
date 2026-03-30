// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mcn_account_id.dart';import '../models/mcn_bad_response.dart';import '../models/mcn_create_onramp_request.dart';import '../models/mcn_create_onramp_response.dart';import '../models/mcn_delete_onramp_response.dart';import '../models/mcn_get_magic_wan_address_space_response.dart';import '../models/mcn_get_onramp_response.dart';import '../models/mcn_good_response.dart';import '../models/mcn_list_onramps_response.dart';import '../models/mcn_onramp_id.dart';import '../models/mcn_update_magic_wan_address_space_request.dart';import '../models/mcn_update_magic_wan_address_space_response.dart';import '../models/mcn_update_onramp_request.dart';import '../models/mcn_update_onramp_response.dart';/// OnRampsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OnRampsApi with ApiExecutor {const OnRampsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List On-ramps
///
/// List On-ramps (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/onramps`
Future<ApiResult<McnListOnrampsResponse, McnBadResponse>> onrampsList({required McnAccountId accountId, String? orderBy, bool? desc, bool? status, bool? vpcs, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (orderBy != null) {
  queryParameters['order_by'] = orderBy;
}
if (desc != null) {
  queryParameters['desc'] = desc.toString();
}
if (status != null) {
  queryParameters['status'] = status.toString();
}
if (vpcs != null) {
  queryParameters['vpcs'] = vpcs.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnListOnrampsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create On-ramp
///
/// Create a new On-ramp (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/onramps`
Future<ApiResult<McnCreateOnrampResponse, McnBadResponse>> onrampsCreate({required McnAccountId accountId, String? forwarded, required McnCreateOnrampRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (forwarded != null) {
  headers['forwarded'] = forwarded;
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnCreateOnrampResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read On-ramp
///
/// Read an On-ramp (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/onramps/{onramp_id}`
Future<ApiResult<McnGetOnrampResponse, McnBadResponse>> onrampsRead({required McnAccountId accountId, required McnOnrampId onrampId, bool? status, bool? vpcs, bool? postApplyResources, bool? plannedResources, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toString();
}
if (vpcs != null) {
  queryParameters['vpcs'] = vpcs.toString();
}
if (postApplyResources != null) {
  queryParameters['post_apply_resources'] = postApplyResources.toString();
}
if (plannedResources != null) {
  queryParameters['planned_resources'] = plannedResources.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGetOnrampResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update On-ramp
///
/// Update an On-ramp (Closed Beta).
///
/// `PUT /accounts/{account_id}/magic/cloud/onramps/{onramp_id}`
Future<ApiResult<McnUpdateOnrampResponse, McnBadResponse>> onrampsUpdate({required McnAccountId accountId, required McnOnrampId onrampId, required McnUpdateOnrampRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateOnrampResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch On-ramp
///
/// Update an On-ramp (Closed Beta).
///
/// `PATCH /accounts/{account_id}/magic/cloud/onramps/{onramp_id}`
Future<ApiResult<McnUpdateOnrampResponse, McnBadResponse>> onrampsPatch({required McnAccountId accountId, required McnOnrampId onrampId, required McnUpdateOnrampRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateOnrampResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete On-ramp
///
/// Delete an On-ramp (Closed Beta).
///
/// `DELETE /accounts/{account_id}/magic/cloud/onramps/{onramp_id}`
Future<ApiResult<McnDeleteOnrampResponse, McnBadResponse>> onrampsDelete({required McnAccountId accountId, required McnOnrampId onrampId, bool? destroy, bool? force, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (destroy != null) {
  queryParameters['destroy'] = destroy.toString();
}
if (force != null) {
  queryParameters['force'] = force.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnDeleteOnrampResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Apply On-ramp
///
/// Apply an On-ramp (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/onramps/{onramp_id}/apply`
Future<ApiResult<McnGoodResponse, McnBadResponse>> onrampsApply({required McnAccountId accountId, required McnOnrampId onrampId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}/apply',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGoodResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Export as Terraform
///
/// Export an On-ramp to terraform ready file(s) (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/onramps/{onramp_id}/export`
Future<ApiResult<Uint8List, McnBadResponse>> onrampsExport({required McnAccountId accountId, required McnOnrampId onrampId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}/export',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Uint8List.fromList(response.bodyBytes);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Plan On-ramp
///
/// Plan an On-ramp (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/onramps/{onramp_id}/plan`
Future<ApiResult<McnGoodResponse, McnBadResponse>> onrampsPlan({required McnAccountId accountId, required McnOnrampId onrampId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/${Uri.encodeComponent(onrampId.toString())}/plan',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGoodResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read Magic WAN Address Space
///
/// Read the Magic WAN Address Space (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`
Future<ApiResult<McnGetMagicWanAddressSpaceResponse, McnBadResponse>> onrampsMwanAddrSpaceRead({required McnAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/magic_wan_address_space',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGetMagicWanAddressSpaceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Magic WAN Address Space
///
/// Update the Magic WAN Address Space (Closed Beta).
///
/// `PUT /accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`
Future<ApiResult<McnUpdateMagicWanAddressSpaceResponse, McnBadResponse>> onrampsMwanAddrSpaceUpdate({required McnAccountId accountId, required McnUpdateMagicWanAddressSpaceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/magic_wan_address_space',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateMagicWanAddressSpaceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Magic WAN Address Space
///
/// Update the Magic WAN Address Space (Closed Beta).
///
/// `PATCH /accounts/{account_id}/magic/cloud/onramps/magic_wan_address_space`
Future<ApiResult<McnUpdateMagicWanAddressSpaceResponse, McnBadResponse>> onrampsMwanAddrSpacePatch({required McnAccountId accountId, required McnUpdateMagicWanAddressSpaceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/onramps/magic_wan_address_space',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateMagicWanAddressSpaceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
