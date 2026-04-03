// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryByCacheHitStatusResponseCode {const RadarGetDnsSummaryByCacheHitStatusResponseCode._(this.value);

factory RadarGetDnsSummaryByCacheHitStatusResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsSummaryByCacheHitStatusResponseCode._(json),
}; }

static const RadarGetDnsSummaryByCacheHitStatusResponseCode noerror = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NOERROR');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode formerr = RadarGetDnsSummaryByCacheHitStatusResponseCode._('FORMERR');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode servfail = RadarGetDnsSummaryByCacheHitStatusResponseCode._('SERVFAIL');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode nxdomain = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NXDOMAIN');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode notimp = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NOTIMP');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode refused = RadarGetDnsSummaryByCacheHitStatusResponseCode._('REFUSED');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode yxdomain = RadarGetDnsSummaryByCacheHitStatusResponseCode._('YXDOMAIN');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode yxrrset = RadarGetDnsSummaryByCacheHitStatusResponseCode._('YXRRSET');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode nxrrset = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NXRRSET');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode notauth = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NOTAUTH');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode notzone = RadarGetDnsSummaryByCacheHitStatusResponseCode._('NOTZONE');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badsig = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADSIG');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badkey = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADKEY');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badtime = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADTIME');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badmode = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADMODE');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badname = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADNAME');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badalg = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADALG');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badtrunc = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADTRUNC');

static const RadarGetDnsSummaryByCacheHitStatusResponseCode badcookie = RadarGetDnsSummaryByCacheHitStatusResponseCode._('BADCOOKIE');

static const List<RadarGetDnsSummaryByCacheHitStatusResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByCacheHitStatusResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByCacheHitStatusResponseCode($value)'; } 
 }
