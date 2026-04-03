// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'context_management_param.dart';import 'conversation_param.dart';import 'conversation_param2.dart';import 'include_enum.dart';import 'input_item.dart';import 'input_param.dart';import 'response_stream_options.dart';@immutable final class CreateResponse {const CreateResponse({this.input, this.include, this.parallelToolCalls, this.store, this.instructions, this.stream, this.streamOptions, this.conversation, this.contextManagement, });

factory CreateResponse.fromJson(Map<String, dynamic> json) { return CreateResponse(
  input: json['input'] != null ? OneOf2.parse(json['input'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => IncludeEnum.fromJson(e as String)).toList(),
  parallelToolCalls: json['parallel_tool_calls'] as bool?,
  store: json['store'] as bool?,
  instructions: json['instructions'] as String?,
  stream: json['stream'] as bool?,
  streamOptions: json['stream_options'] != null ? ResponseStreamOptions.fromJson(json['stream_options'] as Map<String, dynamic>) : null,
  conversation: json['conversation'] != null ? OneOf2.parse(json['conversation'], fromA: (v) => v as String, fromB: (v) => ConversationParam2.fromJson(v as Map<String, dynamic>),) : null,
  contextManagement: (json['context_management'] as List<dynamic>?)?.map((e) => ContextManagementParam.fromJson(e as Map<String, dynamic>)).toList(),
); }

final InputParam? input;

/// Specify additional output data to include in the model response. Currently supported values are:
/// - `web_search_call.action.sources`: Include the sources of the web search tool call.
/// - `code_interpreter_call.outputs`: Includes the outputs of python code execution in code interpreter tool call items.
/// - `computer_call_output.output.image_url`: Include image urls from the computer call output.
/// - `file_search_call.results`: Include the search results of the file search tool call.
/// - `message.input_image.image_url`: Include image urls from the input message.
/// - `message.output_text.logprobs`: Include logprobs with assistant messages.
/// - `reasoning.encrypted_content`: Includes an encrypted version of reasoning tokens in reasoning item outputs. This enables reasoning items to be used in multi-turn conversations when using the Responses API statelessly (like when the `store` parameter is set to `false`, or when an organization is enrolled in the zero data retention program).
final List<IncludeEnum>? include;

/// Whether to allow the model to run tool calls in parallel.
/// 
final bool? parallelToolCalls;

/// Whether to store the generated model response for later retrieval via
/// API.
/// 
final bool? store;

/// A system (or developer) message inserted into the model's context.
/// 
/// When using along with `previous_response_id`, the instructions from a previous
/// response will not be carried over to the next response. This makes it simple
/// to swap out system (or developer) messages in new responses.
/// 
final String? instructions;

/// If set to true, the model response data will be streamed to the client
/// as it is generated using [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format).
/// See the [Streaming section below](/docs/api-reference/responses-streaming)
/// for more information.
/// 
final bool? stream;

final ResponseStreamOptions? streamOptions;

final ConversationParam? conversation;

/// Context management configuration for this request.
/// 
final List<ContextManagementParam>? contextManagement;

Map<String, dynamic> toJson() { return {
  if (input != null) 'input': input?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  'parallel_tool_calls': ?parallelToolCalls,
  'store': ?store,
  'instructions': ?instructions,
  'stream': ?stream,
  if (streamOptions != null) 'stream_options': streamOptions?.toJson(),
  if (conversation != null) 'conversation': conversation?.toJson(),
  if (contextManagement != null) 'context_management': contextManagement?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'input', 'include', 'parallel_tool_calls', 'store', 'instructions', 'stream', 'stream_options', 'conversation', 'context_management'}.contains(key)); } 
CreateResponse copyWith({InputParam Function()? input, List<IncludeEnum>? Function()? include, bool? Function()? parallelToolCalls, bool? Function()? store, String? Function()? instructions, bool? Function()? stream, ResponseStreamOptions Function()? streamOptions, ConversationParam? Function()? conversation, List<ContextManagementParam>? Function()? contextManagement, }) { return CreateResponse(
  input: input != null ? input() : this.input,
  include: include != null ? include() : this.include,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  store: store != null ? store() : this.store,
  instructions: instructions != null ? instructions() : this.instructions,
  stream: stream != null ? stream() : this.stream,
  streamOptions: streamOptions != null ? streamOptions() : this.streamOptions,
  conversation: conversation != null ? conversation() : this.conversation,
  contextManagement: contextManagement != null ? contextManagement() : this.contextManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateResponse &&
          input == other.input &&
          listEquals(include, other.include) &&
          parallelToolCalls == other.parallelToolCalls &&
          store == other.store &&
          instructions == other.instructions &&
          stream == other.stream &&
          streamOptions == other.streamOptions &&
          conversation == other.conversation &&
          listEquals(contextManagement, other.contextManagement); } 
@override int get hashCode { return Object.hash(input, Object.hashAll(include ?? const []), parallelToolCalls, store, instructions, stream, streamOptions, conversation, Object.hashAll(contextManagement ?? const [])); } 
@override String toString() { return 'CreateResponse(input: $input, include: $include, parallelToolCalls: $parallelToolCalls, store: $store, instructions: $instructions, stream: $stream, streamOptions: $streamOptions, conversation: $conversation, contextManagement: $contextManagement)'; } 
 }
