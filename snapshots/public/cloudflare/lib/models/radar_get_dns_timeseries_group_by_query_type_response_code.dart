// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByQueryTypeResponseCode {const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._(this.value);

factory RadarGetDnsTimeseriesGroupByQueryTypeResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._(json),
}; }

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode noerror = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NOERROR');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode formerr = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('FORMERR');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode servfail = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('SERVFAIL');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode nxdomain = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NXDOMAIN');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode notimp = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NOTIMP');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode refused = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('REFUSED');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode yxdomain = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('YXDOMAIN');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode yxrrset = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('YXRRSET');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode nxrrset = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NXRRSET');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode notauth = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NOTAUTH');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode notzone = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('NOTZONE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badsig = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADSIG');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badkey = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADKEY');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badtime = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADTIME');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badmode = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADMODE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badname = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADNAME');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badalg = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADALG');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badtrunc = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADTRUNC');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseCode badcookie = RadarGetDnsTimeseriesGroupByQueryTypeResponseCode._('BADCOOKIE');

static const List<RadarGetDnsTimeseriesGroupByQueryTypeResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByQueryTypeResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeResponseCode($value)'; } 
 }
