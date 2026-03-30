// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/email_security_account_id.dart';import '../models/email_security_get_message_detections_response.dart';import '../models/email_security_get_message_preview_response.dart';import '../models/email_security_get_message_raw_response.dart';import '../models/email_security_get_message_response.dart';import '../models/email_security_get_message_trace_response.dart';import '../models/email_security_get_phishguard_reports_response.dart';import '../models/email_security_investigate_final_disposition.dart';import '../models/email_security_investigate_message_action.dart';import '../models/email_security_investigate_response.dart';import '../models/email_security_post_bulk_message_move_request.dart';import '../models/email_security_post_bulk_message_move_response.dart';import '../models/email_security_post_message_move_request.dart';import '../models/email_security_post_message_move_response.dart';import '../models/email_security_post_preview_request.dart';import '../models/email_security_post_preview_response.dart';import '../models/email_security_post_reclassify_request.dart';import '../models/email_security_post_reclassify_response202.dart';import '../models/email_security_post_release_response.dart';import '../models/email_security_postfix_id.dart';import '../models/email_security_submissions_customer_status.dart';import '../models/email_security_submissions_original_disposition.dart';import '../models/email_security_submissions_outcome_disposition.dart';import '../models/email_security_submissions_requested_disposition.dart';import '../models/email_security_submissions_response.dart';import '../models/email_security_submissions_type.dart';/// EmailSecurityApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmailSecurityApi with ApiExecutor {const EmailSecurityApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Search email messages
///
/// Returns information for each email that matches the search parameter(s).
/// If the search takes too long, the endpoint returns 202 with a Location header
/// pointing to a polling endpoint where results can be retrieved once ready.
///
/// `GET /accounts/{account_id}/email-security/investigate`
Future<ApiResult<EmailSecurityInvestigateResponse, Never>> emailSecurityInvestigate({required EmailSecurityAccountId accountId, DateTime? start, DateTime? end, String? query, bool? detectionsOnly, bool? actionLog, EmailSecurityInvestigateFinalDisposition? finalDisposition, String? metric, EmailSecurityInvestigateMessageAction? messageAction, String? recipient, String? sender, String? alertId, String? domain, String? messageId, String? subject, String? exactSubject, String? cursor, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (start != null) {
  queryParameters['start'] = start.toString();
}
if (end != null) {
  queryParameters['end'] = end.toString();
}
if (query != null) {
  queryParameters['query'] = query;
}
if (detectionsOnly != null) {
  queryParameters['detections_only'] = detectionsOnly.toString();
}
if (actionLog != null) {
  queryParameters['action_log'] = actionLog.toString();
}
if (finalDisposition != null) {
  queryParameters['final_disposition'] = finalDisposition.toJson();
}
if (metric != null) {
  queryParameters['metric'] = metric;
}
if (messageAction != null) {
  queryParameters['message_action'] = messageAction.toJson();
}
if (recipient != null) {
  queryParameters['recipient'] = recipient;
}
if (sender != null) {
  queryParameters['sender'] = sender;
}
if (alertId != null) {
  queryParameters['alert_id'] = alertId;
}
if (domain != null) {
  queryParameters['domain'] = domain;
}
if (messageId != null) {
  queryParameters['message_id'] = messageId;
}
if (subject != null) {
  queryParameters['subject'] = subject;
}
if (exactSubject != null) {
  queryParameters['exact_subject'] = exactSubject;
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityInvestigateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get message details
///
/// Retrieves detailed information about a specific email message, including headers,
/// metadata, and security scan results.
///
/// `GET /accounts/{account_id}/email-security/investigate/{postfix_id}`
Future<ApiResult<EmailSecurityGetMessageResponse, Never>> emailSecurityGetMessage({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetMessageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get message detection details
///
/// Returns detection details such as threat categories and sender information for non-benign messages.
///
/// `GET /accounts/{account_id}/email-security/investigate/{postfix_id}/detections`
Future<ApiResult<EmailSecurityGetMessageDetectionsResponse, Never>> emailSecurityGetMessageDetections({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/detections',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetMessageDetectionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Move a message
///
/// Moves a single email message to a different folder or changes its quarantine status.
///
/// `POST /accounts/{account_id}/email-security/investigate/{postfix_id}/move`
Future<ApiResult<EmailSecurityPostMessageMoveResponse, Never>> emailSecurityPostMessageMove({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, required EmailSecurityPostMessageMoveRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/move',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityPostMessageMoveResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get email preview
///
/// Returns a preview of the message body as a base64 encoded PNG image for non-benign messages.
///
/// `GET /accounts/{account_id}/email-security/investigate/{postfix_id}/preview`
Future<ApiResult<EmailSecurityGetMessagePreviewResponse, Never>> emailSecurityGetMessagePreview({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/preview',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetMessagePreviewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get raw email content
///
/// Returns the raw eml of any non-benign message.
///
/// `GET /accounts/{account_id}/email-security/investigate/{postfix_id}/raw`
Future<ApiResult<EmailSecurityGetMessageRawResponse, Never>> emailSecurityGetMessageRaw({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/raw',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetMessageRawResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change email classification
///
/// Submits an email message for reclassification, updating its threat assessment
/// based on new analysis.
///
/// `POST /accounts/{account_id}/email-security/investigate/{postfix_id}/reclassify`
Future<ApiResult<EmailSecurityPostReclassifyResponse202, Never>> emailSecurityPostReclassify({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, required EmailSecurityPostReclassifyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/reclassify',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityPostReclassifyResponse202.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get email trace
///
/// Gets the delivery trace for an email message, showing its path through email
/// security processing.
///
/// `GET /accounts/{account_id}/email-security/investigate/{postfix_id}/trace`
Future<ApiResult<EmailSecurityGetMessageTraceResponse, Never>> emailSecurityGetMessageTrace({required EmailSecurityAccountId accountId, required EmailSecurityPostfixId postfixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/${Uri.encodeComponent(postfixId.toString())}/trace',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetMessageTraceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Move multiple messages
///
/// Maximum batch size: 1000 messages per request
///
/// `POST /accounts/{account_id}/email-security/investigate/move`
Future<ApiResult<EmailSecurityPostBulkMessageMoveResponse, Never>> emailSecurityPostBulkMessageMove({required EmailSecurityAccountId accountId, required EmailSecurityPostBulkMessageMoveRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/move',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityPostBulkMessageMoveResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Preview for non-detection messages
///
/// Generates a preview of an email message for safe viewing without executing any
/// embedded content.
///
/// `POST /accounts/{account_id}/email-security/investigate/preview`
Future<ApiResult<EmailSecurityPostPreviewResponse, Never>> emailSecurityPostPreview({required EmailSecurityAccountId accountId, required EmailSecurityPostPreviewRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityPostPreviewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Release messages from quarantine
///
/// Releases a quarantined email message, allowing it to be delivered to the recipient.
///
/// `POST /accounts/{account_id}/email-security/investigate/release`
Future<ApiResult<EmailSecurityPostReleaseResponse, Never>> emailSecurityPostRelease({required EmailSecurityAccountId accountId, required List<EmailSecurityPostfixId> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/investigate/release',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityPostReleaseResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get `PhishGuard` reports
///
/// Retrieves `PhishGuard` reports showing phishing attempts and suspicious email patterns
/// detected.
///
/// `GET /accounts/{account_id}/email-security/phishguard/reports`
Future<ApiResult<EmailSecurityGetPhishguardReportsResponse, Never>> emailSecurityGetPhishguardReports({required EmailSecurityAccountId accountId, String? fromDate, String? toDate, DateTime? start, DateTime? end, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fromDate != null) {
  queryParameters['from_date'] = fromDate;
}
if (toDate != null) {
  queryParameters['to_date'] = toDate;
}
if (start != null) {
  queryParameters['start'] = start.toString();
}
if (end != null) {
  queryParameters['end'] = end.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/phishguard/reports',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecurityGetPhishguardReportsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get reclassify submissions
///
/// This endpoint returns information for submissions to made to reclassify emails.
///
/// `GET /accounts/{account_id}/email-security/submissions`
Future<ApiResult<EmailSecuritySubmissionsResponse, Never>> emailSecuritySubmissions({required EmailSecurityAccountId accountId, DateTime? start, DateTime? end, EmailSecuritySubmissionsType? type, String? submissionId, EmailSecuritySubmissionsOriginalDisposition? originalDisposition, EmailSecuritySubmissionsRequestedDisposition? requestedDisposition, EmailSecuritySubmissionsOutcomeDisposition? outcomeDisposition, String? status, String? query, EmailSecuritySubmissionsCustomerStatus? customerStatus, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (start != null) {
  queryParameters['start'] = start.toString();
}
if (end != null) {
  queryParameters['end'] = end.toString();
}
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (submissionId != null) {
  queryParameters['submission_id'] = submissionId;
}
if (originalDisposition != null) {
  queryParameters['original_disposition'] = originalDisposition.toJson();
}
if (requestedDisposition != null) {
  queryParameters['requested_disposition'] = requestedDisposition.toJson();
}
if (outcomeDisposition != null) {
  queryParameters['outcome_disposition'] = outcomeDisposition.toJson();
}
if (status != null) {
  queryParameters['status'] = status;
}
if (query != null) {
  queryParameters['query'] = query;
}
if (customerStatus != null) {
  queryParameters['customer_status'] = customerStatus.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/email-security/submissions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return EmailSecuritySubmissionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
