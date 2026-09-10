// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailDnsRecordTtlVariant2 {const EmailDnsRecordTtlVariant2._(this.value);

factory EmailDnsRecordTtlVariant2.fromJson(double json) {return switch (json) {
  1 => $1,
  _ => EmailDnsRecordTtlVariant2._(json),
};}

static const EmailDnsRecordTtlVariant2 $1 = EmailDnsRecordTtlVariant2._(1);

static const List<EmailDnsRecordTtlVariant2> values = [$1];

final double value;

double toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is EmailDnsRecordTtlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'EmailDnsRecordTtlVariant2($value)';}
}
/// Time to live, in seconds, of the DNS record. Must be between 60 and 86400, or 1 for 'automatic'.
@immutable
final class EmailDnsRecordTtl {
  const EmailDnsRecordTtl({this.$double = const Omittable.absent(),
this.emailDnsRecordTtlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const EmailDnsRecordTtl._({required this.rawValue, required this.$double,
required this.emailDnsRecordTtlVariant2,});
  factory EmailDnsRecordTtl.fromJson(Object? json) => EmailDnsRecordTtl._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
emailDnsRecordTtlVariant2: parseAnyOfVariant<EmailDnsRecordTtlVariant2>(json, (value) => EmailDnsRecordTtlVariant2.fromJson((value! as num).toDouble())),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<EmailDnsRecordTtlVariant2> emailDnsRecordTtlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || emailDnsRecordTtlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (emailDnsRecordTtlVariant2.isPresent) emailDnsRecordTtlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is EmailDnsRecordTtl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'EmailDnsRecordTtl(${toJson()})';
}
