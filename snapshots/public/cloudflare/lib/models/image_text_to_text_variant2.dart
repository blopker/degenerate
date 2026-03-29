// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_text_to_text_variant2_messages.dart';final class ImageTextToTextVariant2 {const ImageTextToTextVariant2({this.frequencyPenalty, this.ignoreEos, required this.image, this.maxTokens = 512, required this.messages, this.presencePenalty, this.repetitionPenalty, this.seed, this.temperature, this.topK, this.topP, });

factory ImageTextToTextVariant2.fromJson(Map<String, dynamic> json) { return ImageTextToTextVariant2(
  frequencyPenalty: json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null,
  ignoreEos: json['ignore_eos'] as bool?,
  image: json['image'] as String,
  maxTokens: json.containsKey('max_tokens') ? (json['max_tokens'] as num).toInt() : 512,
  messages: (json['messages'] as List<dynamic>).map((e) => ImageTextToTextVariant2Messages.fromJson(e as Map<String, dynamic>)).toList(),
  presencePenalty: json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null,
  repetitionPenalty: json['repetition_penalty'] != null ? (json['repetition_penalty'] as num).toDouble() : null,
  seed: json['seed'] != null ? (json['seed'] as num).toDouble() : null,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topK: json['top_k'] != null ? (json['top_k'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
); }

/// Decreases the likelihood of the model repeating the same lines verbatim.
final double? frequencyPenalty;

/// Whether to ignore the EOS token and continue generating tokens after the EOS token is generated.
final bool? ignoreEos;

/// Image in base64 encoded format.
final String image;

/// The maximum number of tokens to generate in the response.
final int maxTokens;

/// An array of message objects representing the conversation history.
final List<ImageTextToTextVariant2Messages> messages;

/// Increases the likelihood of the model introducing new topics.
final double? presencePenalty;

/// Penalty for repeated tokens; higher values discourage repetition.
final double? repetitionPenalty;

/// Random seed for reproducibility of the generation.
final double? seed;

/// Controls the randomness of the output; higher values produce more random results.
final double? temperature;

/// Limits the AI to choose from the top 'k' most probable words. Lower values make responses more focused; higher values introduce more variety and potential surprises.
final double? topK;

/// Controls the creativity of the AI's responses by adjusting how many possible words it considers. Lower values make outputs more predictable; higher values allow for more varied and creative responses.
final double? topP;

Map<String, dynamic> toJson() { return {
  'frequency_penalty': ?frequencyPenalty,
  'ignore_eos': ?ignoreEos,
  'image': image,
  'max_tokens': maxTokens,
  'messages': messages.map((e) => e.toJson()).toList(),
  'presence_penalty': ?presencePenalty,
  'repetition_penalty': ?repetitionPenalty,
  'seed': ?seed,
  'temperature': ?temperature,
  'top_k': ?topK,
  'top_p': ?topP,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('image') && json['image'] is String &&
      json.containsKey('messages'); } 
ImageTextToTextVariant2 copyWith({double Function()? frequencyPenalty, bool Function()? ignoreEos, String? image, int Function()? maxTokens, List<ImageTextToTextVariant2Messages>? messages, double Function()? presencePenalty, double Function()? repetitionPenalty, double Function()? seed, double Function()? temperature, double Function()? topK, double Function()? topP, }) { return ImageTextToTextVariant2(
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  ignoreEos: ignoreEos != null ? ignoreEos() : this.ignoreEos,
  image: image ?? this.image,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  messages: messages ?? this.messages,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  repetitionPenalty: repetitionPenalty != null ? repetitionPenalty() : this.repetitionPenalty,
  seed: seed != null ? seed() : this.seed,
  temperature: temperature != null ? temperature() : this.temperature,
  topK: topK != null ? topK() : this.topK,
  topP: topP != null ? topP() : this.topP,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageTextToTextVariant2 &&
          frequencyPenalty == other.frequencyPenalty &&
          ignoreEos == other.ignoreEos &&
          image == other.image &&
          maxTokens == other.maxTokens &&
          listEquals(messages, other.messages) &&
          presencePenalty == other.presencePenalty &&
          repetitionPenalty == other.repetitionPenalty &&
          seed == other.seed &&
          temperature == other.temperature &&
          topK == other.topK &&
          topP == other.topP; } 
@override int get hashCode { return Object.hash(frequencyPenalty, ignoreEos, image, maxTokens, Object.hashAll(messages), presencePenalty, repetitionPenalty, seed, temperature, topK, topP); } 
@override String toString() { return 'ImageTextToTextVariant2(frequencyPenalty: $frequencyPenalty, ignoreEos: $ignoreEos, image: $image, maxTokens: $maxTokens, messages: $messages, presencePenalty: $presencePenalty, repetitionPenalty: $repetitionPenalty, seed: $seed, temperature: $temperature, topK: $topK, topP: $topP)'; } 
 }
