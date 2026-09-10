// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_text_to_text_variant2_messages_content_variant2.dart';
@immutable
final class ImageTextToTextVariant2MessagesContent {
  const ImageTextToTextVariant2MessagesContent({this.string = const Omittable.absent(),
this.listImageTextToTextVariant2MessagesContentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ImageTextToTextVariant2MessagesContent._({required this.rawValue, required this.string,
required this.listImageTextToTextVariant2MessagesContentVariant2,});
  factory ImageTextToTextVariant2MessagesContent.fromJson(Object? json) => ImageTextToTextVariant2MessagesContent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listImageTextToTextVariant2MessagesContentVariant2: parseAnyOfVariant<List<ImageTextToTextVariant2MessagesContentVariant2>>(json, (value) => (value! as List<dynamic>).map((e) => ImageTextToTextVariant2MessagesContentVariant2.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<ImageTextToTextVariant2MessagesContentVariant2>> listImageTextToTextVariant2MessagesContentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listImageTextToTextVariant2MessagesContentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listImageTextToTextVariant2MessagesContentVariant2.isPresent) listImageTextToTextVariant2MessagesContentVariant2.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ImageTextToTextVariant2MessagesContent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ImageTextToTextVariant2MessagesContent(${toJson()})';
}
