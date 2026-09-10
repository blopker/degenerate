// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_messages_system_content_variant2.dart';
@immutable
final class Messages51MessagesSystemContent {
  const Messages51MessagesSystemContent({this.string = const Omittable.absent(),
this.listMessages51MessagesSystemContentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Messages51MessagesSystemContent._({required this.rawValue, required this.string,
required this.listMessages51MessagesSystemContentVariant2,});
  factory Messages51MessagesSystemContent.fromJson(Object? json) => Messages51MessagesSystemContent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listMessages51MessagesSystemContentVariant2: parseAnyOfVariant<List<Messages51MessagesSystemContentVariant2>>(json, (value) => (value! as List<dynamic>).map((e) => Messages51MessagesSystemContentVariant2.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<Messages51MessagesSystemContentVariant2>> listMessages51MessagesSystemContentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listMessages51MessagesSystemContentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listMessages51MessagesSystemContentVariant2.isPresent) listMessages51MessagesSystemContentVariant2.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Messages51MessagesSystemContent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Messages51MessagesSystemContent(${toJson()})';
}
