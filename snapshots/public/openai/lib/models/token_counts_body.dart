// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'conversation_param.dart';import 'conversation_param2.dart';import 'input_item.dart';import 'reasoning.dart';import 'response_text_param.dart';import 'specific_apply_patch_param.dart';import 'specific_function_shell_param.dart';import 'token_counts_body_input.dart';import 'tool.dart';import 'tool_choice_allowed.dart';import 'tool_choice_custom.dart';import 'tool_choice_function.dart';import 'tool_choice_mcp.dart';import 'tool_choice_mode.dart';import 'tool_choice_param.dart';import 'tool_choice_types.dart';@immutable final class TruncationEnum {const TruncationEnum._(this.value);

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
@immutable final class TokenCountsBody {const TokenCountsBody({this.model = const Omittable.absent(), this.input = const Omittable.absent(), this.previousResponseId = const Omittable.absent(), this.tools = const Omittable.absent(), this.text = const Omittable.absent(), this.reasoning = const Omittable.absent(), this.truncation, this.instructions = const Omittable.absent(), this.conversation = const Omittable.absent(), this.toolChoice = const Omittable.absent(), this.parallelToolCalls = const Omittable.absent(), });

factory TokenCountsBody.fromJson(Map<String, dynamic> json) { return TokenCountsBody(
  model: json.containsKey('model') ? Omittable(json['model'] as String?) : const Omittable.absent(),
  input: json.containsKey('input') ? Omittable(json['input'] != null ? OneOf2.parse(json['input'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null) : const Omittable.absent(),
  previousResponseId: json.containsKey('previous_response_id') ? Omittable(json['previous_response_id'] as String?) : const Omittable.absent(),
  tools: json.containsKey('tools') ? Omittable((json['tools'] as List<dynamic>?)?.map((e) => Tool.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  text: json.containsKey('text') ? Omittable(json['text'] != null ? ResponseTextParam.fromJson(json['text'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  reasoning: json.containsKey('reasoning') ? Omittable(json['reasoning'] != null ? Reasoning.fromJson(json['reasoning'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  truncation: json['truncation'] != null ? TruncationEnum.fromJson(json['truncation'] as String) : null,
  instructions: json.containsKey('instructions') ? Omittable(json['instructions'] as String?) : const Omittable.absent(),
  conversation: json.containsKey('conversation') ? Omittable(json['conversation'] != null ? OneOf2.parse(json['conversation'], fromA: (v) => v as String, fromB: (v) => ConversationParam2.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  toolChoice: json.containsKey('tool_choice') ? Omittable(json['tool_choice'] != null ? OneOf8.parse(json['tool_choice'], fromA: (v) => ToolChoiceMode.fromJson(v as String), fromB: (v) => ToolChoiceAllowed.fromJson(v as Map<String, dynamic>), fromC: (v) => ToolChoiceTypes.fromJson(v as Map<String, dynamic>), fromD: (v) => ToolChoiceFunction.fromJson(v as Map<String, dynamic>), fromE: (v) => ToolChoiceMcp.fromJson(v as Map<String, dynamic>), fromF: (v) => ToolChoiceCustom.fromJson(v as Map<String, dynamic>), fromG: (v) => SpecificApplyPatchParam.fromJson(v as Map<String, dynamic>), fromH: (v) => SpecificFunctionShellParam.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  parallelToolCalls: json.containsKey('parallel_tool_calls') ? Omittable(json['parallel_tool_calls'] as bool?) : const Omittable.absent(),
); }

/// Model ID used to generate the response, like `gpt-4o` or `o3`. OpenAI offers a wide range of models with different capabilities, performance characteristics, and price points. Refer to the [model guide](/docs/models) to browse and compare available models.
final Omittable<String?> model;

/// Text, image, or file inputs to the model, used to generate a response
final Omittable<TokenCountsBodyInput?> input;

/// The unique ID of the previous response to the model. Use this to create multi-turn conversations. Learn more about [conversation state](/docs/guides/conversation-state). Cannot be used in conjunction with `conversation`.
final Omittable<String?> previousResponseId;

/// An array of tools the model may call while generating a response. You can specify which tool to use by setting the `tool_choice` parameter.
final Omittable<List<Tool>?> tools;

final Omittable<ResponseTextParam?> text;

/// **gpt-5 and o-series models only** Configuration options for [reasoning models](https://platform.openai.com/docs/guides/reasoning).
final Omittable<Reasoning?> reasoning;

/// The truncation strategy to use for the model response. - `auto`: If the input to this Response exceeds the model's context window size, the model will truncate the response to fit the context window by dropping items from the beginning of the conversation. - `disabled` (default): If the input size will exceed the context window size for a model, the request will fail with a 400 error.
final TruncationEnum? truncation;

/// A system (or developer) message inserted into the model's context.
/// When used along with `previous_response_id`, the instructions from a previous response will not be carried over to the next response. This makes it simple to swap out system (or developer) messages in new responses.
final Omittable<String?> instructions;

final Omittable<ConversationParam?> conversation;

/// Controls which tool the model should use, if any.
final Omittable<ToolChoiceParam?> toolChoice;

/// Whether to allow the model to run tool calls in parallel.
final Omittable<bool?> parallelToolCalls;

Map<String, dynamic> toJson() { return {
  if (model.isPresent) 'model': model.value,
  if (input.isPresent) 'input': input.value?.toJson(),
  if (previousResponseId.isPresent) 'previous_response_id': previousResponseId.value,
  if (tools.isPresent) 'tools': tools.value?.map((e) => e.toJson()).toList(),
  if (text.isPresent) 'text': text.value?.toJson(),
  if (reasoning.isPresent) 'reasoning': reasoning.value?.toJson(),
  if (truncation != null) 'truncation': truncation?.toJson(),
  if (instructions.isPresent) 'instructions': instructions.value,
  if (conversation.isPresent) 'conversation': conversation.value?.toJson(),
  if (toolChoice.isPresent) 'tool_choice': toolChoice.value?.toJson(),
  if (parallelToolCalls.isPresent) 'parallel_tool_calls': parallelToolCalls.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'model', 'input', 'previous_response_id', 'tools', 'text', 'reasoning', 'truncation', 'instructions', 'conversation', 'tool_choice', 'parallel_tool_calls'}.contains(key)); } 
TokenCountsBody copyWith({Omittable<String?>? model, Omittable<TokenCountsBodyInput?>? input, Omittable<String?>? previousResponseId, Omittable<List<Tool>?>? tools, Omittable<ResponseTextParam?>? text, Omittable<Reasoning?>? reasoning, TruncationEnum? Function()? truncation, Omittable<String?>? instructions, Omittable<ConversationParam?>? conversation, Omittable<ToolChoiceParam?>? toolChoice, Omittable<bool?>? parallelToolCalls, }) { return TokenCountsBody(
  model: model ?? this.model,
  input: input ?? this.input,
  previousResponseId: previousResponseId ?? this.previousResponseId,
  tools: tools ?? this.tools,
  text: text ?? this.text,
  reasoning: reasoning ?? this.reasoning,
  truncation: truncation != null ? truncation() : this.truncation,
  instructions: instructions ?? this.instructions,
  conversation: conversation ?? this.conversation,
  toolChoice: toolChoice ?? this.toolChoice,
  parallelToolCalls: parallelToolCalls ?? this.parallelToolCalls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenCountsBody &&
          model == other.model &&
          input == other.input &&
          previousResponseId == other.previousResponseId &&
          tools.isPresent == other.tools.isPresent &&
          listEquals(tools.value, other.tools.value) &&
          text == other.text &&
          reasoning == other.reasoning &&
          truncation == other.truncation &&
          instructions == other.instructions &&
          conversation == other.conversation &&
          toolChoice == other.toolChoice &&
          parallelToolCalls == other.parallelToolCalls; } 
@override int get hashCode { return Object.hash(model, input, previousResponseId, Object.hashAll(tools.value ?? const []), text, reasoning, truncation, instructions, conversation, toolChoice, parallelToolCalls); } 
@override String toString() { return 'TokenCountsBody(model: $model, input: $input, previousResponseId: $previousResponseId, tools: $tools, text: $text, reasoning: $reasoning, truncation: $truncation, instructions: $instructions, conversation: $conversation, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls)'; } 
 }
