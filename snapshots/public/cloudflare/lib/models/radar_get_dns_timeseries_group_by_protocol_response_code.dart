// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupByProtocolResponseCode {const RadarGetDnsTimeseriesGroupByProtocolResponseCode._(this.value);

factory RadarGetDnsTimeseriesGroupByProtocolResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTimeseriesGroupByProtocolResponseCode._(json),
}; }

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode noerror = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NOERROR');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode formerr = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('FORMERR');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode servfail = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('SERVFAIL');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode nxdomain = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NXDOMAIN');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode notimp = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NOTIMP');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode refused = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('REFUSED');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode yxdomain = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('YXDOMAIN');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode yxrrset = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('YXRRSET');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode nxrrset = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NXRRSET');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode notauth = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NOTAUTH');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode notzone = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('NOTZONE');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badsig = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADSIG');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badkey = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADKEY');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badtime = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADTIME');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badmode = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADMODE');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badname = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADNAME');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badalg = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADALG');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badtrunc = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADTRUNC');

static const RadarGetDnsTimeseriesGroupByProtocolResponseCode badcookie = RadarGetDnsTimeseriesGroupByProtocolResponseCode._('BADCOOKIE');

static const List<RadarGetDnsTimeseriesGroupByProtocolResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByProtocolResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByProtocolResponseCode($value)'; } 
 }
