// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateImageVariationRequestModelVariant2 {const CreateImageVariationRequestModelVariant2._(this.value);

factory CreateImageVariationRequestModelVariant2.fromJson(String json) { return switch (json) {
  'dall-e-2' => dallE2,
  _ => CreateImageVariationRequestModelVariant2._(json),
}; }

static const CreateImageVariationRequestModelVariant2 dallE2 = CreateImageVariationRequestModelVariant2._('dall-e-2');

static const List<CreateImageVariationRequestModelVariant2> values = [dallE2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateImageVariationRequestModelVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateImageVariationRequestModelVariant2($value)'; } 
 }
typedef CreateImageVariationRequestModel = OneOf2<String,CreateImageVariationRequestModelVariant2>;
