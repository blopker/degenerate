// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardsRequestShippingAddressValidationMode {const PostIssuingCardsRequestShippingAddressValidationMode._(this.value);

factory PostIssuingCardsRequestShippingAddressValidationMode.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'normalization_only' => normalizationOnly,
  'validation_and_normalization' => validationAndNormalization,
  _ => PostIssuingCardsRequestShippingAddressValidationMode._(json),
}; }

static const PostIssuingCardsRequestShippingAddressValidationMode disabled = PostIssuingCardsRequestShippingAddressValidationMode._('disabled');

static const PostIssuingCardsRequestShippingAddressValidationMode normalizationOnly = PostIssuingCardsRequestShippingAddressValidationMode._('normalization_only');

static const PostIssuingCardsRequestShippingAddressValidationMode validationAndNormalization = PostIssuingCardsRequestShippingAddressValidationMode._('validation_and_normalization');

static const List<PostIssuingCardsRequestShippingAddressValidationMode> values = [disabled, normalizationOnly, validationAndNormalization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsRequestShippingAddressValidationMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsRequestShippingAddressValidationMode($value)'; } 
 }
@immutable final class PostIssuingCardsRequestShippingAddressValidation {const PostIssuingCardsRequestShippingAddressValidation({required this.mode});

factory PostIssuingCardsRequestShippingAddressValidation.fromJson(Map<String, dynamic> json) { return PostIssuingCardsRequestShippingAddressValidation(
  mode: PostIssuingCardsRequestShippingAddressValidationMode.fromJson(json['mode'] as String),
); }

final PostIssuingCardsRequestShippingAddressValidationMode mode;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
PostIssuingCardsRequestShippingAddressValidation copyWith({PostIssuingCardsRequestShippingAddressValidationMode? mode}) { return PostIssuingCardsRequestShippingAddressValidation(
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsRequestShippingAddressValidation &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'PostIssuingCardsRequestShippingAddressValidation(mode: $mode)'; } 
 }
