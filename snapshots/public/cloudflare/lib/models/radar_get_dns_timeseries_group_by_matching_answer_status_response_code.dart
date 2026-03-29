// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode {const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._(this.value);

factory RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode.fromJson(String json) { return switch (json) {
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
  _ => RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._(json),
}; }

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode noerror = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NOERROR');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode formerr = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('FORMERR');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode servfail = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('SERVFAIL');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode nxdomain = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NXDOMAIN');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode notimp = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NOTIMP');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode refused = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('REFUSED');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode yxdomain = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('YXDOMAIN');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode yxrrset = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('YXRRSET');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode nxrrset = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NXRRSET');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode notauth = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NOTAUTH');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode notzone = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('NOTZONE');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badsig = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADSIG');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badkey = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADKEY');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badtime = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADTIME');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badmode = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADMODE');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badname = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADNAME');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badalg = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADALG');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badtrunc = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADTRUNC');

static const RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode badcookie = RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode._('BADCOOKIE');

static const List<RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode> values = [noerror, formerr, servfail, nxdomain, notimp, refused, yxdomain, yxrrset, nxrrset, notauth, notzone, badsig, badkey, badtime, badmode, badname, badalg, badtrunc, badcookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByMatchingAnswerStatusResponseCode($value)'; } 
 }
