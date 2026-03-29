// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostIssuingCardsCardRequestShippingAddressValidationMode {const PostIssuingCardsCardRequestShippingAddressValidationMode._(this.value);

factory PostIssuingCardsCardRequestShippingAddressValidationMode.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'normalization_only' => normalizationOnly,
  'validation_and_normalization' => validationAndNormalization,
  _ => PostIssuingCardsCardRequestShippingAddressValidationMode._(json),
}; }

static const PostIssuingCardsCardRequestShippingAddressValidationMode disabled = PostIssuingCardsCardRequestShippingAddressValidationMode._('disabled');

static const PostIssuingCardsCardRequestShippingAddressValidationMode normalizationOnly = PostIssuingCardsCardRequestShippingAddressValidationMode._('normalization_only');

static const PostIssuingCardsCardRequestShippingAddressValidationMode validationAndNormalization = PostIssuingCardsCardRequestShippingAddressValidationMode._('validation_and_normalization');

static const List<PostIssuingCardsCardRequestShippingAddressValidationMode> values = [disabled, normalizationOnly, validationAndNormalization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardsCardRequestShippingAddressValidationMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestShippingAddressValidationMode($value)'; } 
 }
final class PostIssuingCardsCardRequestShippingAddressValidation {const PostIssuingCardsCardRequestShippingAddressValidation({required this.mode});

factory PostIssuingCardsCardRequestShippingAddressValidation.fromJson(Map<String, dynamic> json) { return PostIssuingCardsCardRequestShippingAddressValidation(
  mode: PostIssuingCardsCardRequestShippingAddressValidationMode.fromJson(json['mode'] as String),
); }

final PostIssuingCardsCardRequestShippingAddressValidationMode mode;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
PostIssuingCardsCardRequestShippingAddressValidation copyWith({PostIssuingCardsCardRequestShippingAddressValidationMode? mode}) { return PostIssuingCardsCardRequestShippingAddressValidation(
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsCardRequestShippingAddressValidation &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestShippingAddressValidation(mode: $mode)'; } 
 }
