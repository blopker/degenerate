// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateEmbeddingRequestModelVariant2 {const CreateEmbeddingRequestModelVariant2._(this.value);

factory CreateEmbeddingRequestModelVariant2.fromJson(String json) { return switch (json) {
  'text-embedding-ada-002' => textEmbeddingAda002,
  'text-embedding-3-small' => textEmbedding3Small,
  'text-embedding-3-large' => textEmbedding3Large,
  _ => CreateEmbeddingRequestModelVariant2._(json),
}; }

static const CreateEmbeddingRequestModelVariant2 textEmbeddingAda002 = CreateEmbeddingRequestModelVariant2._('text-embedding-ada-002');

static const CreateEmbeddingRequestModelVariant2 textEmbedding3Small = CreateEmbeddingRequestModelVariant2._('text-embedding-3-small');

static const CreateEmbeddingRequestModelVariant2 textEmbedding3Large = CreateEmbeddingRequestModelVariant2._('text-embedding-3-large');

static const List<CreateEmbeddingRequestModelVariant2> values = [textEmbeddingAda002, textEmbedding3Small, textEmbedding3Large];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateEmbeddingRequestModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateEmbeddingRequestModelVariant2($value)'; } 
 }
/// ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models) for descriptions of them.
/// 
@immutable
final class CreateEmbeddingRequestModel {
  const CreateEmbeddingRequestModel({this.string = const Omittable.absent(),
this.createEmbeddingRequestModelVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateEmbeddingRequestModel._({required this.rawValue, required this.string,
required this.createEmbeddingRequestModelVariant2,});
  factory CreateEmbeddingRequestModel.fromJson(Object? json) => CreateEmbeddingRequestModel._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
createEmbeddingRequestModelVariant2: parseAnyOfVariant<CreateEmbeddingRequestModelVariant2>(json, (value) => CreateEmbeddingRequestModelVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CreateEmbeddingRequestModelVariant2> createEmbeddingRequestModelVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || createEmbeddingRequestModelVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (createEmbeddingRequestModelVariant2.isPresent) createEmbeddingRequestModelVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateEmbeddingRequestModel && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateEmbeddingRequestModel(${toJson()})';
}
