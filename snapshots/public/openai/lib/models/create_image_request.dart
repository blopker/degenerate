// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_image_request_model.dart';import 'partial_images.dart';/// The quality of the image that will be generated.
/// 
/// - `auto` (default value) will automatically select the best quality for the given model.
/// - `high`, `medium` and `low` are supported for the GPT image models.
/// - `hd` and `standard` are supported for `dall-e-3`.
/// - `standard` is the only option for `dall-e-2`.
/// 
@immutable final class CreateImageRequestQuality {const CreateImageRequestQuality._(this.value);

factory CreateImageRequestQuality.fromJson(String json) {return switch (json) {
  'standard' => standard,
  'hd' => hd,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'auto' => auto,
  _ => CreateImageRequestQuality._(json),
};}

static const CreateImageRequestQuality standard = CreateImageRequestQuality._('standard');

static const CreateImageRequestQuality hd = CreateImageRequestQuality._('hd');

static const CreateImageRequestQuality low = CreateImageRequestQuality._('low');

static const CreateImageRequestQuality medium = CreateImageRequestQuality._('medium');

static const CreateImageRequestQuality high = CreateImageRequestQuality._('high');

static const CreateImageRequestQuality auto = CreateImageRequestQuality._('auto');

static const List<CreateImageRequestQuality> values = [standard, hd, low, medium, high, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestQuality && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestQuality($value)';}
}
/// The format in which generated images with `dall-e-2` and `dall-e-3` are returned. Must be one of `url` or `b64_json`. URLs are only valid for 60 minutes after the image has been generated. This parameter isn't supported for the GPT image models, which always return base64-encoded images.
@immutable final class CreateImageRequestResponseFormat {const CreateImageRequestResponseFormat._(this.value);

factory CreateImageRequestResponseFormat.fromJson(String json) {return switch (json) {
  'url' => url,
  'b64_json' => b64Json,
  _ => CreateImageRequestResponseFormat._(json),
};}

static const CreateImageRequestResponseFormat url = CreateImageRequestResponseFormat._('url');

static const CreateImageRequestResponseFormat b64Json = CreateImageRequestResponseFormat._('b64_json');

static const List<CreateImageRequestResponseFormat> values = [url, b64Json];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestResponseFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestResponseFormat($value)';}
}
/// The format in which the generated images are returned. This parameter is only supported for the GPT image models. Must be one of `png`, `jpeg`, or `webp`.
@immutable final class CreateImageRequestOutputFormat {const CreateImageRequestOutputFormat._(this.value);

factory CreateImageRequestOutputFormat.fromJson(String json) {return switch (json) {
  'png' => png,
  'jpeg' => jpeg,
  'webp' => webp,
  _ => CreateImageRequestOutputFormat._(json),
};}

static const CreateImageRequestOutputFormat png = CreateImageRequestOutputFormat._('png');

static const CreateImageRequestOutputFormat jpeg = CreateImageRequestOutputFormat._('jpeg');

static const CreateImageRequestOutputFormat webp = CreateImageRequestOutputFormat._('webp');

static const List<CreateImageRequestOutputFormat> values = [png, jpeg, webp];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestOutputFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestOutputFormat($value)';}
}
/// The size of the generated images. Must be one of `1024x1024`, `1536x1024` (landscape), `1024x1536` (portrait), or `auto` (default value) for the GPT image models, one of `256x256`, `512x512`, or `1024x1024` for `dall-e-2`, and one of `1024x1024`, `1792x1024`, or `1024x1792` for `dall-e-3`.
@immutable final class CreateImageRequestSize {const CreateImageRequestSize._(this.value);

factory CreateImageRequestSize.fromJson(String json) {return switch (json) {
  'auto' => auto,
  '1024x1024' => $1024x1024,
  '1536x1024' => $1536x1024,
  '1024x1536' => $1024x1536,
  '256x256' => $256x256,
  '512x512' => $512x512,
  '1792x1024' => $1792x1024,
  '1024x1792' => $1024x1792,
  _ => CreateImageRequestSize._(json),
};}

static const CreateImageRequestSize auto = CreateImageRequestSize._('auto');

static const CreateImageRequestSize $1024x1024 = CreateImageRequestSize._('1024x1024');

static const CreateImageRequestSize $1536x1024 = CreateImageRequestSize._('1536x1024');

static const CreateImageRequestSize $1024x1536 = CreateImageRequestSize._('1024x1536');

static const CreateImageRequestSize $256x256 = CreateImageRequestSize._('256x256');

static const CreateImageRequestSize $512x512 = CreateImageRequestSize._('512x512');

static const CreateImageRequestSize $1792x1024 = CreateImageRequestSize._('1792x1024');

static const CreateImageRequestSize $1024x1792 = CreateImageRequestSize._('1024x1792');

static const List<CreateImageRequestSize> values = [auto, $1024x1024, $1536x1024, $1024x1536, $256x256, $512x512, $1792x1024, $1024x1792];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestSize && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestSize($value)';}
}
/// Control the content-moderation level for images generated by the GPT image models. Must be either `low` for less restrictive filtering or `auto` (default value).
@immutable final class CreateImageRequestModeration {const CreateImageRequestModeration._(this.value);

factory CreateImageRequestModeration.fromJson(String json) {return switch (json) {
  'low' => low,
  'auto' => auto,
  _ => CreateImageRequestModeration._(json),
};}

static const CreateImageRequestModeration low = CreateImageRequestModeration._('low');

static const CreateImageRequestModeration auto = CreateImageRequestModeration._('auto');

static const List<CreateImageRequestModeration> values = [low, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestModeration && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestModeration($value)';}
}
/// Allows to set transparency for the background of the generated image(s).
/// This parameter is only supported for the GPT image models. Must be one of
/// `transparent`, `opaque` or `auto` (default value). When `auto` is used, the
/// model will automatically determine the best background for the image.
/// 
/// If `transparent`, the output format needs to support transparency, so it
/// should be set to either `png` (default value) or `webp`.
/// 
@immutable final class CreateImageRequestBackground {const CreateImageRequestBackground._(this.value);

factory CreateImageRequestBackground.fromJson(String json) {return switch (json) {
  'transparent' => transparent,
  'opaque' => opaque,
  'auto' => auto,
  _ => CreateImageRequestBackground._(json),
};}

static const CreateImageRequestBackground transparent = CreateImageRequestBackground._('transparent');

static const CreateImageRequestBackground opaque = CreateImageRequestBackground._('opaque');

static const CreateImageRequestBackground auto = CreateImageRequestBackground._('auto');

static const List<CreateImageRequestBackground> values = [transparent, opaque, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestBackground && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestBackground($value)';}
}
/// The style of the generated images. This parameter is only supported for `dall-e-3`. Must be one of `vivid` or `natural`. Vivid causes the model to lean towards generating hyper-real and dramatic images. Natural causes the model to produce more natural, less hyper-real looking images.
@immutable final class CreateImageRequestStyle {const CreateImageRequestStyle._(this.value);

factory CreateImageRequestStyle.fromJson(String json) {return switch (json) {
  'vivid' => vivid,
  'natural' => natural,
  _ => CreateImageRequestStyle._(json),
};}

static const CreateImageRequestStyle vivid = CreateImageRequestStyle._('vivid');

static const CreateImageRequestStyle natural = CreateImageRequestStyle._('natural');

static const List<CreateImageRequestStyle> values = [vivid, natural];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CreateImageRequestStyle && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CreateImageRequestStyle($value)';}
}
@immutable final class CreateImageRequest {const CreateImageRequest({required this.prompt, this.model = const Omittable.absent(), this.n = const Omittable.absent(), this.quality = const Omittable.absent(), this.responseFormat = const Omittable.absent(), this.outputFormat = const Omittable.absent(), this.outputCompression = const Omittable.absent(), this.stream = const Omittable.absent(), this.partialImages = const Omittable.absent(), this.size = const Omittable.absent(), this.moderation = const Omittable.absent(), this.background = const Omittable.absent(), this.style = const Omittable.absent(), this.user, });

factory CreateImageRequest.fromJson(Map<String, dynamic> json) {return CreateImageRequest(
  prompt: json['prompt'] as String,
  model: json.containsKey('model') ? Omittable(json['model'] != null ? CreateImageRequestModel.fromJson(json['model']) : null) : const Omittable.absent(),
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  quality: json.containsKey('quality') ? Omittable(json['quality'] != null ? CreateImageRequestQuality.fromJson(json['quality'] as String) : null) : const Omittable.absent(),
  responseFormat: json.containsKey('response_format') ? Omittable(json['response_format'] != null ? CreateImageRequestResponseFormat.fromJson(json['response_format'] as String) : null) : const Omittable.absent(),
  outputFormat: json.containsKey('output_format') ? Omittable(json['output_format'] != null ? CreateImageRequestOutputFormat.fromJson(json['output_format'] as String) : null) : const Omittable.absent(),
  outputCompression: json.containsKey('output_compression') ? Omittable(json['output_compression'] != null ? (json['output_compression'] as num).toInt() : null) : const Omittable.absent(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  partialImages: json.containsKey('partial_images') ? Omittable(json['partial_images'] != null ? PartialImages.fromJson(json['partial_images'] as num) : null) : const Omittable.absent(),
  size: json.containsKey('size') ? Omittable(json['size'] != null ? CreateImageRequestSize.fromJson(json['size'] as String) : null) : const Omittable.absent(),
  moderation: json.containsKey('moderation') ? Omittable(json['moderation'] != null ? CreateImageRequestModeration.fromJson(json['moderation'] as String) : null) : const Omittable.absent(),
  background: json.containsKey('background') ? Omittable(json['background'] != null ? CreateImageRequestBackground.fromJson(json['background'] as String) : null) : const Omittable.absent(),
  style: json.containsKey('style') ? Omittable(json['style'] != null ? CreateImageRequestStyle.fromJson(json['style'] as String) : null) : const Omittable.absent(),
  user: json['user'] as String?,
);}

/// A text description of the desired image(s). The maximum length is 32000 characters for the GPT image models, 1000 characters for `dall-e-2` and 4000 characters for `dall-e-3`.
final String prompt;

/// The model to use for image generation. One of `dall-e-2`, `dall-e-3`, or a GPT image model (`gpt-image-1`, `gpt-image-1-mini`, `gpt-image-1.5`). Defaults to `dall-e-2` unless a parameter specific to the GPT image models is used.
final Omittable<CreateImageRequestModel?> model;

/// The number of images to generate. Must be between 1 and 10. For `dall-e-3`, only `n=1` is supported.
final Omittable<int?> n;

/// The quality of the image that will be generated.
/// 
/// - `auto` (default value) will automatically select the best quality for the given model.
/// - `high`, `medium` and `low` are supported for the GPT image models.
/// - `hd` and `standard` are supported for `dall-e-3`.
/// - `standard` is the only option for `dall-e-2`.
/// 
final Omittable<CreateImageRequestQuality?> quality;

/// The format in which generated images with `dall-e-2` and `dall-e-3` are returned. Must be one of `url` or `b64_json`. URLs are only valid for 60 minutes after the image has been generated. This parameter isn't supported for the GPT image models, which always return base64-encoded images.
final Omittable<CreateImageRequestResponseFormat?> responseFormat;

/// The format in which the generated images are returned. This parameter is only supported for the GPT image models. Must be one of `png`, `jpeg`, or `webp`.
final Omittable<CreateImageRequestOutputFormat?> outputFormat;

/// The compression level (0-100%) for the generated images. This parameter is only supported for the GPT image models with the `webp` or `jpeg` output formats, and defaults to 100.
final Omittable<int?> outputCompression;

/// Generate the image in streaming mode. Defaults to `false`. See the
/// [Image generation guide](/docs/guides/image-generation) for more information.
/// This parameter is only supported for the GPT image models.
/// 
final Omittable<bool?> stream;

final Omittable<PartialImages?> partialImages;

/// The size of the generated images. Must be one of `1024x1024`, `1536x1024` (landscape), `1024x1536` (portrait), or `auto` (default value) for the GPT image models, one of `256x256`, `512x512`, or `1024x1024` for `dall-e-2`, and one of `1024x1024`, `1792x1024`, or `1024x1792` for `dall-e-3`.
final Omittable<CreateImageRequestSize?> size;

/// Control the content-moderation level for images generated by the GPT image models. Must be either `low` for less restrictive filtering or `auto` (default value).
final Omittable<CreateImageRequestModeration?> moderation;

/// Allows to set transparency for the background of the generated image(s).
/// This parameter is only supported for the GPT image models. Must be one of
/// `transparent`, `opaque` or `auto` (default value). When `auto` is used, the
/// model will automatically determine the best background for the image.
/// 
/// If `transparent`, the output format needs to support transparency, so it
/// should be set to either `png` (default value) or `webp`.
/// 
final Omittable<CreateImageRequestBackground?> background;

/// The style of the generated images. This parameter is only supported for `dall-e-3`. Must be one of `vivid` or `natural`. Vivid causes the model to lean towards generating hyper-real and dramatic images. Natural causes the model to produce more natural, less hyper-real looking images.
final Omittable<CreateImageRequestStyle?> style;

/// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices#end-user-ids).
/// 
final String? user;

/// The value with the schema default applied when absent.
int? get nOrDefault {return n.valueOr(1);}
/// The value with the schema default applied when absent.
CreateImageRequestQuality? get qualityOrDefault {return quality.valueOr(CreateImageRequestQuality.fromJson('auto'));}
/// The value with the schema default applied when absent.
CreateImageRequestResponseFormat? get responseFormatOrDefault {return responseFormat.valueOr(CreateImageRequestResponseFormat.fromJson('url'));}
/// The value with the schema default applied when absent.
CreateImageRequestOutputFormat? get outputFormatOrDefault {return outputFormat.valueOr(CreateImageRequestOutputFormat.fromJson('png'));}
/// The value with the schema default applied when absent.
int? get outputCompressionOrDefault {return outputCompression.valueOr(100);}
/// The value with the schema default applied when absent.
bool? get streamOrDefault {return stream.valueOr(false);}
/// The value with the schema default applied when absent.
CreateImageRequestSize? get sizeOrDefault {return size.valueOr(CreateImageRequestSize.fromJson('auto'));}
/// The value with the schema default applied when absent.
CreateImageRequestModeration? get moderationOrDefault {return moderation.valueOr(CreateImageRequestModeration.fromJson('auto'));}
/// The value with the schema default applied when absent.
CreateImageRequestBackground? get backgroundOrDefault {return background.valueOr(CreateImageRequestBackground.fromJson('auto'));}
/// The value with the schema default applied when absent.
CreateImageRequestStyle? get styleOrDefault {return style.valueOr(CreateImageRequestStyle.fromJson('vivid'));}
Map<String, dynamic> toJson() {return {
  'prompt': prompt,
  if (model.isPresent) 'model': model.value?.toJson(),
  if (n.isPresent) 'n': n.value,
  if (quality.isPresent) 'quality': quality.value?.toJson(),
  if (responseFormat.isPresent) 'response_format': responseFormat.value?.toJson(),
  if (outputFormat.isPresent) 'output_format': outputFormat.value?.toJson(),
  if (outputCompression.isPresent) 'output_compression': outputCompression.value,
  if (stream.isPresent) 'stream': stream.value,
  if (partialImages.isPresent) 'partial_images': partialImages.value?.toJson(),
  if (size.isPresent) 'size': size.value?.toJson(),
  if (moderation.isPresent) 'moderation': moderation.value?.toJson(),
  if (background.isPresent) 'background': background.value?.toJson(),
  if (style.isPresent) 'style': style.value?.toJson(),
  'user': ?user,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('prompt') && json['prompt'] is String;}
CreateImageRequest copyWith({String? prompt, Omittable<CreateImageRequestModel?>? model, Omittable<int?>? n, Omittable<CreateImageRequestQuality?>? quality, Omittable<CreateImageRequestResponseFormat?>? responseFormat, Omittable<CreateImageRequestOutputFormat?>? outputFormat, Omittable<int?>? outputCompression, Omittable<bool?>? stream, Omittable<PartialImages?>? partialImages, Omittable<CreateImageRequestSize?>? size, Omittable<CreateImageRequestModeration?>? moderation, Omittable<CreateImageRequestBackground?>? background, Omittable<CreateImageRequestStyle?>? style, String? Function()? user, }) {return CreateImageRequest(
  prompt: prompt ?? this.prompt,
  model: model ?? this.model,
  n: n ?? this.n,
  quality: quality ?? this.quality,
  responseFormat: responseFormat ?? this.responseFormat,
  outputFormat: outputFormat ?? this.outputFormat,
  outputCompression: outputCompression ?? this.outputCompression,
  stream: stream ?? this.stream,
  partialImages: partialImages ?? this.partialImages,
  size: size ?? this.size,
  moderation: moderation ?? this.moderation,
  background: background ?? this.background,
  style: style ?? this.style,
  user: user != null ? user() : this.user,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CreateImageRequest &&
          prompt == other.prompt &&
          model == other.model &&
          n == other.n &&
          quality == other.quality &&
          responseFormat == other.responseFormat &&
          outputFormat == other.outputFormat &&
          outputCompression == other.outputCompression &&
          stream == other.stream &&
          partialImages == other.partialImages &&
          size == other.size &&
          moderation == other.moderation &&
          background == other.background &&
          style == other.style &&
          user == other.user;}
@override int get hashCode {return Object.hash(prompt, model, n, quality, responseFormat, outputFormat, outputCompression, stream, partialImages, size, moderation, background, style, user);}
@override String toString() {return 'CreateImageRequest(prompt: $prompt, model: $model, n: $n, quality: $quality, responseFormat: $responseFormat, outputFormat: $outputFormat, outputCompression: $outputCompression, stream: $stream, partialImages: $partialImages, size: $size, moderation: $moderation, background: $background, style: $style, user: $user)';}
}
