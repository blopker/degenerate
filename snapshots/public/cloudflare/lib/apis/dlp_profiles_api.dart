// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_profile.dart';import '../models/dlp_custom_profile.dart';import '../models/dlp_custom_profile_update.dart';import '../models/dlp_new_custom_profile.dart';import '../models/dlp_new_predefined_profile.dart';import '../models/dlp_predefined_profile_config.dart';import '../models/dlp_predefined_profile_config_update.dart';import '../models/dlp_predefined_profile_update.dart';import '../models/dlp_profile.dart';import '../models/integration_profile.dart';import '../models/predefined_profile.dart';/// DlpProfilesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpProfilesApi with ApiExecutor {const DlpProfilesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all profiles
///
/// Lists all DLP profiles in an account.
///
/// `GET /accounts/{account_id}/dlp/profiles`
Future<ApiResult<List<DlpProfile>?, Never>> dlpProfilesListAllProfiles({required String accountId, bool? all, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (all != null) {
  queryParameters['all'] = all.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),)).toList();
  },
);
 } 
/// Get DLP Profile
///
/// Fetches a DLP profile by ID.
///
/// `GET /accounts/{account_id}/dlp/profiles/{profile_id}`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesGetDlpProfile({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/${Uri.encodeComponent(profileId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// List all custom profiles
///
/// Lists all DLP custom profiles in an account.
///
/// `GET /accounts/{account_id}/dlp/profiles/custom`
Future<ApiResult<List<DlpCustomProfile>?, Never>> dlpProfilesListAllCustomProfiles({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/custom',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlpCustomProfile.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create custom profile
///
/// Creates a DLP custom profile.
///
/// `POST /accounts/{account_id}/dlp/profiles/custom`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesCreateCustomProfiles({required String accountId, required DlpNewCustomProfile body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/custom',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Get custom profile
///
/// Fetches a custom DLP profile by id.
///
/// `GET /accounts/{account_id}/dlp/profiles/custom/{profile_id}`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesGetCustomProfile({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/custom/${Uri.encodeComponent(profileId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Update custom profile
///
/// Updates a DLP custom profile.
///
/// `PUT /accounts/{account_id}/dlp/profiles/custom/{profile_id}`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesUpdateCustomProfile({required String accountId, required String profileId, required DlpCustomProfileUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/custom/${Uri.encodeComponent(profileId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Delete custom profile
///
/// Deletes a DLP custom profile.
///
/// `DELETE /accounts/{account_id}/dlp/profiles/custom/{profile_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> dlpProfilesDeleteCustomProfile({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/custom/${Uri.encodeComponent(profileId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Create predefined profile
///
/// Creates a DLP predefined profile. Only supports enabling/disabling entries.
///
/// `POST /accounts/{account_id}/dlp/profiles/predefined`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesCreatePredefinedProfile({required String accountId, required DlpNewPredefinedProfile body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Get predefined profile
///
/// Fetches a predefined DLP profile by id.
///
/// `GET /accounts/{account_id}/dlp/profiles/predefined/{profile_id}`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesGetPredefinedProfile({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Update predefined profile
///
/// Updates a DLP predefined profile. Only supports enabling/disabling entries.
///
/// `PUT /accounts/{account_id}/dlp/profiles/predefined/{profile_id}`
Future<ApiResult<DlpProfile?, Never>> dlpProfilesUpdatePredefinedProfile({required String accountId, required String profileId, required DlpPredefinedProfileUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => CustomProfile.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedProfile.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationProfile.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
/// Delete predefined profile
///
/// This is a no-op as predefined profiles can't be deleted but is needed for our generated terraform API.
///
/// `DELETE /accounts/{account_id}/dlp/profiles/predefined/{profile_id}`
Future<ApiResult<Map<String, dynamic>?, Never>> dlpProfilesDeletePredefinedProfile({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
/// Get predefined profile config
///
/// This is similar to `get_predefined` but only returns entries that are enabled.
/// This is needed for our terraform API
/// Fetches a predefined DLP profile by id.
///
/// `GET /accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`
Future<ApiResult<DlpPredefinedProfileConfig?, Never>> dlpProfilesGetPredefinedProfileConfig({required String accountId, required String profileId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}/config',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create predefined profile
///
/// This is similar to `update_predefined` but only returns entries that are enabled.
/// This is needed for our terraform API
/// Creates a DLP predefined profile. Only supports enabling/disabling entries.
///
/// `POST /accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`
Future<ApiResult<DlpPredefinedProfileConfig?, Never>> dlpProfilesCreatePredefinedProfileConfig({required String accountId, required String profileId, required DlpPredefinedProfileConfigUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update predefined profile config
///
/// This is similar to `update_predefined` but only returns entries that are enabled.
/// This is needed for our terraform API
/// Updates a DLP predefined profile. Only supports enabling/disabling entries.
///
/// `PUT /accounts/{account_id}/dlp/profiles/predefined/{profile_id}/config`
Future<ApiResult<DlpPredefinedProfileConfig?, Never>> dlpProfilesUpdatePredefinedProfileConfig({required String accountId, required String profileId, required DlpPredefinedProfileConfigUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/profiles/predefined/${Uri.encodeComponent(profileId)}/config',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPredefinedProfileConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
