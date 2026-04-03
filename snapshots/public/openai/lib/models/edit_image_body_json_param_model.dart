// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EditImageBodyJsonParamModelVariant2 {const EditImageBodyJsonParamModelVariant2._(this.value);

factory EditImageBodyJsonParamModelVariant2.fromJson(String json) { return switch (json) {
  'gpt-image-1.5' => gptImage15,
  'gpt-image-1' => gptImage1,
  'gpt-image-1-mini' => gptImage1Mini,
  'chatgpt-image-latest' => chatgptImageLatest,
  _ => EditImageBodyJsonParamModelVariant2._(json),
}; }

static const EditImageBodyJsonParamModelVariant2 gptImage15 = EditImageBodyJsonParamModelVariant2._('gpt-image-1.5');

static const EditImageBodyJsonParamModelVariant2 gptImage1 = EditImageBodyJsonParamModelVariant2._('gpt-image-1');

static const EditImageBodyJsonParamModelVariant2 gptImage1Mini = EditImageBodyJsonParamModelVariant2._('gpt-image-1-mini');

static const EditImageBodyJsonParamModelVariant2 chatgptImageLatest = EditImageBodyJsonParamModelVariant2._('chatgpt-image-latest');

static const List<EditImageBodyJsonParamModelVariant2> values = [gptImage15, gptImage1, gptImage1Mini, chatgptImageLatest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditImageBodyJsonParamModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EditImageBodyJsonParamModelVariant2($value)'; } 
 }
typedef EditImageBodyJsonParamModel = OneOf3<String,EditImageBodyJsonParamModelVariant2,dynamic>;
