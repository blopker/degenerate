// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupByDnssecResponseCode {const RadarGetDnsTimeseriesGroupByDnssecResponseCode._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTimeseriesGroupByDnssecResponseCode._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode noerror = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NOERROR');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode formerr = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('FORMERR');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode servfail = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('SERVFAIL');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode nxdomain = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NXDOMAIN');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode notimp = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NOTIMP');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode refused = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('REFUSED');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode yxdomain = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('YXDOMAIN');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode yxrrset = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('YXRRSET');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode nxrrset = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NXRRSET');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode notauth = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NOTAUTH');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode notzone = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('NOTZONE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badsig = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADSIG');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badkey = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADKEY');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badtime = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADTIME');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badmode = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADMODE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badname = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADNAME');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badalg = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADALG');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badtrunc = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADTRUNC');

static const RadarGetDnsTimeseriesGroupByDnssecResponseCode badcookie = RadarGetDnsTimeseriesGroupByDnssecResponseCode._('BADCOOKIE');

static const List<RadarGetDnsTimeseriesGroupByDnssecResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecResponseCode($value)'; } 
 }
