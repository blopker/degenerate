// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_caa_record_request.dart';import 'dns_records_cert_record_request.dart';import 'dns_records_dnskey_record_request.dart';import 'dns_records_ds_record_request.dart';import 'dns_records_https_record_request.dart';import 'dns_records_loc_record_request.dart';import 'dns_records_naptr_record_request.dart';import 'dns_records_smimea_record_request.dart';import 'dns_records_srv_record_request.dart';import 'dns_records_sshfp_record_request.dart';import 'dns_records_svcb_record_request.dart';import 'dns_records_tlsa_record_request.dart';import 'dns_records_uri_record_request.dart';/// A value that is one of: `DnsRecordsCaaRecordRequest`, `DnsRecordsCertRecordRequest`, `DnsRecordsDnskeyRecordRequest`, `DnsRecordsDsRecordRequest`, `DnsRecordsHttpsRecordRequest`, `DnsRecordsLocRecordRequest`, `DnsRecordsNaptrRecordRequest`, `DnsRecordsSmimeaRecordRequest`, `DnsRecordsSrvRecordRequest`, `DnsRecordsSshfpRecordRequest`, `DnsRecordsSvcbRecordRequest`, `DnsRecordsTlsaRecordRequest`, `DnsRecordsUriRecordRequest`.
sealed class DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequest();

factory DnsRecordsDnsRecordWithDataRequest.fromJson(Map<String, dynamic> json) {  if (DnsRecordsCaaRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsCaaRecordRequest(DnsRecordsCaaRecordRequest.fromJson(json));
  }
  if (DnsRecordsCertRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsCertRecordRequest(DnsRecordsCertRecordRequest.fromJson(json));
  }
  if (DnsRecordsDnskeyRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsDnskeyRecordRequest(DnsRecordsDnskeyRecordRequest.fromJson(json));
  }
  if (DnsRecordsDsRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsDsRecordRequest(DnsRecordsDsRecordRequest.fromJson(json));
  }
  if (DnsRecordsHttpsRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsHttpsRecordRequest(DnsRecordsHttpsRecordRequest.fromJson(json));
  }
  if (DnsRecordsLocRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsLocRecordRequest(DnsRecordsLocRecordRequest.fromJson(json));
  }
  if (DnsRecordsNaptrRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsNaptrRecordRequest(DnsRecordsNaptrRecordRequest.fromJson(json));
  }
  if (DnsRecordsSmimeaRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsSmimeaRecordRequest(DnsRecordsSmimeaRecordRequest.fromJson(json));
  }
  if (DnsRecordsSrvRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsSrvRecordRequest(DnsRecordsSrvRecordRequest.fromJson(json));
  }
  if (DnsRecordsSshfpRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsSshfpRecordRequest(DnsRecordsSshfpRecordRequest.fromJson(json));
  }
  if (DnsRecordsSvcbRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsSvcbRecordRequest(DnsRecordsSvcbRecordRequest.fromJson(json));
  }
  if (DnsRecordsTlsaRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsTlsaRecordRequest(DnsRecordsTlsaRecordRequest.fromJson(json));
  }
  if (DnsRecordsUriRecordRequest.canParse(json)) {
    return DnsRecordsDnsRecordWithDataRequestDnsRecordsUriRecordRequest(DnsRecordsUriRecordRequest.fromJson(json));
  }
  return DnsRecordsDnsRecordWithDataRequest$Unknown(json);}

/// The underlying raw value.
dynamic get value;
dynamic toJson() {return value;}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsCaaRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsCaaRecordRequest(this._value);

final DnsRecordsCaaRecordRequest _value;

@override DnsRecordsCaaRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsCaaRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsCaaRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsCertRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsCertRecordRequest(this._value);

final DnsRecordsCertRecordRequest _value;

@override DnsRecordsCertRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsCertRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsCertRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsDnskeyRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsDnskeyRecordRequest(this._value);

final DnsRecordsDnskeyRecordRequest _value;

@override DnsRecordsDnskeyRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsDnskeyRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsDnskeyRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsDsRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsDsRecordRequest(this._value);

final DnsRecordsDsRecordRequest _value;

@override DnsRecordsDsRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsDsRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsDsRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsHttpsRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsHttpsRecordRequest(this._value);

final DnsRecordsHttpsRecordRequest _value;

@override DnsRecordsHttpsRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsHttpsRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsHttpsRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsLocRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsLocRecordRequest(this._value);

final DnsRecordsLocRecordRequest _value;

@override DnsRecordsLocRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsLocRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsLocRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsNaptrRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsNaptrRecordRequest(this._value);

final DnsRecordsNaptrRecordRequest _value;

@override DnsRecordsNaptrRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsNaptrRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsNaptrRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsSmimeaRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsSmimeaRecordRequest(this._value);

final DnsRecordsSmimeaRecordRequest _value;

@override DnsRecordsSmimeaRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsSmimeaRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsSmimeaRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsSrvRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsSrvRecordRequest(this._value);

final DnsRecordsSrvRecordRequest _value;

@override DnsRecordsSrvRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsSrvRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsSrvRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsSshfpRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsSshfpRecordRequest(this._value);

final DnsRecordsSshfpRecordRequest _value;

@override DnsRecordsSshfpRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsSshfpRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsSshfpRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsSvcbRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsSvcbRecordRequest(this._value);

final DnsRecordsSvcbRecordRequest _value;

@override DnsRecordsSvcbRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsSvcbRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsSvcbRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsTlsaRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsTlsaRecordRequest(this._value);

final DnsRecordsTlsaRecordRequest _value;

@override DnsRecordsTlsaRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsTlsaRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsTlsaRecordRequest($_value)';}
}
@immutable final class DnsRecordsDnsRecordWithDataRequestDnsRecordsUriRecordRequest extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequestDnsRecordsUriRecordRequest(this._value);

final DnsRecordsUriRecordRequest _value;

@override DnsRecordsUriRecordRequest get value {return _value;}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequestDnsRecordsUriRecordRequest && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.dnsRecordsUriRecordRequest($_value)';}
}
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class DnsRecordsDnsRecordWithDataRequest$Unknown extends DnsRecordsDnsRecordWithDataRequest {const DnsRecordsDnsRecordWithDataRequest$Unknown(this._value);

final dynamic _value;

@override dynamic get value {return _value ?? '';}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DnsRecordsDnsRecordWithDataRequest$Unknown && _value == other._value;}
@override int get hashCode {return _value.hashCode;}
@override String toString() {return 'DnsRecordsDnsRecordWithDataRequest.unknown($_value)';}
}
