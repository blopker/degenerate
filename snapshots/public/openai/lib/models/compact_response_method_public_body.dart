// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'compact_response_method_public_body_input.dart';import 'input_item.dart';import 'model_ids_compaction.dart';import 'model_ids_responses.dart';import 'model_ids_shared.dart';@immutable final class CompactResponseMethodPublicBody {const CompactResponseMethodPublicBody({required this.model, this.input = const Omittable.absent(), this.previousResponseId = const Omittable.absent(), this.instructions = const Omittable.absent(), this.promptCacheKey = const Omittable.absent(), });

factory CompactResponseMethodPublicBody.fromJson(Map<String, dynamic> json) { return CompactResponseMethodPublicBody(
  model: OneOf3.parse(json['model'], fromA: (v) => OneOf2.parse(v, fromA: (v) => OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => ModelIdsSharedVariant2.fromJson(v as String),), fromB: (v) => ResponsesOnlyModel.fromJson(v as String),), fromB: (v) => v as String, fromC: (v) => v,),
  input: json.containsKey('input') ? Omittable(json['input'] != null ? OneOf2.parse(json['input'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null) : const Omittable.absent(),
  previousResponseId: json.containsKey('previous_response_id') ? Omittable(json['previous_response_id'] as String?) : const Omittable.absent(),
  instructions: json.containsKey('instructions') ? Omittable(json['instructions'] as String?) : const Omittable.absent(),
  promptCacheKey: json.containsKey('prompt_cache_key') ? Omittable(json['prompt_cache_key'] as String?) : const Omittable.absent(),
); }

final ModelIdsCompaction model;

/// Text, image, or file inputs to the model, used to generate a response
final Omittable<CompactResponseMethodPublicBodyInput?> input;

/// The unique ID of the previous response to the model. Use this to create multi-turn conversations. Learn more about [conversation state](/docs/guides/conversation-state). Cannot be used in conjunction with `conversation`.
final Omittable<String?> previousResponseId;

/// A system (or developer) message inserted into the model's context.
/// When used along with `previous_response_id`, the instructions from a previous response will not be carried over to the next response. This makes it simple to swap out system (or developer) messages in new responses.
final Omittable<String?> instructions;

/// A key to use when reading from or writing to the prompt cache.
final Omittable<String?> promptCacheKey;

Map<String, dynamic> toJson() { return {
  'model': model.toJson(),
  if (input.isPresent) 'input': input.value?.toJson(),
  if (previousResponseId.isPresent) 'previous_response_id': previousResponseId.value,
  if (instructions.isPresent) 'instructions': instructions.value,
  if (promptCacheKey.isPresent) 'prompt_cache_key': promptCacheKey.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('model'); } 
CompactResponseMethodPublicBody copyWith({ModelIdsCompaction? model, Omittable<CompactResponseMethodPublicBodyInput?>? input, Omittable<String?>? previousResponseId, Omittable<String?>? instructions, Omittable<String?>? promptCacheKey, }) { return CompactResponseMethodPublicBody(
  model: model ?? this.model,
  input: input ?? this.input,
  previousResponseId: previousResponseId ?? this.previousResponseId,
  instructions: instructions ?? this.instructions,
  promptCacheKey: promptCacheKey ?? this.promptCacheKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CompactResponseMethodPublicBody &&
          model == other.model &&
          input == other.input &&
          previousResponseId == other.previousResponseId &&
          instructions == other.instructions &&
          promptCacheKey == other.promptCacheKey; } 
@override int get hashCode { return Object.hash(model, input, previousResponseId, instructions, promptCacheKey); } 
@override String toString() { return 'CompactResponseMethodPublicBody(model: $model, input: $input, previousResponseId: $previousResponseId, instructions: $instructions, promptCacheKey: $promptCacheKey)'; } 
 }
