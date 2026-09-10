// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'edit_image_body_json_param_model.dart';import 'image_ref_param.dart';import 'partial_images.dart';@immutable final class EditImageBodyJsonParamQuality {const EditImageBodyJsonParamQuality._(this.value);

factory EditImageBodyJsonParamQuality.fromJson(String json) {return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'auto' => auto,
  _ => EditImageBodyJsonParamQuality._(json),
};}

static const EditImageBodyJsonParamQuality low = EditImageBodyJsonParamQuality._('low');

static const EditImageBodyJsonParamQuality medium = EditImageBodyJsonParamQuality._('medium');

static const EditImageBodyJsonParamQuality high = EditImageBodyJsonParamQuality._('high');

static const EditImageBodyJsonParamQuality auto = EditImageBodyJsonParamQuality._('auto');

static const List<EditImageBodyJsonParamQuality> values = [low, medium, high, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamQuality && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamQuality($value)';}
}
@immutable final class EditImageBodyJsonParamInputFidelity {const EditImageBodyJsonParamInputFidelity._(this.value);

factory EditImageBodyJsonParamInputFidelity.fromJson(String json) {return switch (json) {
  'high' => high,
  'low' => low,
  _ => EditImageBodyJsonParamInputFidelity._(json),
};}

static const EditImageBodyJsonParamInputFidelity high = EditImageBodyJsonParamInputFidelity._('high');

static const EditImageBodyJsonParamInputFidelity low = EditImageBodyJsonParamInputFidelity._('low');

static const List<EditImageBodyJsonParamInputFidelity> values = [high, low];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamInputFidelity && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamInputFidelity($value)';}
}
@immutable final class EditImageBodyJsonParamSize {const EditImageBodyJsonParamSize._(this.value);

factory EditImageBodyJsonParamSize.fromJson(String json) {return switch (json) {
  'auto' => auto,
  '1024x1024' => $1024x1024,
  '1536x1024' => $1536x1024,
  '1024x1536' => $1024x1536,
  _ => EditImageBodyJsonParamSize._(json),
};}

static const EditImageBodyJsonParamSize auto = EditImageBodyJsonParamSize._('auto');

static const EditImageBodyJsonParamSize $1024x1024 = EditImageBodyJsonParamSize._('1024x1024');

static const EditImageBodyJsonParamSize $1536x1024 = EditImageBodyJsonParamSize._('1536x1024');

static const EditImageBodyJsonParamSize $1024x1536 = EditImageBodyJsonParamSize._('1024x1536');

static const List<EditImageBodyJsonParamSize> values = [auto, $1024x1024, $1536x1024, $1024x1536];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamSize && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamSize($value)';}
}
@immutable final class EditImageBodyJsonParamOutputFormat {const EditImageBodyJsonParamOutputFormat._(this.value);

factory EditImageBodyJsonParamOutputFormat.fromJson(String json) {return switch (json) {
  'png' => png,
  'jpeg' => jpeg,
  'webp' => webp,
  _ => EditImageBodyJsonParamOutputFormat._(json),
};}

static const EditImageBodyJsonParamOutputFormat png = EditImageBodyJsonParamOutputFormat._('png');

static const EditImageBodyJsonParamOutputFormat jpeg = EditImageBodyJsonParamOutputFormat._('jpeg');

static const EditImageBodyJsonParamOutputFormat webp = EditImageBodyJsonParamOutputFormat._('webp');

static const List<EditImageBodyJsonParamOutputFormat> values = [png, jpeg, webp];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamOutputFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamOutputFormat($value)';}
}
@immutable final class EditImageBodyJsonParamModeration {const EditImageBodyJsonParamModeration._(this.value);

factory EditImageBodyJsonParamModeration.fromJson(String json) {return switch (json) {
  'low' => low,
  'auto' => auto,
  _ => EditImageBodyJsonParamModeration._(json),
};}

static const EditImageBodyJsonParamModeration low = EditImageBodyJsonParamModeration._('low');

static const EditImageBodyJsonParamModeration auto = EditImageBodyJsonParamModeration._('auto');

static const List<EditImageBodyJsonParamModeration> values = [low, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamModeration && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamModeration($value)';}
}
@immutable final class EditImageBodyJsonParamBackground {const EditImageBodyJsonParamBackground._(this.value);

factory EditImageBodyJsonParamBackground.fromJson(String json) {return switch (json) {
  'transparent' => transparent,
  'opaque' => opaque,
  'auto' => auto,
  _ => EditImageBodyJsonParamBackground._(json),
};}

static const EditImageBodyJsonParamBackground transparent = EditImageBodyJsonParamBackground._('transparent');

static const EditImageBodyJsonParamBackground opaque = EditImageBodyJsonParamBackground._('opaque');

static const EditImageBodyJsonParamBackground auto = EditImageBodyJsonParamBackground._('auto');

static const List<EditImageBodyJsonParamBackground> values = [transparent, opaque, auto];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EditImageBodyJsonParamBackground && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EditImageBodyJsonParamBackground($value)';}
}
/// JSON request body for image edits.
/// 
/// Use `images` (array of `ImageRefParam`) instead of multipart `image` uploads.
/// You can reference images via external URLs, data URLs, or uploaded file IDs.
/// JSON edits support GPT image models only; DALL-E edits require multipart (`dall-e-2` only).
/// 
@immutable final class EditImageBodyJsonParam {const EditImageBodyJsonParam({required this.images, required this.prompt, this.model = const Omittable.absent(), this.mask = const Omittable.absent(), this.n = const Omittable.absent(), this.quality = const Omittable.absent(), this.inputFidelity = const Omittable.absent(), this.size = const Omittable.absent(), this.user, this.outputFormat = const Omittable.absent(), this.outputCompression = const Omittable.absent(), this.moderation = const Omittable.absent(), this.background = const Omittable.absent(), this.stream = const Omittable.absent(), this.partialImages = const Omittable.absent(), });

factory EditImageBodyJsonParam.fromJson(Map<String, dynamic> json) {return EditImageBodyJsonParam(
  model: json.containsKey('model') ? Omittable(json['model'] != null ? EditImageBodyJsonParamModel.fromJson(json['model']) : null) : const Omittable.absent(),
  images: (json['images'] as List<dynamic>).map((e) => e == null ? null : ImageRefParam.fromJson(e)).toList(),
  mask: json.containsKey('mask') ? Omittable(json['mask'] != null ? ImageRefParam.fromJson(json['mask']) : null) : const Omittable.absent(),
  prompt: json['prompt'] as String,
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  quality: json.containsKey('quality') ? Omittable(json['quality'] != null ? EditImageBodyJsonParamQuality.fromJson(json['quality'] as String) : null) : const Omittable.absent(),
  inputFidelity: json.containsKey('input_fidelity') ? Omittable(json['input_fidelity'] != null ? EditImageBodyJsonParamInputFidelity.fromJson(json['input_fidelity'] as String) : null) : const Omittable.absent(),
  size: json.containsKey('size') ? Omittable(json['size'] != null ? EditImageBodyJsonParamSize.fromJson(json['size'] as String) : null) : const Omittable.absent(),
  user: json['user'] as String?,
  outputFormat: json.containsKey('output_format') ? Omittable(json['output_format'] != null ? EditImageBodyJsonParamOutputFormat.fromJson(json['output_format'] as String) : null) : const Omittable.absent(),
  outputCompression: json.containsKey('output_compression') ? Omittable(json['output_compression'] != null ? (json['output_compression'] as num).toInt() : null) : const Omittable.absent(),
  moderation: json.containsKey('moderation') ? Omittable(json['moderation'] != null ? EditImageBodyJsonParamModeration.fromJson(json['moderation'] as String) : null) : const Omittable.absent(),
  background: json.containsKey('background') ? Omittable(json['background'] != null ? EditImageBodyJsonParamBackground.fromJson(json['background'] as String) : null) : const Omittable.absent(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  partialImages: json.containsKey('partial_images') ? Omittable(json['partial_images'] != null ? PartialImages.fromJson(json['partial_images'] as num) : null) : const Omittable.absent(),
);}

/// The model to use for image editing.
final Omittable<EditImageBodyJsonParamModel?> model;

/// Input image references to edit.
/// For GPT image models, you can provide up to 16 images.
/// 
final List<ImageRefParam?> images;

final Omittable<ImageRefParam?> mask;

/// A text description of the desired image edit.
final String prompt;

/// The number of edited images to generate.
final Omittable<int?> n;

/// Output quality for GPT image models.
/// 
final Omittable<EditImageBodyJsonParamQuality?> quality;

/// Controls fidelity to the original input image(s).
final Omittable<EditImageBodyJsonParamInputFidelity?> inputFidelity;

/// Requested output image size.
final Omittable<EditImageBodyJsonParamSize?> size;

/// A unique identifier representing your end-user, which can help OpenAI
/// monitor and detect abuse.
/// 
final String? user;

/// Output image format. Supported for GPT image models.
final Omittable<EditImageBodyJsonParamOutputFormat?> outputFormat;

/// Compression level for `jpeg` or `webp` output.
final Omittable<int?> outputCompression;

/// Moderation level for GPT image models.
final Omittable<EditImageBodyJsonParamModeration?> moderation;

/// Background behavior for generated image output.
final Omittable<EditImageBodyJsonParamBackground?> background;

/// Stream partial image results as events.
final Omittable<bool?> stream;

final Omittable<PartialImages?> partialImages;

/// The value with the schema default applied when absent.
int? get nOrDefault {return n.valueOr(1);}
/// The value with the schema default applied when absent.
EditImageBodyJsonParamQuality? get qualityOrDefault {return quality.valueOr(EditImageBodyJsonParamQuality.fromJson('auto'));}
/// The value with the schema default applied when absent.
EditImageBodyJsonParamSize? get sizeOrDefault {return size.valueOr(EditImageBodyJsonParamSize.fromJson('auto'));}
/// The value with the schema default applied when absent.
EditImageBodyJsonParamOutputFormat? get outputFormatOrDefault {return outputFormat.valueOr(EditImageBodyJsonParamOutputFormat.fromJson('png'));}
/// The value with the schema default applied when absent.
EditImageBodyJsonParamModeration? get moderationOrDefault {return moderation.valueOr(EditImageBodyJsonParamModeration.fromJson('auto'));}
/// The value with the schema default applied when absent.
EditImageBodyJsonParamBackground? get backgroundOrDefault {return background.valueOr(EditImageBodyJsonParamBackground.fromJson('auto'));}
/// The value with the schema default applied when absent.
bool? get streamOrDefault {return stream.valueOr(false);}
Map<String, dynamic> toJson() {return {
  if (model.isPresent) 'model': model.value?.toJson(),
  'images': images.map((e) => e?.toJson()).toList(),
  if (mask.isPresent) 'mask': mask.value?.toJson(),
  'prompt': prompt,
  if (n.isPresent) 'n': n.value,
  if (quality.isPresent) 'quality': quality.value?.toJson(),
  if (inputFidelity.isPresent) 'input_fidelity': inputFidelity.value?.toJson(),
  if (size.isPresent) 'size': size.value?.toJson(),
  'user': ?user,
  if (outputFormat.isPresent) 'output_format': outputFormat.value?.toJson(),
  if (outputCompression.isPresent) 'output_compression': outputCompression.value,
  if (moderation.isPresent) 'moderation': moderation.value?.toJson(),
  if (background.isPresent) 'background': background.value?.toJson(),
  if (stream.isPresent) 'stream': stream.value,
  if (partialImages.isPresent) 'partial_images': partialImages.value?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('images') &&
      json.containsKey('prompt') && json['prompt'] is String;}
EditImageBodyJsonParam copyWith({Omittable<EditImageBodyJsonParamModel?>? model, List<ImageRefParam?>? images, Omittable<ImageRefParam?>? mask, String? prompt, Omittable<int?>? n, Omittable<EditImageBodyJsonParamQuality?>? quality, Omittable<EditImageBodyJsonParamInputFidelity?>? inputFidelity, Omittable<EditImageBodyJsonParamSize?>? size, String? Function()? user, Omittable<EditImageBodyJsonParamOutputFormat?>? outputFormat, Omittable<int?>? outputCompression, Omittable<EditImageBodyJsonParamModeration?>? moderation, Omittable<EditImageBodyJsonParamBackground?>? background, Omittable<bool?>? stream, Omittable<PartialImages?>? partialImages, }) {return EditImageBodyJsonParam(
  model: model ?? this.model,
  images: images ?? this.images,
  mask: mask ?? this.mask,
  prompt: prompt ?? this.prompt,
  n: n ?? this.n,
  quality: quality ?? this.quality,
  inputFidelity: inputFidelity ?? this.inputFidelity,
  size: size ?? this.size,
  user: user != null ? user() : this.user,
  outputFormat: outputFormat ?? this.outputFormat,
  outputCompression: outputCompression ?? this.outputCompression,
  moderation: moderation ?? this.moderation,
  background: background ?? this.background,
  stream: stream ?? this.stream,
  partialImages: partialImages ?? this.partialImages,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is EditImageBodyJsonParam &&
          model == other.model &&
          listEquals(images, other.images) &&
          mask == other.mask &&
          prompt == other.prompt &&
          n == other.n &&
          quality == other.quality &&
          inputFidelity == other.inputFidelity &&
          size == other.size &&
          user == other.user &&
          outputFormat == other.outputFormat &&
          outputCompression == other.outputCompression &&
          moderation == other.moderation &&
          background == other.background &&
          stream == other.stream &&
          partialImages == other.partialImages;}
@override int get hashCode {return Object.hash(model, Object.hashAll(images), mask, prompt, n, quality, inputFidelity, size, user, outputFormat, outputCompression, moderation, background, stream, partialImages);}
@override String toString() {return 'EditImageBodyJsonParam(model: $model, images: $images, mask: $mask, prompt: $prompt, n: $n, quality: $quality, inputFidelity: $inputFidelity, size: $size, user: $user, outputFormat: $outputFormat, outputCompression: $outputCompression, moderation: $moderation, background: $background, stream: $stream, partialImages: $partialImages)';}
}
