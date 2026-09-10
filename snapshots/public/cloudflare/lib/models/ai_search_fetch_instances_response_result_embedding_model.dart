// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 {const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._(this.value);

factory AiSearchFetchInstancesResponseResultEmbeddingModelVariant1.fromJson(String json) {return switch (json) {
  '@cf/qwen/qwen3-embedding-0.6b' => cfQwenQwen3Embedding06b,
  '@cf/baai/bge-m3' => cfBaaiBgeM3,
  '@cf/baai/bge-large-en-v1.5' => cfBaaiBgeLargeEnV15,
  '@cf/google/embeddinggemma-300m' => cfGoogleEmbeddinggemma300m,
  'google-ai-studio/gemini-embedding-001' => googleAiStudioGeminiEmbedding001,
  'openai/text-embedding-3-small' => openaiTextEmbedding3Small,
  'openai/text-embedding-3-large' => openaiTextEmbedding3Large,
  _ => AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._(json),
};}

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 cfQwenQwen3Embedding06b = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('@cf/qwen/qwen3-embedding-0.6b');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeM3 = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-m3');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 cfBaaiBgeLargeEnV15 = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('@cf/baai/bge-large-en-v1.5');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 cfGoogleEmbeddinggemma300m = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('@cf/google/embeddinggemma-300m');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 googleAiStudioGeminiEmbedding001 = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('google-ai-studio/gemini-embedding-001');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Small = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-small');

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 openaiTextEmbedding3Large = AiSearchFetchInstancesResponseResultEmbeddingModelVariant1._('openai/text-embedding-3-large');

static const List<AiSearchFetchInstancesResponseResultEmbeddingModelVariant1> values = [cfQwenQwen3Embedding06b, cfBaaiBgeM3, cfBaaiBgeLargeEnV15, cfGoogleEmbeddinggemma300m, googleAiStudioGeminiEmbedding001, openaiTextEmbedding3Small, openaiTextEmbedding3Large];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchFetchInstancesResponseResultEmbeddingModelVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchFetchInstancesResponseResultEmbeddingModelVariant1($value)';}
}
@immutable final class AiSearchFetchInstancesResponseResultEmbeddingModelVariant2 {const AiSearchFetchInstancesResponseResultEmbeddingModelVariant2._(this.value);

factory AiSearchFetchInstancesResponseResultEmbeddingModelVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AiSearchFetchInstancesResponseResultEmbeddingModelVariant2._(json),
};}

static const AiSearchFetchInstancesResponseResultEmbeddingModelVariant2 $empty = AiSearchFetchInstancesResponseResultEmbeddingModelVariant2._('');

static const List<AiSearchFetchInstancesResponseResultEmbeddingModelVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AiSearchFetchInstancesResponseResultEmbeddingModelVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AiSearchFetchInstancesResponseResultEmbeddingModelVariant2($value)';}
}

@immutable
final class AiSearchFetchInstancesResponseResultEmbeddingModel {
  const AiSearchFetchInstancesResponseResultEmbeddingModel({this.aiSearchFetchInstancesResponseResultEmbeddingModelVariant1 = const Omittable.absent(),
this.aiSearchFetchInstancesResponseResultEmbeddingModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AiSearchFetchInstancesResponseResultEmbeddingModel._({required this.rawValue, required this.aiSearchFetchInstancesResponseResultEmbeddingModelVariant1,
required this.aiSearchFetchInstancesResponseResultEmbeddingModelVariant2,});
  factory AiSearchFetchInstancesResponseResultEmbeddingModel.fromJson(Object? json) => AiSearchFetchInstancesResponseResultEmbeddingModel._(
    rawValue: Omittable(json),
    aiSearchFetchInstancesResponseResultEmbeddingModelVariant1: parseAnyOfVariant<AiSearchFetchInstancesResponseResultEmbeddingModelVariant1>(json, (value) => AiSearchFetchInstancesResponseResultEmbeddingModelVariant1.fromJson(value! as String)),
aiSearchFetchInstancesResponseResultEmbeddingModelVariant2: parseAnyOfVariant<AiSearchFetchInstancesResponseResultEmbeddingModelVariant2>(json, (value) => AiSearchFetchInstancesResponseResultEmbeddingModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AiSearchFetchInstancesResponseResultEmbeddingModelVariant1> aiSearchFetchInstancesResponseResultEmbeddingModelVariant1;
final Omittable<AiSearchFetchInstancesResponseResultEmbeddingModelVariant2> aiSearchFetchInstancesResponseResultEmbeddingModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => aiSearchFetchInstancesResponseResultEmbeddingModelVariant1.isPresent || aiSearchFetchInstancesResponseResultEmbeddingModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aiSearchFetchInstancesResponseResultEmbeddingModelVariant1.isPresent) aiSearchFetchInstancesResponseResultEmbeddingModelVariant1.value?.toJson(),
if (aiSearchFetchInstancesResponseResultEmbeddingModelVariant2.isPresent) aiSearchFetchInstancesResponseResultEmbeddingModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultEmbeddingModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AiSearchFetchInstancesResponseResultEmbeddingModel(${toJson()})';
}
