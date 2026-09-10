// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigListGatewayLogsFeedbackVariant1 {const AigConfigListGatewayLogsFeedbackVariant1._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant1.fromJson(double json) {return switch (json) {
  -1 => minus1,
  _ => AigConfigListGatewayLogsFeedbackVariant1._(json),
};}

static const AigConfigListGatewayLogsFeedbackVariant1 minus1 = AigConfigListGatewayLogsFeedbackVariant1._(-1);

static const List<AigConfigListGatewayLogsFeedbackVariant1> values = [minus1];

final double value;

double toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AigConfigListGatewayLogsFeedbackVariant1($value)';}
}
@immutable final class AigConfigListGatewayLogsFeedbackVariant2 {const AigConfigListGatewayLogsFeedbackVariant2._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant2.fromJson(double json) {return switch (json) {
  0 => $0,
  _ => AigConfigListGatewayLogsFeedbackVariant2._(json),
};}

static const AigConfigListGatewayLogsFeedbackVariant2 $0 = AigConfigListGatewayLogsFeedbackVariant2._(0);

static const List<AigConfigListGatewayLogsFeedbackVariant2> values = [$0];

final double value;

double toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AigConfigListGatewayLogsFeedbackVariant2($value)';}
}
@immutable final class AigConfigListGatewayLogsFeedbackVariant3 {const AigConfigListGatewayLogsFeedbackVariant3._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant3.fromJson(double json) {return switch (json) {
  1 => $1,
  _ => AigConfigListGatewayLogsFeedbackVariant3._(json),
};}

static const AigConfigListGatewayLogsFeedbackVariant3 $1 = AigConfigListGatewayLogsFeedbackVariant3._(1);

static const List<AigConfigListGatewayLogsFeedbackVariant3> values = [$1];

final double value;

double toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant3 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AigConfigListGatewayLogsFeedbackVariant3($value)';}
}

@immutable
final class AigConfigListGatewayLogsFeedback {
  const AigConfigListGatewayLogsFeedback({this.aigConfigListGatewayLogsFeedbackVariant1 = const Omittable.absent(),
this.aigConfigListGatewayLogsFeedbackVariant2 = const Omittable.absent(),
this.aigConfigListGatewayLogsFeedbackVariant3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AigConfigListGatewayLogsFeedback._({required this.rawValue, required this.aigConfigListGatewayLogsFeedbackVariant1,
required this.aigConfigListGatewayLogsFeedbackVariant2,
required this.aigConfigListGatewayLogsFeedbackVariant3,});
  factory AigConfigListGatewayLogsFeedback.fromJson(Object? json) => AigConfigListGatewayLogsFeedback._(
    rawValue: Omittable(json),
    aigConfigListGatewayLogsFeedbackVariant1: parseAnyOfVariant<AigConfigListGatewayLogsFeedbackVariant1>(json, (value) => AigConfigListGatewayLogsFeedbackVariant1.fromJson((value! as num).toDouble())),
aigConfigListGatewayLogsFeedbackVariant2: parseAnyOfVariant<AigConfigListGatewayLogsFeedbackVariant2>(json, (value) => AigConfigListGatewayLogsFeedbackVariant2.fromJson((value! as num).toDouble())),
aigConfigListGatewayLogsFeedbackVariant3: parseAnyOfVariant<AigConfigListGatewayLogsFeedbackVariant3>(json, (value) => AigConfigListGatewayLogsFeedbackVariant3.fromJson((value! as num).toDouble())),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AigConfigListGatewayLogsFeedbackVariant1> aigConfigListGatewayLogsFeedbackVariant1;
final Omittable<AigConfigListGatewayLogsFeedbackVariant2> aigConfigListGatewayLogsFeedbackVariant2;
final Omittable<AigConfigListGatewayLogsFeedbackVariant3> aigConfigListGatewayLogsFeedbackVariant3;

  /// Whether at least one known variant matched.
  bool get isValid => aigConfigListGatewayLogsFeedbackVariant1.isPresent || aigConfigListGatewayLogsFeedbackVariant2.isPresent || aigConfigListGatewayLogsFeedbackVariant3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (aigConfigListGatewayLogsFeedbackVariant1.isPresent) aigConfigListGatewayLogsFeedbackVariant1.value?.toJson(),
if (aigConfigListGatewayLogsFeedbackVariant2.isPresent) aigConfigListGatewayLogsFeedbackVariant2.value?.toJson(),
if (aigConfigListGatewayLogsFeedbackVariant3.isPresent) aigConfigListGatewayLogsFeedbackVariant3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AigConfigListGatewayLogsFeedback && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AigConfigListGatewayLogsFeedback(${toJson()})';
}
