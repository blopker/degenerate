// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_terminal_reader.dart';import 'terminal_reader.dart';
@immutable
final class PostTerminalReadersReaderResponse {
  const PostTerminalReadersReaderResponse({this.terminalReader = const Omittable.absent(),
this.deletedTerminalReader = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalReadersReaderResponse._({required this.rawValue, required this.terminalReader,
required this.deletedTerminalReader,});
  factory PostTerminalReadersReaderResponse.fromJson(Object? json) => PostTerminalReadersReaderResponse._(
    rawValue: Omittable(json),
    terminalReader: parseAnyOfVariant<TerminalReader>(json, (value) => TerminalReader.fromJson(value! as Map<String, dynamic>)),
deletedTerminalReader: parseAnyOfVariant<DeletedTerminalReader>(json, (value) => DeletedTerminalReader.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<TerminalReader> terminalReader;
final Omittable<DeletedTerminalReader> deletedTerminalReader;

  /// Whether at least one known variant matched.
  bool get isValid => terminalReader.isPresent || deletedTerminalReader.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (terminalReader.isPresent) terminalReader.value?.toJson(),
if (deletedTerminalReader.isPresent) deletedTerminalReader.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalReadersReaderResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalReadersReaderResponse(${toJson()})';
}
