// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode noerror = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NOERROR');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode formerr = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('FORMERR');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode servfail = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('SERVFAIL');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode nxdomain = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NXDOMAIN');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode notimp = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NOTIMP');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode refused = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('REFUSED');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode yxdomain = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('YXDOMAIN');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode yxrrset = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('YXRRSET');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode nxrrset = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NXRRSET');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode notauth = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NOTAUTH');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode notzone = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('NOTZONE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badsig = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADSIG');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badkey = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADKEY');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badtime = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADTIME');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badmode = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADMODE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badname = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADNAME');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badalg = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADALG');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badtrunc = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADTRUNC');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode badcookie = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode._('BADCOOKIE');

static const List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseCode($value)'; } 
 }
