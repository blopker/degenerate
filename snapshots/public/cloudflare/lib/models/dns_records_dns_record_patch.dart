// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_a_record.dart';import 'dns_records_aaaa_record.dart';import 'dns_records_cname_record.dart';import 'dns_records_dns_record_with_data.dart';import 'dns_records_dns_record_without_data.dart';import 'dns_records_mx_record.dart';import 'dns_records_ns_record.dart';import 'dns_records_openpgpkey_record.dart';import 'dns_records_ptr_record.dart';import 'dns_records_txt_record.dart';
@immutable
final class DnsRecordsDnsRecordPatch {
  const DnsRecordsDnsRecordPatch({this.dnsRecordsDnsRecordWithoutData = const Omittable.absent(),
this.dnsRecordsDnsRecordWithData = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DnsRecordsDnsRecordPatch._({required this.rawValue, required this.dnsRecordsDnsRecordWithoutData,
required this.dnsRecordsDnsRecordWithData,});
  factory DnsRecordsDnsRecordPatch.fromJson(Object? json) => DnsRecordsDnsRecordPatch._(
    rawValue: Omittable(json),
    dnsRecordsDnsRecordWithoutData: parseAnyOfVariant<DnsRecordsDnsRecordWithoutData>(json, (value) => OneOf8.parse(value, fromA: (v) => DnsRecordsARecord.fromJson(v as Map<String, dynamic>), fromB: (v) => DnsRecordsAaaaRecord.fromJson(v as Map<String, dynamic>), fromC: (v) => DnsRecordsCnameRecord.fromJson(v as Map<String, dynamic>), fromD: (v) => DnsRecordsMxRecord.fromJson(v as Map<String, dynamic>), fromE: (v) => DnsRecordsNsRecord.fromJson(v as Map<String, dynamic>), fromF: (v) => DnsRecordsOpenpgpkeyRecord.fromJson(v as Map<String, dynamic>), fromG: (v) => DnsRecordsPtrRecord.fromJson(v as Map<String, dynamic>), fromH: (v) => DnsRecordsTxtRecord.fromJson(v as Map<String, dynamic>),)),
dnsRecordsDnsRecordWithData: parseAnyOfVariant<DnsRecordsDnsRecordWithData>(json, (value) => DnsRecordsDnsRecordWithData.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DnsRecordsDnsRecordWithoutData> dnsRecordsDnsRecordWithoutData;
final Omittable<DnsRecordsDnsRecordWithData> dnsRecordsDnsRecordWithData;

  /// Whether at least one known variant matched.
  bool get isValid => dnsRecordsDnsRecordWithoutData.isPresent || dnsRecordsDnsRecordWithData.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dnsRecordsDnsRecordWithoutData.isPresent) dnsRecordsDnsRecordWithoutData.value?.toJson(),
if (dnsRecordsDnsRecordWithData.isPresent) dnsRecordsDnsRecordWithData.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DnsRecordsDnsRecordPatch && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DnsRecordsDnsRecordPatch(${toJson()})';
}
