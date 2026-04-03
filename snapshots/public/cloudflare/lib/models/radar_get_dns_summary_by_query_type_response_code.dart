// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryByQueryTypeResponseCode {const RadarGetDnsSummaryByQueryTypeResponseCode._(this.value);

factory RadarGetDnsSummaryByQueryTypeResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsSummaryByQueryTypeResponseCode._(json),
}; }

static const RadarGetDnsSummaryByQueryTypeResponseCode noerror = RadarGetDnsSummaryByQueryTypeResponseCode._('NOERROR');

static const RadarGetDnsSummaryByQueryTypeResponseCode formerr = RadarGetDnsSummaryByQueryTypeResponseCode._('FORMERR');

static const RadarGetDnsSummaryByQueryTypeResponseCode servfail = RadarGetDnsSummaryByQueryTypeResponseCode._('SERVFAIL');

static const RadarGetDnsSummaryByQueryTypeResponseCode nxdomain = RadarGetDnsSummaryByQueryTypeResponseCode._('NXDOMAIN');

static const RadarGetDnsSummaryByQueryTypeResponseCode notimp = RadarGetDnsSummaryByQueryTypeResponseCode._('NOTIMP');

static const RadarGetDnsSummaryByQueryTypeResponseCode refused = RadarGetDnsSummaryByQueryTypeResponseCode._('REFUSED');

static const RadarGetDnsSummaryByQueryTypeResponseCode yxdomain = RadarGetDnsSummaryByQueryTypeResponseCode._('YXDOMAIN');

static const RadarGetDnsSummaryByQueryTypeResponseCode yxrrset = RadarGetDnsSummaryByQueryTypeResponseCode._('YXRRSET');

static const RadarGetDnsSummaryByQueryTypeResponseCode nxrrset = RadarGetDnsSummaryByQueryTypeResponseCode._('NXRRSET');

static const RadarGetDnsSummaryByQueryTypeResponseCode notauth = RadarGetDnsSummaryByQueryTypeResponseCode._('NOTAUTH');

static const RadarGetDnsSummaryByQueryTypeResponseCode notzone = RadarGetDnsSummaryByQueryTypeResponseCode._('NOTZONE');

static const RadarGetDnsSummaryByQueryTypeResponseCode badsig = RadarGetDnsSummaryByQueryTypeResponseCode._('BADSIG');

static const RadarGetDnsSummaryByQueryTypeResponseCode badkey = RadarGetDnsSummaryByQueryTypeResponseCode._('BADKEY');

static const RadarGetDnsSummaryByQueryTypeResponseCode badtime = RadarGetDnsSummaryByQueryTypeResponseCode._('BADTIME');

static const RadarGetDnsSummaryByQueryTypeResponseCode badmode = RadarGetDnsSummaryByQueryTypeResponseCode._('BADMODE');

static const RadarGetDnsSummaryByQueryTypeResponseCode badname = RadarGetDnsSummaryByQueryTypeResponseCode._('BADNAME');

static const RadarGetDnsSummaryByQueryTypeResponseCode badalg = RadarGetDnsSummaryByQueryTypeResponseCode._('BADALG');

static const RadarGetDnsSummaryByQueryTypeResponseCode badtrunc = RadarGetDnsSummaryByQueryTypeResponseCode._('BADTRUNC');

static const RadarGetDnsSummaryByQueryTypeResponseCode badcookie = RadarGetDnsSummaryByQueryTypeResponseCode._('BADCOOKIE');

static const List<RadarGetDnsSummaryByQueryTypeResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByQueryTypeResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByQueryTypeResponseCode($value)'; } 
 }
