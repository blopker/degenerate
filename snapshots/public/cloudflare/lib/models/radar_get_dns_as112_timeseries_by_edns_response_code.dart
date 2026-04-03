// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsAs112TimeseriesByEdnsResponseCode {const RadarGetDnsAs112TimeseriesByEdnsResponseCode._(this.value);

factory RadarGetDnsAs112TimeseriesByEdnsResponseCode.fromJson(String json) { return switch (json) {
  'NOERROR' => noerror,
  'FORMERR' => formerr,
  'SERVFAIL' => servfail,
  'NXDOMAIN' => nxdomain,
  'NOTIMP' => notimp,
  'REFUSED' => refused,
  'YXDOMAIN' => yxdomain,
  'YXRRSET' => yxrrset,
  'NXRRSET' => nxrrset,
  'NOTAUTH' => notauth,
  'NOTZONE' => notzone,
  'BADSIG' => badsig,
  'BADKEY' => badkey,
  'BADTIME' => badtime,
  'BADMODE' => badmode,
  'BADNAME' => badname,
  'BADALG' => badalg,
  'BADTRUNC' => badtrunc,
  'BADCOOKIE' => badcookie,
  _ => RadarGetDnsAs112TimeseriesByEdnsResponseCode._(json),
}; }

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode noerror = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NOERROR');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode formerr = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('FORMERR');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode servfail = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('SERVFAIL');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode nxdomain = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NXDOMAIN');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode notimp = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NOTIMP');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode refused = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('REFUSED');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode yxdomain = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('YXDOMAIN');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode yxrrset = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('YXRRSET');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode nxrrset = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NXRRSET');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode notauth = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NOTAUTH');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode notzone = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('NOTZONE');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badsig = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADSIG');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badkey = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADKEY');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badtime = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADTIME');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badmode = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADMODE');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badname = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADNAME');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badalg = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADALG');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badtrunc = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADTRUNC');

static const RadarGetDnsAs112TimeseriesByEdnsResponseCode badcookie = RadarGetDnsAs112TimeseriesByEdnsResponseCode._('BADCOOKIE');

static const List<RadarGetDnsAs112TimeseriesByEdnsResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByEdnsResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByEdnsResponseCode($value)'; } 
 }
