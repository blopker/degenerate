// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateInstancesRequestEmbeddingModelVariant1 {const AiSearchCreateInstancesRequestEmbeddingModelVariant1._(this.value);

factory AiSearchCreateInstancesRequestEmbeddingModelVariant1.fromJson(String json) {return switch (json) {
  '@cf/qwen/qwen3-embedding-0.6b' => cfQwenQwen3Embedding06b,
  '@cf/baai/bge-m3' => cfBaaiBgeM3,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  '@cf/google/embeddinggemma-300m' => cfGoogleEmbeddinggemma300m,
  'google-ai-studio/gemini-embedding-001' => googleAiStudioGeminiEmbedding001,
  'openai/text-embedding-3-small' => openaiTextEmbedding3Small,
  'openai/text-embedding-3-large' => openaiTextEmbedding3Large,
  _ => AiSearchCreateInstancesRequestEmbeddingModelVariant1._(json),
};}

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 cfQwenQwen3Embedding06b = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('@cf/qwen/qwen3-embedding-0.6b');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 cfBaaiBgeM3 = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('@cf/baai/bge-m3');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 cfBaaiBgeLargeEnV15 = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('@cf/baai/bge-large-en-v1.5');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 cfGoogleEmbeddinggemma300m = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('@cf/google/embeddinggemma-300m');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 googleAiStudioGeminiEmbedding001 = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('google-ai-studio/gemini-embedding-001');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 openaiTextEmbedding3Small = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('openai/text-embedding-3-small');

static const AiSearchCreateInstancesRequestEmbeddingModelVariant1 openaiTextEmbedding3Large = AiSearchCreateInstancesRequestEmbeddingModelVariant1._('openai/text-embedding-3-large');

static const List<AiSearchCreateInstancesRequestEmbeddingModelVariant1> values = [cfQwenQwen3Embedding06b, cfBaaiBgeM3, cfBaaiBgeLargeEnV15, cfGoogleEmbeddinggemma300m, googleAiStudioGeminiEmbedding001, openaiTextEmbedding3Small, openaiTextEmbedding3Large];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchCreateInstancesRequestEmbeddingModelVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchCreateInstancesRequestEmbeddingModelVariant1($value)';}
}
@immutable final class AiSearchCreateInstancesRequestEmbeddingModelVariant2 {const AiSearchCreateInstancesRequestEmbeddingModelVariant2._(this.value);

factory AiSearchCreateInstancesRequestEmbeddingModelVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AiSearchCreateInstancesRequestEmbeddingModelVariant2._(json),
};}

static const AiSearchCreateInstancesRequestEmbeddingModelVariant2 $empty = AiSearchCreateInstancesRequestEmbeddingModelVariant2._('');

static const List<AiSearchCreateInstancesRequestEmbeddingModelVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchCreateInstancesRequestEmbeddingModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchCreateInstancesRequestEmbeddingModelVariant2($value)';}
}

@immutable
final class AiSearchCreateInstancesRequestEmbeddingModel {
  const AiSearchCreateInstancesRequestEmbeddingModel({this.aiSearchCreateInstancesRequestEmbeddingModelVariant1 = const Omittable.absent(),
this.aiSearchCreateInstancesRequestEmbeddingModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AiSearchCreateInstancesRequestEmbeddingModel._({required this.rawValue, required this.aiSearchCreateInstancesRequestEmbeddingModelVariant1,
required this.aiSearchCreateInstancesRequestEmbeddingModelVariant2,});
  factory AiSearchCreateInstancesRequestEmbeddingModel.fromJson(Object? json) => AiSearchCreateInstancesRequestEmbeddingModel._(
    rawValue: Omittable(json),
    aiSearchCreateInstancesRequestEmbeddingModelVariant1: parseAnyOfVariant<AiSearchCreateInstancesRequestEmbeddingModelVariant1>(json, (value) => AiSearchCreateInstancesRequestEmbeddingModelVariant1.fromJson(value! as String)),
aiSearchCreateInstancesRequestEmbeddingModelVariant2: parseAnyOfVariant<AiSearchCreateInstancesRequestEmbeddingModelVariant2>(json, (value) => AiSearchCreateInstancesRequestEmbeddingModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AiSearchCreateInstancesRequestEmbeddingModelVariant1> aiSearchCreateInstancesRequestEmbeddingModelVariant1;
final Omittable<AiSearchCreateInstancesRequestEmbeddingModelVariant2> aiSearchCreateInstancesRequestEmbeddingModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aiSearchCreateInstancesRequestEmbeddingModelVariant1.isPresent || aiSearchCreateInstancesRequestEmbeddingModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aiSearchCreateInstancesRequestEmbeddingModelVariant1.isPresent) aiSearchCreateInstancesRequestEmbeddingModelVariant1.value?.toJson(),
if (aiSearchCreateInstancesRequestEmbeddingModelVariant2.isPresent) aiSearchCreateInstancesRequestEmbeddingModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AiSearchCreateInstancesRequestEmbeddingModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AiSearchCreateInstancesRequestEmbeddingModel(${toJson()})';
}
