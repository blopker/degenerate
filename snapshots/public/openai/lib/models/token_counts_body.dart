// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'conversation_param.dart';import 'conversation_param2.dart';import 'input_item.dart';import 'reasoning.dart';import 'response_text_param.dart';import 'specific_apply_patch_param.dart';import 'specific_function_shell_param.dart';import 'token_counts_body_input.dart';import 'tool.dart';import 'tool_choice_allowed.dart';import 'tool_choice_custom.dart';import 'tool_choice_function.dart';import 'tool_choice_mcp.dart';import 'tool_choice_mode.dart';import 'tool_choice_param.dart';import 'tool_choice_types.dart';final class TruncationEnum {const TruncationEnum._(this.value);

factory TruncationEnum.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'disabled' => disabled,
  _ => TruncationEnum._(json),
}; }

static const TruncationEnum auto = TruncationEnum._('auto');

static const TruncationEnum disabled = TruncationEnum._('disabled');

static const List<TruncationEnum> values = [auto, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TruncationEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TruncationEnum($value)'; } 
 }
final class TokenCountsBody {const TokenCountsBody({this.model, this.input, this.previousResponseId, this.tools, this.text, this.reasoning, this.truncation, this.instructions, this.conversation, this.toolChoice, this.parallelToolCalls, });

factory TokenCountsBody.fromJson(Map<String, dynamic> json) { return TokenCountsBody(
  model: json['model'] as String?,
  input: json['input'] != null ? OneOf2.parse(json['input'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  previousResponseId: json['previous_response_id'] as String?,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => Tool.fromJson(e as Map<String, dynamic>)).toList(),
  text: json['text'] != null ? ResponseTextParam.fromJson(json['text'] as Map<String, dynamic>) : null,
  reasoning: json['reasoning'] != null ? Reasoning.fromJson(json['reasoning'] as Map<String, dynamic>) : null,
  truncation: json['truncation'] != null ? TruncationEnum.fromJson(json['truncation'] as String) : null,
  instructions: json['instructions'] as String?,
  conversation: json['conversation'] != null ? OneOf2.parse(json['conversation'], fromA: (v) => v as String, fromB: (v) => ConversationParam2.fromJson(v as Map<String, dynamic>),) : null,
  toolChoice: json['tool_choice'] != null ? OneOf8.parse(json['tool_choice'], fromA: (v) => ToolChoiceMode.fromJson(v as String), fromB: (v) => ToolChoiceAllowed.fromJson(v as Map<String, dynamic>), fromC: (v) => ToolChoiceTypes.fromJson(v as Map<String, dynamic>), fromD: (v) => ToolChoiceFunction.fromJson(v as Map<String, dynamic>), fromE: (v) => ToolChoiceMcp.fromJson(v as Map<String, dynamic>), fromF: (v) => ToolChoiceCustom.fromJson(v as Map<String, dynamic>), fromG: (v) => SpecificApplyPatchParam.fromJson(v as Map<String, dynamic>), fromH: (v) => SpecificFunctionShellParam.fromJson(v as Map<String, dynamic>),) : null,
  parallelToolCalls: json['parallel_tool_calls'] as bool?,
); }

/// Model ID used to generate the response, like `gpt-4o` or `o3`. OpenAI offers a wide range of models with different capabilities, performance characteristics, and price points. Refer to the [model guide](/docs/models) to browse and compare available models.
final String? model;

/// Text, image, or file inputs to the model, used to generate a response
final TokenCountsBodyInput? input;

/// The unique ID of the previous response to the model. Use this to create multi-turn conversations. Learn more about [conversation state](/docs/guides/conversation-state). Cannot be used in conjunction with `conversation`.
final String? previousResponseId;

/// An array of tools the model may call while generating a response. You can specify which tool to use by setting the `tool_choice` parameter.
final List<Tool>? tools;

final ResponseTextParam? text;

/// **gpt-5 and o-series models only** Configuration options for [reasoning models](https://platform.openai.com/docs/guides/reasoning).
final Reasoning? reasoning;

/// The truncation strategy to use for the model response. - `auto`: If the input to this Response exceeds the model's context window size, the model will truncate the response to fit the context window by dropping items from the beginning of the conversation. - `disabled` (default): If the input size will exceed the context window size for a model, the request will fail with a 400 error.
final TruncationEnum? truncation;

/// A system (or developer) message inserted into the model's context.
/// When used along with `previous_response_id`, the instructions from a previous response will not be carried over to the next response. This makes it simple to swap out system (or developer) messages in new responses.
final String? instructions;

final ConversationParam? conversation;

/// Controls which tool the model should use, if any.
final ToolChoiceParam? toolChoice;

/// Whether to allow the model to run tool calls in parallel.
final bool? parallelToolCalls;

Map<String, dynamic> toJson() { return {
  'model': ?model,
  if (input != null) 'input': input?.toJson(),
  'previous_response_id': ?previousResponseId,
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  if (text != null) 'text': text?.toJson(),
  if (reasoning != null) 'reasoning': reasoning?.toJson(),
  if (truncation != null) 'truncation': truncation?.toJson(),
  'instructions': ?instructions,
  if (conversation != null) 'conversation': conversation?.toJson(),
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  'parallel_tool_calls': ?parallelToolCalls,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TokenCountsBody copyWith({String? Function()? model, TokenCountsBodyInput? Function()? input, String? Function()? previousResponseId, List<Tool>? Function()? tools, ResponseTextParam? Function()? text, Reasoning? Function()? reasoning, TruncationEnum Function()? truncation, String? Function()? instructions, ConversationParam? Function()? conversation, ToolChoiceParam? Function()? toolChoice, bool? Function()? parallelToolCalls, }) { return TokenCountsBody(
  model: model != null ? model() : this.model,
  input: input != null ? input() : this.input,
  previousResponseId: previousResponseId != null ? previousResponseId() : this.previousResponseId,
  tools: tools != null ? tools() : this.tools,
  text: text != null ? text() : this.text,
  reasoning: reasoning != null ? reasoning() : this.reasoning,
  truncation: truncation != null ? truncation() : this.truncation,
  instructions: instructions != null ? instructions() : this.instructions,
  conversation: conversation != null ? conversation() : this.conversation,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenCountsBody &&
          model == other.model &&
          input == other.input &&
          previousResponseId == other.previousResponseId &&
          listEquals(tools, other.tools) &&
          text == other.text &&
          reasoning == other.reasoning &&
          truncation == other.truncation &&
          instructions == other.instructions &&
          conversation == other.conversation &&
          toolChoice == other.toolChoice &&
          parallelToolCalls == other.parallelToolCalls; } 
@override int get hashCode { return Object.hash(model, input, previousResponseId, Object.hashAll(tools ?? const []), text, reasoning, truncation, instructions, conversation, toolChoice, parallelToolCalls); } 
@override String toString() { return 'TokenCountsBody(model: $model, input: $input, previousResponseId: $previousResponseId, tools: $tools, text: $text, reasoning: $reasoning, truncation: $truncation, instructions: $instructions, conversation: $conversation, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls)'; } 
 }
