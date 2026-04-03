// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_caa_record.dart';import 'dns_records_cert_record.dart';import 'dns_records_dnskey_record.dart';import 'dns_records_ds_record.dart';import 'dns_records_https_record.dart';import 'dns_records_loc_record.dart';import 'dns_records_naptr_record.dart';import 'dns_records_smimea_record.dart';import 'dns_records_srv_record.dart';import 'dns_records_sshfp_record.dart';import 'dns_records_svcb_record.dart';import 'dns_records_tlsa_record.dart';import 'dns_records_uri_record.dart';/// A value that is one of: `DnsRecordsCaaRecord`, `DnsRecordsCertRecord`, `DnsRecordsDnskeyRecord`, `DnsRecordsDsRecord`, `DnsRecordsHttpsRecord`, `DnsRecordsLocRecord`, `DnsRecordsNaptrRecord`, `DnsRecordsSmimeaRecord`, `DnsRecordsSrvRecord`, `DnsRecordsSshfpRecord`, `DnsRecordsSvcbRecord`, `DnsRecordsTlsaRecord`, `DnsRecordsUriRecord`.
sealed class DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithData();

factory DnsRecordsDnsRecordWithData.fromJson(Map<String, dynamic> json) {   if (DnsRecordsCaaRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsCaaRecord(DnsRecordsCaaRecord.fromJson(json));
  }
  if (DnsRecordsCertRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsCertRecord(DnsRecordsCertRecord.fromJson(json));
  }
  if (DnsRecordsDnskeyRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsDnskeyRecord(DnsRecordsDnskeyRecord.fromJson(json));
  }
  if (DnsRecordsDsRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsDsRecord(DnsRecordsDsRecord.fromJson(json));
  }
  if (DnsRecordsHttpsRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsHttpsRecord(DnsRecordsHttpsRecord.fromJson(json));
  }
  if (DnsRecordsLocRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsLocRecord(DnsRecordsLocRecord.fromJson(json));
  }
  if (DnsRecordsNaptrRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsNaptrRecord(DnsRecordsNaptrRecord.fromJson(json));
  }
  if (DnsRecordsSmimeaRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsSmimeaRecord(DnsRecordsSmimeaRecord.fromJson(json));
  }
  if (DnsRecordsSrvRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsSrvRecord(DnsRecordsSrvRecord.fromJson(json));
  }
  if (DnsRecordsSshfpRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsSshfpRecord(DnsRecordsSshfpRecord.fromJson(json));
  }
  if (DnsRecordsSvcbRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsSvcbRecord(DnsRecordsSvcbRecord.fromJson(json));
  }
  if (DnsRecordsTlsaRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsTlsaRecord(DnsRecordsTlsaRecord.fromJson(json));
  }
  if (DnsRecordsUriRecord.canParse(json)) {
    return DnsRecordsDnsRecordWithDataDnsRecordsUriRecord(DnsRecordsUriRecord.fromJson(json));
  }
  return DnsRecordsDnsRecordWithData$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsCaaRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsCaaRecord(this._value);

final DnsRecordsCaaRecord _value;

@override DnsRecordsCaaRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsCaaRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsCaaRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsCertRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsCertRecord(this._value);

final DnsRecordsCertRecord _value;

@override DnsRecordsCertRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsCertRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsCertRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsDnskeyRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsDnskeyRecord(this._value);

final DnsRecordsDnskeyRecord _value;

@override DnsRecordsDnskeyRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsDnskeyRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsDnskeyRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsDsRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsDsRecord(this._value);

final DnsRecordsDsRecord _value;

@override DnsRecordsDsRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsDsRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsDsRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsHttpsRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsHttpsRecord(this._value);

final DnsRecordsHttpsRecord _value;

@override DnsRecordsHttpsRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsHttpsRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsHttpsRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsLocRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsLocRecord(this._value);

final DnsRecordsLocRecord _value;

@override DnsRecordsLocRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsLocRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsLocRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsNaptrRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsNaptrRecord(this._value);

final DnsRecordsNaptrRecord _value;

@override DnsRecordsNaptrRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsNaptrRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsNaptrRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsSmimeaRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsSmimeaRecord(this._value);

final DnsRecordsSmimeaRecord _value;

@override DnsRecordsSmimeaRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsSmimeaRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsSmimeaRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsSrvRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsSrvRecord(this._value);

final DnsRecordsSrvRecord _value;

@override DnsRecordsSrvRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsSrvRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsSrvRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsSshfpRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsSshfpRecord(this._value);

final DnsRecordsSshfpRecord _value;

@override DnsRecordsSshfpRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsSshfpRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsSshfpRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsSvcbRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsSvcbRecord(this._value);

final DnsRecordsSvcbRecord _value;

@override DnsRecordsSvcbRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsSvcbRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsSvcbRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsTlsaRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsTlsaRecord(this._value);

final DnsRecordsTlsaRecord _value;

@override DnsRecordsTlsaRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsTlsaRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsTlsaRecord($_value)'; } 
 }
@immutable final class DnsRecordsDnsRecordWithDataDnsRecordsUriRecord extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithDataDnsRecordsUriRecord(this._value);

final DnsRecordsUriRecord _value;

@override DnsRecordsUriRecord get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataDnsRecordsUriRecord && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.dnsRecordsUriRecord($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class DnsRecordsDnsRecordWithData$Unknown extends DnsRecordsDnsRecordWithData {const DnsRecordsDnsRecordWithData$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DnsRecordsDnsRecordWithData$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DnsRecordsDnsRecordWithData.unknown($_value)'; } 
 }
