// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledCancellationPolicyProvidedVariant2 {const CanceledCancellationPolicyProvidedVariant2._(this.value);

factory CanceledCancellationPolicyProvidedVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => CanceledCancellationPolicyProvidedVariant2._(json),
};}

static const CanceledCancellationPolicyProvidedVariant2 $empty = CanceledCancellationPolicyProvidedVariant2._('');

static const List<CanceledCancellationPolicyProvidedVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CanceledCancellationPolicyProvidedVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CanceledCancellationPolicyProvidedVariant2($value)';}
}

@immutable
final class CanceledCancellationPolicyProvided {
  const CanceledCancellationPolicyProvided({this.$bool = const Omittable.absent(),
this.canceledCancellationPolicyProvidedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledCancellationPolicyProvided._({required this.rawValue, required this.$bool,
required this.canceledCancellationPolicyProvidedVariant2,});
  factory CanceledCancellationPolicyProvided.fromJson(Object? json) => CanceledCancellationPolicyProvided._(
    rawValue: Omittable(json),
    $bool: parseAnyOfVariant<bool>(json, (value) => value! as bool),
canceledCancellationPolicyProvidedVariant2: parseAnyOfVariant<CanceledCancellationPolicyProvidedVariant2>(json, (value) => CanceledCancellationPolicyProvidedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<bool> $bool;
final Omittable<CanceledCancellationPolicyProvidedVariant2> canceledCancellationPolicyProvidedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $bool.isPresent || canceledCancellationPolicyProvidedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($bool.isPresent) $bool.value,
if (canceledCancellationPolicyProvidedVariant2.isPresent) canceledCancellationPolicyProvidedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledCancellationPolicyProvided && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledCancellationPolicyProvided(${toJson()})';
}
