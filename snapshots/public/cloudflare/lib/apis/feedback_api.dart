// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/bot_management_feedback_report.dart';import '../models/bot_management_identifier.dart';/// FeedbackApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class FeedbackApi with ApiExecutor {const FeedbackApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List zone feedback reports
///
/// Returns all feedback reports previously submitted for the specified zone. Feedback reports help improve detection by sharing samples of traffic that were misclassified as bots or humans.
/// 
///
/// `GET /zones/{zone_id}/bot_management/feedback`
Future<ApiResult<List<BotManagementFeedbackReport>, Never>> botManagementZoneFeedbackList({required BotManagementIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/bot_management/feedback',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => BotManagementFeedbackReport.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Submit a feedback report
///
/// Submit a feedback report for the specified zone. Use `type` to indicate whether the report is a false positive (good traffic flagged as bot) or a false negative (bot traffic missed). Furthermore, you can also use `expression` as a wirefilter to identify the affected traffic sample.
/// 
/// See more accepted API fields and expression types at https://developers.cloudflare.com/bots/concepts/feedback-loop/#api-fields and https://developers.cloudflare.com/bots/concepts/feedback-loop/#expression-fields, respectively.
/// 
///
/// `POST /zones/{zone_id}/bot_management/feedback`
Future<ApiResult<void, Never>> botManagementZoneFeedbackCreate({required BotManagementIdentifier zoneId, required BotManagementFeedbackReport body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/bot_management/feedback',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
