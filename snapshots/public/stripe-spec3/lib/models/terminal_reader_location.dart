// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_location.dart';/// The location identifier of the reader.
@immutable
final class TerminalReaderLocation {
  const TerminalReaderLocation({this.string = const Omittable.absent(),
this.terminalLocation = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const TerminalReaderLocation._({required this.rawValue, required this.string,
required this.terminalLocation,});
  factory TerminalReaderLocation.fromJson(Object? json) => TerminalReaderLocation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
terminalLocation: parseAnyOfVariant<TerminalLocation>(json, (value) => TerminalLocation.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TerminalLocation> terminalLocation;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || terminalLocation.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (terminalLocation.isPresent) terminalLocation.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is TerminalReaderLocation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'TerminalReaderLocation(${toJson()})';
}
