// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dlp_dlp_settings.dart';import '../models/dlp_dlp_settings_update.dart';import '../models/dlp_limits.dart';import '../models/dlp_payload_log_setting.dart';import '../models/dlp_payload_log_setting_update_legacy.dart';import '../models/dlp_regex_validation_query.dart';import '../models/dlp_regex_validation_result.dart';/// DlpSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlpSettingsApi with ApiExecutor {const DlpSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch limits associated with DLP for account
///
/// `GET /accounts/{account_id}/dlp/limits`
Future<ApiResult<DlpLimits?, Never>> dlpLimitsGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/limits',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpLimits.fromJson(json['result'] as Map<String, dynamic>) : null;
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
Future<ApiResult<DlpRegexValidationResult?, Never>> dlpPatternValidate({required String accountId, required DlpRegexValidationQuery body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpRegexValidationResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get payload log settings
///
/// `GET /accounts/{account_id}/dlp/payload_log`
Future<ApiResult<DlpPayloadLogSetting?, Never>> dlpPayloadLogGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/payload_log',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPayloadLogSetting.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Set payload log settings
///
/// `PUT /accounts/{account_id}/dlp/payload_log`
Future<ApiResult<DlpPayloadLogSetting?, Never>> dlpPayloadLogPut({required String accountId, required DlpPayloadLogSettingUpdateLegacy body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpPayloadLogSetting.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get DLP account-level settings.
///
/// `GET /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpDlpSettings?, Never>> dlpSettingsGet({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update DLP account-level settings (full replacement).
///
/// Missing fields are reset to initial (unconfigured) values.
///
/// `PUT /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpDlpSettings?, Never>> dlpSettingsUpdate({required String accountId, required DlpDlpSettingsUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Partially update DLP account-level settings.
///
/// Missing fields keep their existing values.
///
/// `PATCH /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpDlpSettings?, Never>> dlpSettingsEdit({required String accountId, required DlpDlpSettingsUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete (reset) DLP account-level settings to initial values.
///
/// `DELETE /accounts/{account_id}/dlp/settings`
Future<ApiResult<DlpDlpSettings?, Never>> dlpSettingsDelete({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/dlp/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlpDlpSettings.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
