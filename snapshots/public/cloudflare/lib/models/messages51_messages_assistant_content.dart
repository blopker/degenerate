// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_messages_assistant_content_variant2.dart';
@immutable
final class Messages51MessagesAssistantContent {
  const Messages51MessagesAssistantContent({this.string = const Omittable.absent(),
this.listMessages51MessagesAssistantContentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Messages51MessagesAssistantContent._({required this.rawValue, required this.string,
required this.listMessages51MessagesAssistantContentVariant2,});
  factory Messages51MessagesAssistantContent.fromJson(Object? json) => Messages51MessagesAssistantContent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
listMessages51MessagesAssistantContentVariant2: parseAnyOfVariant<List<Messages51MessagesAssistantContentVariant2>>(json, (value) => (value! as List<dynamic>).map((e) => Messages51MessagesAssistantContentVariant2.fromJson(e as Map<String, dynamic>)).toList()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<List<Messages51MessagesAssistantContentVariant2>> listMessages51MessagesAssistantContentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || listMessages51MessagesAssistantContentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (listMessages51MessagesAssistantContentVariant2.isPresent) listMessages51MessagesAssistantContentVariant2.value?.map((e) => e.toJson()).toList(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Messages51MessagesAssistantContent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Messages51MessagesAssistantContent(${toJson()})';
}
