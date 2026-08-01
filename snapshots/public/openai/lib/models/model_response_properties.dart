// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'service_tier.dart';/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
@immutable final class ModelResponsePropertiesPromptCacheRetention {const ModelResponsePropertiesPromptCacheRetention._(this.value);

factory ModelResponsePropertiesPromptCacheRetention.fromJson(String json) { return switch (json) {
  'in-memory' => inMemory,
  '24h' => $24h,
  _ => ModelResponsePropertiesPromptCacheRetention._(json),
}; }

static const ModelResponsePropertiesPromptCacheRetention inMemory = ModelResponsePropertiesPromptCacheRetention._('in-memory');

static const ModelResponsePropertiesPromptCacheRetention $24h = ModelResponsePropertiesPromptCacheRetention._('24h');

static const List<ModelResponsePropertiesPromptCacheRetention> values = [inMemory, $24h];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ModelResponsePropertiesPromptCacheRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ModelResponsePropertiesPromptCacheRetention($value)'; } 
 }
@immutable final class ModelResponseProperties {const ModelResponseProperties({this.metadata = const Omittable.absent(), this.topLogprobs = const Omittable.absent(), this.temperature = const Omittable.absent(), this.topP = const Omittable.absent(), this.user, this.safetyIdentifier, this.promptCacheKey, this.serviceTier = const Omittable.absent(), this.promptCacheRetention = const Omittable.absent(), });

factory ModelResponseProperties.fromJson(Map<String, dynamic> json) { return ModelResponseProperties(
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  topLogprobs: json.containsKey('top_logprobs') ? Omittable(json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null) : const Omittable.absent(),
  temperature: json.containsKey('temperature') ? Omittable(json['temperature'] != null ? (json['temperature'] as num).toDouble() : null) : const Omittable.absent(),
  topP: json.containsKey('top_p') ? Omittable(json['top_p'] != null ? (json['top_p'] as num).toDouble() : null) : const Omittable.absent(),
  user: json['user'] as String?,
  safetyIdentifier: json['safety_identifier'] as String?,
  promptCacheKey: json['prompt_cache_key'] as String?,
  serviceTier: json.containsKey('service_tier') ? Omittable(json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null) : const Omittable.absent(),
  promptCacheRetention: json.containsKey('prompt_cache_retention') ? Omittable(json['prompt_cache_retention'] != null ? ModelResponsePropertiesPromptCacheRetention.fromJson(json['prompt_cache_retention'] as String) : null) : const Omittable.absent(),
); }

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Omittable<Map<String,String>?> metadata;

/// An integer between 0 and 20 specifying the number of most likely tokens to
/// return at each token position, each with an associated log probability.
/// 
final Omittable<int?> topLogprobs;

/// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
/// We generally recommend altering this or `top_p` but not both.
/// 
final Omittable<double?> temperature;

/// An alternative to sampling with temperature, called nucleus sampling,
/// where the model considers the results of the tokens with top_p probability
/// mass. So 0.1 means only the tokens comprising the top 10% probability mass
/// are considered.
/// 
/// We generally recommend altering this or `temperature` but not both.
/// 
final Omittable<double?> topP;

/// This field is being replaced by `safety_identifier` and `prompt_cache_key`. Use `prompt_cache_key` instead to maintain caching optimizations.
/// A stable identifier for your end-users.
/// Used to boost cache hit rates by better bucketing similar requests and  to help OpenAI detect and prevent abuse. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? user;

/// A stable identifier used to help detect users of your application that may be violating OpenAI's usage policies.
/// The IDs should be a string that uniquely identifies each user, with a maximum length of 64 characters. We recommend hashing their username or email address, in order to avoid sending us any identifying information. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? safetyIdentifier;

/// Used by OpenAI to cache responses for similar requests to optimize your cache hit rates. Replaces the `user` field. [Learn more](/docs/guides/prompt-caching).
/// 
final String? promptCacheKey;

final Omittable<ServiceTier?> serviceTier;

/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
final Omittable<ModelResponsePropertiesPromptCacheRetention?> promptCacheRetention;

Map<String, dynamic> toJson() { return {
  if (metadata.isPresent) 'metadata': metadata.value,
  if (topLogprobs.isPresent) 'top_logprobs': topLogprobs.value,
  if (temperature.isPresent) 'temperature': temperature.value,
  if (topP.isPresent) 'top_p': topP.value,
  'user': ?user,
  'safety_identifier': ?safetyIdentifier,
  'prompt_cache_key': ?promptCacheKey,
  if (serviceTier.isPresent) 'service_tier': serviceTier.value?.toJson(),
  if (promptCacheRetention.isPresent) 'prompt_cache_retention': promptCacheRetention.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'metadata', 'top_logprobs', 'temperature', 'top_p', 'user', 'safety_identifier', 'prompt_cache_key', 'service_tier', 'prompt_cache_retention'}.contains(key)); } 
ModelResponseProperties copyWith({Omittable<Map<String,String>?>? metadata, Omittable<int?>? topLogprobs, Omittable<double?>? temperature, Omittable<double?>? topP, String? Function()? user, String? Function()? safetyIdentifier, String? Function()? promptCacheKey, Omittable<ServiceTier?>? serviceTier, Omittable<ModelResponsePropertiesPromptCacheRetention?>? promptCacheRetention, }) { return ModelResponseProperties(
  metadata: metadata ?? this.metadata,
  topLogprobs: topLogprobs ?? this.topLogprobs,
  temperature: temperature ?? this.temperature,
  topP: topP ?? this.topP,
  user: user != null ? user() : this.user,
  safetyIdentifier: safetyIdentifier != null ? safetyIdentifier() : this.safetyIdentifier,
  promptCacheKey: promptCacheKey != null ? promptCacheKey() : this.promptCacheKey,
  serviceTier: serviceTier ?? this.serviceTier,
  promptCacheRetention: promptCacheRetention ?? this.promptCacheRetention,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModelResponseProperties &&
          metadata == other.metadata &&
          topLogprobs == other.topLogprobs &&
          temperature == other.temperature &&
          topP == other.topP &&
          user == other.user &&
          safetyIdentifier == other.safetyIdentifier &&
          promptCacheKey == other.promptCacheKey &&
          serviceTier == other.serviceTier &&
          promptCacheRetention == other.promptCacheRetention; } 
@override int get hashCode { return Object.hash(metadata, topLogprobs, temperature, topP, user, safetyIdentifier, promptCacheKey, serviceTier, promptCacheRetention); } 
@override String toString() { return 'ModelResponseProperties(metadata: $metadata, topLogprobs: $topLogprobs, temperature: $temperature, topP: $topP, user: $user, safetyIdentifier: $safetyIdentifier, promptCacheKey: $promptCacheKey, serviceTier: $serviceTier, promptCacheRetention: $promptCacheRetention)'; } 
 }
