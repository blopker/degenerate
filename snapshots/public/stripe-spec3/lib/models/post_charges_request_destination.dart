// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_specs.dart';
@immutable
final class PostChargesRequestDestination {
  const PostChargesRequestDestination({this.destinationSpecs = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostChargesRequestDestination._({required this.rawValue, required this.destinationSpecs,
required this.string,});
  factory PostChargesRequestDestination.fromJson(Object? json) => PostChargesRequestDestination._(
    rawValue: Omittable(json),
    destinationSpecs: parseAnyOfVariant<DestinationSpecs>(json, (value) => DestinationSpecs.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DestinationSpecs> destinationSpecs;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => destinationSpecs.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (destinationSpecs.isPresent) destinationSpecs.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostChargesRequestDestination && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostChargesRequestDestination(${toJson()})';
}
