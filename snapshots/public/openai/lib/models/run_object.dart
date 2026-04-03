// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_tools_code.dart';import 'assistant_tools_file_search.dart';import 'assistant_tools_function.dart';import 'assistants_named_tool_choice.dart';import 'parallel_tool_calls.dart';import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_option.dart';import 'response_format_text.dart';import 'run_completion_usage.dart';import 'run_object_incomplete_details.dart';import 'run_object_last_error.dart';import 'run_object_required_action.dart';import 'run_object_tools.dart';import 'tool_choice_option.dart';import 'truncation_object.dart';/// The object type, which is always `thread.run`.
@immutable final class RunObjectObject {const RunObjectObject._(this.value);

factory RunObjectObject.fromJson(String json) { return switch (json) {
  'thread.run' => threadRun,
  _ => RunObjectObject._(json),
}; }

static const RunObjectObject threadRun = RunObjectObject._('thread.run');

static const List<RunObjectObject> values = [threadRun];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunObjectObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunObjectObject($value)'; } 
 }
/// The status of the run, which can be either `queued`, `in_progress`, `requires_action`, `cancelling`, `cancelled`, `failed`, `completed`, `incomplete`, or `expired`.
@immutable final class RunObjectStatus {const RunObjectStatus._(this.value);

factory RunObjectStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'in_progress' => inProgress,
  'requires_action' => requiresAction,
  'cancelling' => cancelling,
  'cancelled' => cancelled,
  'failed' => failed,
  'completed' => completed,
  'incomplete' => incomplete,
  'expired' => expired,
  _ => RunObjectStatus._(json),
}; }

static const RunObjectStatus queued = RunObjectStatus._('queued');

static const RunObjectStatus inProgress = RunObjectStatus._('in_progress');

static const RunObjectStatus requiresAction = RunObjectStatus._('requires_action');

static const RunObjectStatus cancelling = RunObjectStatus._('cancelling');

static const RunObjectStatus cancelled = RunObjectStatus._('cancelled');

static const RunObjectStatus failed = RunObjectStatus._('failed');

static const RunObjectStatus completed = RunObjectStatus._('completed');

static const RunObjectStatus incomplete = RunObjectStatus._('incomplete');

static const RunObjectStatus expired = RunObjectStatus._('expired');

static const List<RunObjectStatus> values = [queued, inProgress, requiresAction, cancelling, cancelled, failed, completed, incomplete, expired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunObjectStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunObjectStatus($value)'; } 
 }
/// Represents an execution run on a [thread](/docs/api-reference/threads).
@immutable final class RunObject {const RunObject({required this.id, required this.object, required this.createdAt, required this.threadId, required this.assistantId, required this.status, required this.requiredAction, required this.lastError, required this.expiresAt, required this.startedAt, required this.cancelledAt, required this.failedAt, required this.completedAt, required this.incompleteDetails, required this.model, required this.instructions, required this.metadata, required this.usage, required this.maxPromptTokens, required this.maxCompletionTokens, required this.truncationStrategy, required this.toolChoice, required this.parallelToolCalls, required this.responseFormat, this.tools = const [], this.temperature, this.topP, });

factory RunObject.fromJson(Map<String, dynamic> json) { return RunObject(
  id: json['id'] as String,
  object: RunObjectObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  threadId: json['thread_id'] as String,
  assistantId: json['assistant_id'] as String,
  status: RunObjectStatus.fromJson(json['status'] as String),
  requiredAction: json['required_action'] != null ? RunObjectRequiredAction.fromJson(json['required_action'] as Map<String, dynamic>) : null,
  lastError: json['last_error'] != null ? RunObjectLastError.fromJson(json['last_error'] as Map<String, dynamic>) : null,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  startedAt: json['started_at'] != null ? (json['started_at'] as num).toInt() : null,
  cancelledAt: json['cancelled_at'] != null ? (json['cancelled_at'] as num).toInt() : null,
  failedAt: json['failed_at'] != null ? (json['failed_at'] as num).toInt() : null,
  completedAt: json['completed_at'] != null ? (json['completed_at'] as num).toInt() : null,
  incompleteDetails: json['incomplete_details'] != null ? RunObjectIncompleteDetails.fromJson(json['incomplete_details'] as Map<String, dynamic>) : null,
  model: json['model'] as String,
  instructions: json['instructions'] as String,
  tools: (json['tools'] as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => AssistantToolsCode.fromJson(v as Map<String, dynamic>), fromB: (v) => AssistantToolsFileSearch.fromJson(v as Map<String, dynamic>), fromC: (v) => AssistantToolsFunction.fromJson(v as Map<String, dynamic>),)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  usage: RunCompletionUsage.fromJson(json['usage'] as Map<String, dynamic>),
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
  maxPromptTokens: json['max_prompt_tokens'] != null ? (json['max_prompt_tokens'] as num).toInt() : null,
  maxCompletionTokens: json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null,
  truncationStrategy: json['truncation_strategy'] != null ? TruncationObject.fromJson(json['truncation_strategy'] as Map<String, dynamic>) : null,
  toolChoice: json['tool_choice'] != null ? OneOf2.parse(json['tool_choice'], fromA: (v) => ToolChoiceOptionVariant1.fromJson(v as String), fromB: (v) => AssistantsNamedToolChoice.fromJson(v as Map<String, dynamic>),) : null,
  parallelToolCalls: ParallelToolCalls.fromJson(json['parallel_tool_calls'] as bool),
  responseFormat: json['response_format'] != null ? OneOf4.parse(json['response_format'], fromA: (v) => ResponseFormatOptionVariant1.fromJson(v as String), fromB: (v) => ResponseFormatText.fromJson(v as Map<String, dynamic>), fromC: (v) => ResponseFormatJsonObject.fromJson(v as Map<String, dynamic>), fromD: (v) => ResponseFormatJsonSchema.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The identifier, which can be referenced in API endpoints.
final String id;

/// The object type, which is always `thread.run`.
final RunObjectObject object;

/// The Unix timestamp (in seconds) for when the run was created.
final int createdAt;

/// The ID of the [thread](/docs/api-reference/threads) that was executed on as a part of this run.
final String threadId;

/// The ID of the [assistant](/docs/api-reference/assistants) used for execution of this run.
final String assistantId;

/// The status of the run, which can be either `queued`, `in_progress`, `requires_action`, `cancelling`, `cancelled`, `failed`, `completed`, `incomplete`, or `expired`.
final RunObjectStatus status;

/// Details on the action required to continue the run. Will be `null` if no action is required.
final RunObjectRequiredAction? requiredAction;

/// The last error associated with this run. Will be `null` if there are no errors.
final RunObjectLastError? lastError;

/// The Unix timestamp (in seconds) for when the run will expire.
final int? expiresAt;

/// The Unix timestamp (in seconds) for when the run was started.
final int? startedAt;

/// The Unix timestamp (in seconds) for when the run was cancelled.
final int? cancelledAt;

/// The Unix timestamp (in seconds) for when the run failed.
final int? failedAt;

/// The Unix timestamp (in seconds) for when the run was completed.
final int? completedAt;

/// Details on why the run is incomplete. Will be `null` if the run is not incomplete.
final RunObjectIncompleteDetails? incompleteDetails;

/// The model that the [assistant](/docs/api-reference/assistants) used for this run.
final String model;

/// The instructions that the [assistant](/docs/api-reference/assistants) used for this run.
final String instructions;

/// The list of tools that the [assistant](/docs/api-reference/assistants) used for this run.
final List<RunObjectTools> tools;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

final RunCompletionUsage usage;

/// The sampling temperature used for this run. If not set, defaults to 1.
final double? temperature;

/// The nucleus sampling value used for this run. If not set, defaults to 1.
final double? topP;

/// The maximum number of prompt tokens specified to have been used over the course of the run.
/// 
final int? maxPromptTokens;

/// The maximum number of completion tokens specified to have been used over the course of the run.
/// 
final int? maxCompletionTokens;

final TruncationObject? truncationStrategy;

final ToolChoiceOption? toolChoice;

/// Whether to enable [parallel function calling](/docs/guides/function-calling#configuring-parallel-function-calling) during tool use.
final ParallelToolCalls parallelToolCalls;

final ResponseFormatOption? responseFormat;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'thread_id': threadId,
  'assistant_id': assistantId,
  'status': status.toJson(),
  if (requiredAction != null) 'required_action': requiredAction?.toJson(),
  if (lastError != null) 'last_error': lastError?.toJson(),
  'expires_at': ?expiresAt,
  'started_at': ?startedAt,
  'cancelled_at': ?cancelledAt,
  'failed_at': ?failedAt,
  'completed_at': ?completedAt,
  if (incompleteDetails != null) 'incomplete_details': incompleteDetails?.toJson(),
  'model': model,
  'instructions': instructions,
  'tools': tools.map((e) => e.toJson()).toList(),
  'metadata': ?metadata,
  'usage': usage.toJson(),
  'temperature': ?temperature,
  'top_p': ?topP,
  'max_prompt_tokens': ?maxPromptTokens,
  'max_completion_tokens': ?maxCompletionTokens,
  if (truncationStrategy != null) 'truncation_strategy': truncationStrategy?.toJson(),
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  'parallel_tool_calls': parallelToolCalls.toJson(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('thread_id') && json['thread_id'] is String &&
      json.containsKey('assistant_id') && json['assistant_id'] is String &&
      json.containsKey('status') &&
      json.containsKey('required_action') &&
      json.containsKey('last_error') &&
      json.containsKey('expires_at') && json['expires_at'] is num &&
      json.containsKey('started_at') && json['started_at'] is num &&
      json.containsKey('cancelled_at') && json['cancelled_at'] is num &&
      json.containsKey('failed_at') && json['failed_at'] is num &&
      json.containsKey('completed_at') && json['completed_at'] is num &&
      json.containsKey('incomplete_details') &&
      json.containsKey('model') && json['model'] is String &&
      json.containsKey('instructions') && json['instructions'] is String &&
      json.containsKey('tools') &&
      json.containsKey('metadata') &&
      json.containsKey('usage') &&
      json.containsKey('max_prompt_tokens') && json['max_prompt_tokens'] is num &&
      json.containsKey('max_completion_tokens') && json['max_completion_tokens'] is num &&
      json.containsKey('truncation_strategy') &&
      json.containsKey('tool_choice') &&
      json.containsKey('parallel_tool_calls') &&
      json.containsKey('response_format'); } 
RunObject copyWith({String? id, RunObjectObject? object, int? createdAt, String? threadId, String? assistantId, RunObjectStatus? status, RunObjectRequiredAction? Function()? requiredAction, RunObjectLastError? Function()? lastError, int? Function()? expiresAt, int? Function()? startedAt, int? Function()? cancelledAt, int? Function()? failedAt, int? Function()? completedAt, RunObjectIncompleteDetails? Function()? incompleteDetails, String? model, String? instructions, List<RunObjectTools>? tools, Map<String, String>? Function()? metadata, RunCompletionUsage? usage, double? Function()? temperature, double? Function()? topP, int? Function()? maxPromptTokens, int? Function()? maxCompletionTokens, TruncationObject? Function()? truncationStrategy, ToolChoiceOption? Function()? toolChoice, ParallelToolCalls? parallelToolCalls, ResponseFormatOption? Function()? responseFormat, }) { return RunObject(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  threadId: threadId ?? this.threadId,
  assistantId: assistantId ?? this.assistantId,
  status: status ?? this.status,
  requiredAction: requiredAction != null ? requiredAction() : this.requiredAction,
  lastError: lastError != null ? lastError() : this.lastError,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  startedAt: startedAt != null ? startedAt() : this.startedAt,
  cancelledAt: cancelledAt != null ? cancelledAt() : this.cancelledAt,
  failedAt: failedAt != null ? failedAt() : this.failedAt,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  incompleteDetails: incompleteDetails != null ? incompleteDetails() : this.incompleteDetails,
  model: model ?? this.model,
  instructions: instructions ?? this.instructions,
  tools: tools ?? this.tools,
  metadata: metadata != null ? metadata() : this.metadata,
  usage: usage ?? this.usage,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  maxPromptTokens: maxPromptTokens != null ? maxPromptTokens() : this.maxPromptTokens,
  maxCompletionTokens: maxCompletionTokens != null ? maxCompletionTokens() : this.maxCompletionTokens,
  truncationStrategy: truncationStrategy != null ? truncationStrategy() : this.truncationStrategy,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  parallelToolCalls: parallelToolCalls ?? this.parallelToolCalls,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunObject &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          threadId == other.threadId &&
          assistantId == other.assistantId &&
          status == other.status &&
          requiredAction == other.requiredAction &&
          lastError == other.lastError &&
          expiresAt == other.expiresAt &&
          startedAt == other.startedAt &&
          cancelledAt == other.cancelledAt &&
          failedAt == other.failedAt &&
          completedAt == other.completedAt &&
          incompleteDetails == other.incompleteDetails &&
          model == other.model &&
          instructions == other.instructions &&
          listEquals(tools, other.tools) &&
          metadata == other.metadata &&
          usage == other.usage &&
          temperature == other.temperature &&
          topP == other.topP &&
          maxPromptTokens == other.maxPromptTokens &&
          maxCompletionTokens == other.maxCompletionTokens &&
          truncationStrategy == other.truncationStrategy &&
          toolChoice == other.toolChoice &&
          parallelToolCalls == other.parallelToolCalls &&
          responseFormat == other.responseFormat; } 
@override int get hashCode { return Object.hashAll([id, object, createdAt, threadId, assistantId, status, requiredAction, lastError, expiresAt, startedAt, cancelledAt, failedAt, completedAt, incompleteDetails, model, instructions, Object.hashAll(tools), metadata, usage, temperature, topP, maxPromptTokens, maxCompletionTokens, truncationStrategy, toolChoice, parallelToolCalls, responseFormat]); } 
@override String toString() { return 'RunObject(id: $id, object: $object, createdAt: $createdAt, threadId: $threadId, assistantId: $assistantId, status: $status, requiredAction: $requiredAction, lastError: $lastError, expiresAt: $expiresAt, startedAt: $startedAt, cancelledAt: $cancelledAt, failedAt: $failedAt, completedAt: $completedAt, incompleteDetails: $incompleteDetails, model: $model, instructions: $instructions, tools: $tools, metadata: $metadata, usage: $usage, temperature: $temperature, topP: $topP, maxPromptTokens: $maxPromptTokens, maxCompletionTokens: $maxCompletionTokens, truncationStrategy: $truncationStrategy, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls, responseFormat: $responseFormat)'; } 
 }
