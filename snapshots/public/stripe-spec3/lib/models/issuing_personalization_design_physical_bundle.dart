// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_physical_bundle.dart';/// The physical bundle object belonging to this personalization design.
@immutable
final class IssuingPersonalizationDesignPhysicalBundle {
  const IssuingPersonalizationDesignPhysicalBundle({this.string = const Omittable.absent(),
this.issuingPhysicalBundle = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingPersonalizationDesignPhysicalBundle._({required this.rawValue, required this.string,
required this.issuingPhysicalBundle,});
  factory IssuingPersonalizationDesignPhysicalBundle.fromJson(Object? json) => IssuingPersonalizationDesignPhysicalBundle._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingPhysicalBundle: parseAnyOfVariant<IssuingPhysicalBundle>(json, (value) => IssuingPhysicalBundle.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingPhysicalBundle> issuingPhysicalBundle;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || issuingPhysicalBundle.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingPhysicalBundle.isPresent) issuingPhysicalBundle.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingPersonalizationDesignPhysicalBundle && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingPersonalizationDesignPhysicalBundle(${toJson()})';
}
