// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_message_request.dart';import '../models/create_run_include.dart';import '../models/create_run_request.dart';import '../models/create_thread_and_run_request.dart';import '../models/create_thread_request.dart';import '../models/delete_message_response.dart';import '../models/delete_thread_response.dart';import '../models/get_run_step_include.dart';import '../models/list_messages_order.dart';import '../models/list_messages_response.dart';import '../models/list_run_steps_include.dart';import '../models/list_run_steps_order.dart';import '../models/list_run_steps_response.dart';import '../models/list_runs_order.dart';import '../models/list_runs_response.dart';import '../models/message_object.dart';import '../models/modify_message_request.dart';import '../models/modify_run_request.dart';import '../models/modify_thread_request.dart';import '../models/run_object.dart';import '../models/run_step_object.dart';import '../models/submit_tool_outputs_run_request.dart';import '../models/thread_object.dart';/// AssistantsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AssistantsApi with ApiExecutor {const AssistantsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a thread.
///
/// `POST /threads`
Future<ApiResult<ThreadObject, Never>> createThread({CreateThreadRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ThreadObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a thread and run it in one request.
///
/// `POST /threads/runs`
Future<ApiResult<RunObject, Never>> createThreadAndRun({required CreateThreadAndRunRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/runs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieves a thread.
///
/// `GET /threads/{thread_id}`
Future<ApiResult<ThreadObject, Never>> getThread({required String threadId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ThreadObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Modifies a thread.
///
/// `POST /threads/{thread_id}`
Future<ApiResult<ThreadObject, Never>> modifyThread({required String threadId, required ModifyThreadRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ThreadObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a thread.
///
/// `DELETE /threads/{thread_id}`
Future<ApiResult<DeleteThreadResponse, Never>> deleteThread({required String threadId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/threads/${Uri.encodeComponent(threadId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteThreadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Returns a list of messages for a given thread.
///
/// `GET /threads/{thread_id}/messages`
Future<ApiResult<ListMessagesResponse, Never>> listMessages({required String threadId, int? limit, ListMessagesOrder? order, String? after, String? before, String? runId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (after != null) {
  queryParameters['after'] = after;
}
if (before != null) {
  queryParameters['before'] = before;
}
if (runId != null) {
  queryParameters['run_id'] = runId;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/messages',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListMessagesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a message.
///
/// `POST /threads/{thread_id}/messages`
Future<ApiResult<MessageObject, Never>> createMessage({required String threadId, required CreateMessageRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/messages',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MessageObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve a message.
///
/// `GET /threads/{thread_id}/messages/{message_id}`
Future<ApiResult<MessageObject, Never>> getMessage({required String threadId, required String messageId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/messages/${Uri.encodeComponent(messageId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MessageObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Modifies a message.
///
/// `POST /threads/{thread_id}/messages/{message_id}`
Future<ApiResult<MessageObject, Never>> modifyMessage({required String threadId, required String messageId, required ModifyMessageRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/messages/${Uri.encodeComponent(messageId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return MessageObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a message.
///
/// `DELETE /threads/{thread_id}/messages/{message_id}`
Future<ApiResult<DeleteMessageResponse, Never>> deleteMessage({required String threadId, required String messageId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/threads/${Uri.encodeComponent(threadId)}/messages/${Uri.encodeComponent(messageId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteMessageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Returns a list of runs belonging to a thread.
///
/// `GET /threads/{thread_id}/runs`
Future<ApiResult<ListRunsResponse, Never>> listRuns({required String threadId, int? limit, ListRunsOrder? order, String? after, String? before, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (after != null) {
  queryParameters['after'] = after;
}
if (before != null) {
  queryParameters['before'] = before;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListRunsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a run.
///
/// `POST /threads/{thread_id}/runs`
Future<ApiResult<RunObject, Never>> createRun({required String threadId, List<CreateRunInclude>? include, required CreateRunRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include[]', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieves a run.
///
/// `GET /threads/{thread_id}/runs/{run_id}`
Future<ApiResult<RunObject, Never>> getRun({required String threadId, required String runId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Modifies a run.
///
/// `POST /threads/{thread_id}/runs/{run_id}`
Future<ApiResult<RunObject, Never>> modifyRun({required String threadId, required String runId, required ModifyRunRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Cancels a run that is `in_progress`.
///
/// `POST /threads/{thread_id}/runs/{run_id}/cancel`
Future<ApiResult<RunObject, Never>> cancelRun({required String threadId, required String runId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}/cancel',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Returns a list of run steps belonging to a run.
///
/// `GET /threads/{thread_id}/runs/{run_id}/steps`
Future<ApiResult<ListRunStepsResponse, Never>> listRunSteps({required String threadId, required String runId, int? limit, ListRunStepsOrder? order, String? after, String? before, List<ListRunStepsInclude>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (after != null) {
  queryParameters['after'] = after;
}
if (before != null) {
  queryParameters['before'] = before;
}
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include[]', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}/steps',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListRunStepsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieves a run step.
///
/// `GET /threads/{thread_id}/runs/{run_id}/steps/{step_id}`
Future<ApiResult<RunStepObject, Never>> getRunStep({required String threadId, required String runId, required String stepId, List<GetRunStepInclude>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include[]', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}/steps/${Uri.encodeComponent(stepId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunStepObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// When a run has the `status: "requires_action"` and `required_action.type` is `submit_tool_outputs`, this endpoint can be used to submit the outputs from the tool calls once they're all completed. All outputs must be submitted in a single request.
/// 
///
/// `POST /threads/{thread_id}/runs/{run_id}/submit_tool_outputs`
Future<ApiResult<RunObject, Never>> submitToolOuputsToRun({required String threadId, required String runId, required SubmitToolOutputsRunRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/threads/${Uri.encodeComponent(threadId)}/runs/${Uri.encodeComponent(runId)}/submit_tool_outputs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RunObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
