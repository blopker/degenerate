// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_dlp_settings_update.dart';import '../models/dlp_limits_get_response.dart';import '../models/dlp_pattern_validate_response.dart';import '../models/dlp_payload_log_get_response.dart';import '../models/dlp_payload_log_put_response.dart';import '../models/dlp_payload_log_setting_update_legacy.dart';import '../models/dlp_regex_validation_query.dart';import '../models/dlp_settings_delete_response.dart';import '../models/dlp_settings_edit_response.dart';import '../models/dlp_settings_get_response.dart';import '../models/dlp_settings_update_response.dart';/// DlpSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpSettingsApi with ApiExecutor {const DlpSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch limits associated with DLP for account
///
/// `GET /accounts/{account_id}/dlp/limits`
Future<ApiResult<DlpLimitsGetResponse, Never>> dlpLimitsGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/limits',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpLimitsGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Validate a DLP regex pattern
///
/// Validates whether this pattern is a valid regular expression. Rejects it if
/// the regular expression is too complex or can match an unbounded-length
/// string. The regex will be rejected if it uses `*` or `+`. Bound the maximum
/// number of characters that can be matched using a range, e.g. `{1,100}`.
///
/// `POST /accounts/{account_id}/dlp/patterns/validate`
Future<ApiResult<DlpPatternValidateResponse, Never>> dlpPatternValidate({required String accountId, required DlpRegexValidationQuery body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/patterns/validate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpPatternValidateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get payload log settings
///
/// `GET /accounts/{account_id}/dlp/payload_log`
Future<ApiResult<DlpPayloadLogGetResponse, Never>> dlpPayloadLogGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/payload_log',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpPayloadLogGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set payload log settings
///
/// `PUT /accounts/{account_id}/dlp/payload_log`
Future<ApiResult<DlpPayloadLogPutResponse, Never>> dlpPayloadLogPut({required String accountId, required DlpPayloadLogSettingUpdateLegacy body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/payload_log',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpPayloadLogPutResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DLP account-level settings.
///
/// `GET /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpSettingsGetResponse, Never>> dlpSettingsGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpSettingsGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update DLP account-level settings (full replacement).
///
/// Missing fields are reset to initial (unconfigured) values.
///
/// `PUT /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpSettingsUpdateResponse, Never>> dlpSettingsUpdate({required String accountId, required DlpDlpSettingsUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpSettingsUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Partially update DLP account-level settings.
///
/// Missing fields keep their existing values.
///
/// `PATCH /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpSettingsEditResponse, Never>> dlpSettingsEdit({required String accountId, required DlpDlpSettingsUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpSettingsEditResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete (reset) DLP account-level settings to initial values.
///
/// `DELETE /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpSettingsDeleteResponse, Never>> dlpSettingsDelete({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DlpSettingsDeleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
