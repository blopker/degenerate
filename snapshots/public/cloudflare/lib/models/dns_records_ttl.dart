// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsTtlVariant2 {const DnsRecordsTtlVariant2._(this.value);

factory DnsRecordsTtlVariant2.fromJson(double json) {return switch (json) {
  1 => $1,
  _ => DnsRecordsTtlVariant2._(json),
};}

static const DnsRecordsTtlVariant2 $1 = DnsRecordsTtlVariant2._(1);

static const List<DnsRecordsTtlVariant2> values = [$1];

final double value;

double toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsTtlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'DnsRecordsTtlVariant2($value)';}
}
/// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
@immutable
final class DnsRecordsTtl {
  const DnsRecordsTtl({this.$double = const Omittable.absent(),
this.dnsRecordsTtlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DnsRecordsTtl._({required this.rawValue, required this.$double,
required this.dnsRecordsTtlVariant2,});
  factory DnsRecordsTtl.fromJson(Object? json) => DnsRecordsTtl._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
dnsRecordsTtlVariant2: parseAnyOfVariant<DnsRecordsTtlVariant2>(json, (value) => DnsRecordsTtlVariant2.fromJson((value! as num).toDouble())),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<DnsRecordsTtlVariant2> dnsRecordsTtlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || dnsRecordsTtlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (dnsRecordsTtlVariant2.isPresent) dnsRecordsTtlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DnsRecordsTtl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DnsRecordsTtl(${toJson()})';
}
