// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_image_variation_request_model.dart';/// The format in which the generated images are returned. Must be one of `url` or `b64_json`. URLs are only valid for 60 minutes after the image has been generated.
@immutable final class CreateImageVariationRequestResponseFormat {const CreateImageVariationRequestResponseFormat._(this.value);

factory CreateImageVariationRequestResponseFormat.fromJson(String json) { return switch (json) {
  'url' => url,
  'b64_json' => b64Json,
  _ => CreateImageVariationRequestResponseFormat._(json),
}; }

static const CreateImageVariationRequestResponseFormat url = CreateImageVariationRequestResponseFormat._('url');

static const CreateImageVariationRequestResponseFormat b64Json = CreateImageVariationRequestResponseFormat._('b64_json');

static const List<CreateImageVariationRequestResponseFormat> values = [url, b64Json];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateImageVariationRequestResponseFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateImageVariationRequestResponseFormat($value)'; } 
 }
/// The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
@immutable final class CreateImageVariationRequestSize {const CreateImageVariationRequestSize._(this.value);

factory CreateImageVariationRequestSize.fromJson(String json) { return switch (json) {
  '256x256' => $256x256,
  '512x512' => $512x512,
  '1024x1024' => $1024x1024,
  _ => CreateImageVariationRequestSize._(json),
}; }

static const CreateImageVariationRequestSize $256x256 = CreateImageVariationRequestSize._('256x256');

static const CreateImageVariationRequestSize $512x512 = CreateImageVariationRequestSize._('512x512');

static const CreateImageVariationRequestSize $1024x1024 = CreateImageVariationRequestSize._('1024x1024');

static const List<CreateImageVariationRequestSize> values = [$256x256, $512x512, $1024x1024];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateImageVariationRequestSize && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateImageVariationRequestSize($value)'; } 
 }
@immutable final class CreateImageVariationRequest {const CreateImageVariationRequest({required this.image, this.model = const Omittable.absent(), this.n = const Omittable.absent(), this.responseFormat = const Omittable.absent(), this.size = const Omittable.absent(), this.user, });

factory CreateImageVariationRequest.fromJson(Map<String, dynamic> json) { return CreateImageVariationRequest(
  image: base64Decode(json['image'] as String),
  model: json.containsKey('model') ? Omittable(json['model'] != null ? CreateImageVariationRequestModel.fromJson(json['model']) : null) : const Omittable.absent(),
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  responseFormat: json.containsKey('response_format') ? Omittable(json['response_format'] != null ? CreateImageVariationRequestResponseFormat.fromJson(json['response_format'] as String) : null) : const Omittable.absent(),
  size: json.containsKey('size') ? Omittable(json['size'] != null ? CreateImageVariationRequestSize.fromJson(json['size'] as String) : null) : const Omittable.absent(),
  user: json['user'] as String?,
); }

/// The image to use as the basis for the variation(s). Must be a valid PNG file, less than 4MB, and square.
final Uint8List image;

/// The model to use for image generation. Only `dall-e-2` is supported at this time.
final Omittable<CreateImageVariationRequestModel?> model;

/// The number of images to generate. Must be between 1 and 10.
final Omittable<int?> n;

/// The format in which the generated images are returned. Must be one of `url` or `b64_json`. URLs are only valid for 60 minutes after the image has been generated.
final Omittable<CreateImageVariationRequestResponseFormat?> responseFormat;

/// The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
final Omittable<CreateImageVariationRequestSize?> size;

/// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices#end-user-ids).
/// 
final String? user;

/// The value with the schema default applied when absent.
int? get nOrDefault { return n.valueOr(1); } 
/// The value with the schema default applied when absent.
CreateImageVariationRequestResponseFormat? get responseFormatOrDefault { return responseFormat.valueOr(CreateImageVariationRequestResponseFormat.fromJson('url')); } 
/// The value with the schema default applied when absent.
CreateImageVariationRequestSize? get sizeOrDefault { return size.valueOr(CreateImageVariationRequestSize.fromJson('1024x1024')); } 
Map<String, dynamic> toJson() { return {
  'image': base64Encode(image),
  if (model.isPresent) 'model': model.value?.toJson(),
  if (n.isPresent) 'n': n.value,
  if (responseFormat.isPresent) 'response_format': responseFormat.value?.toJson(),
  if (size.isPresent) 'size': size.value?.toJson(),
  'user': ?user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('image'); } 
CreateImageVariationRequest copyWith({Uint8List? image, Omittable<CreateImageVariationRequestModel?>? model, Omittable<int?>? n, Omittable<CreateImageVariationRequestResponseFormat?>? responseFormat, Omittable<CreateImageVariationRequestSize?>? size, String? Function()? user, }) { return CreateImageVariationRequest(
  image: image ?? this.image,
  model: model ?? this.model,
  n: n ?? this.n,
  responseFormat: responseFormat ?? this.responseFormat,
  size: size ?? this.size,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateImageVariationRequest &&
          listEquals(image, other.image) &&
          model == other.model &&
          n == other.n &&
          responseFormat == other.responseFormat &&
          size == other.size &&
          user == other.user; } 
@override int get hashCode { return Object.hash(Object.hashAll(image), model, n, responseFormat, size, user); } 
@override String toString() { return 'CreateImageVariationRequest(image: $image, model: $model, n: $n, responseFormat: $responseFormat, size: $size, user: $user)'; } 
 }
