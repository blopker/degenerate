// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EmailDnsRecordTtlVariant2 {const EmailDnsRecordTtlVariant2._(this.value);

factory EmailDnsRecordTtlVariant2.fromJson(double json) { return switch (json) {
  1 => $1,
  _ => EmailDnsRecordTtlVariant2._(json),
}; }

static const EmailDnsRecordTtlVariant2 $1 = EmailDnsRecordTtlVariant2._(1);

static const List<EmailDnsRecordTtlVariant2> values = [$1];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailDnsRecordTtlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailDnsRecordTtlVariant2($value)'; } 
 }
typedef EmailDnsRecordTtl = OneOf2<double,EmailDnsRecordTtlVariant2>;