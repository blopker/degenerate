// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// The image(s) to edit. Must be a supported image file or an array of images.
/// 
/// For the GPT image models (`gpt-image-1`, `gpt-image-1-mini`, and `gpt-image-1.5`), each image should be a `png`, `webp`, or `jpg`
/// file less than 50MB. You can provide up to 16 images.
/// `chatgpt-image-latest` follows the same input constraints as GPT image models.
/// 
/// For `dall-e-2`, you can only provide one image, and it should be a square
/// `png` file less than 4MB.
/// 
@immutable
final class CreateImageEditRequestImage {
  const CreateImageEditRequestImage({this.uint8List = const Omittable.absent(),
this.listUint8List = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreateImageEditRequestImage._({required this.rawValue, required this.uint8List,
required this.listUint8List,});
  factory CreateImageEditRequestImage.fromJson(Object? json) => CreateImageEditRequestImage._(
    rawValue: Omittable(json),
    uint8List: parseAnyOfVariant<Uint8List>(json, (value) => base64Decode(value! as String)),
listUint8List: parseAnyOfVariant<List<Uint8List>>(json, (value) => (value! as List<dynamic>).map((e) => base64Decode(e as String)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Uint8List> uint8List;
final Omittable<List<Uint8List>> listUint8List;

  /// Whether at least one known variant matched.
  bool get isValid => uint8List.isPresent || listUint8List.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (uint8List.isPresent) switch (uint8List.value) { final bytes? => base64Encode(bytes), _ => null },
if (listUint8List.isPresent) listUint8List.value?.map(base64Encode).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreateImageEditRequestImage && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreateImageEditRequestImage(${toJson()})';
}
