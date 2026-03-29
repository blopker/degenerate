// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCtTimeseriesGroupSignatureAlgorithm {const RadarGetCtTimeseriesGroupSignatureAlgorithm._(this.value);

factory RadarGetCtTimeseriesGroupSignatureAlgorithm.fromJson(String json) { return switch (json) {
  'DSA_SHA_1' => dsaSha1,
  'DSA_SHA_256' => dsaSha256,
  'ECDSA_SHA_1' => ecdsaSha1,
  'ECDSA_SHA_256' => ecdsaSha256,
  'ECDSA_SHA_384' => ecdsaSha384,
  'ECDSA_SHA_512' => ecdsaSha512,
  'PSS_SHA_256' => pssSha256,
  'PSS_SHA_384' => pssSha384,
  'PSS_SHA_512' => pssSha512,
  'RSA_MD2' => rsaMd2,
  'RSA_MD5' => rsaMd5,
  'RSA_SHA_1' => rsaSha1,
  'RSA_SHA_256' => rsaSha256,
  'RSA_SHA_384' => rsaSha384,
  'RSA_SHA_512' => rsaSha512,
  _ => RadarGetCtTimeseriesGroupSignatureAlgorithm._(json),
}; }

static const RadarGetCtTimeseriesGroupSignatureAlgorithm dsaSha1 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('DSA_SHA_1');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm dsaSha256 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('DSA_SHA_256');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm ecdsaSha1 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('ECDSA_SHA_1');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm ecdsaSha256 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('ECDSA_SHA_256');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm ecdsaSha384 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('ECDSA_SHA_384');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm ecdsaSha512 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('ECDSA_SHA_512');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm pssSha256 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('PSS_SHA_256');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm pssSha384 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('PSS_SHA_384');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm pssSha512 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('PSS_SHA_512');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaMd2 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_MD2');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaMd5 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_MD5');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaSha1 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_SHA_1');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaSha256 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_SHA_256');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaSha384 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_SHA_384');

static const RadarGetCtTimeseriesGroupSignatureAlgorithm rsaSha512 = RadarGetCtTimeseriesGroupSignatureAlgorithm._('RSA_SHA_512');

static const List<RadarGetCtTimeseriesGroupSignatureAlgorithm> values = [dsaSha1, dsaSha256, ecdsaSha1, ecdsaSha256, ecdsaSha384, ecdsaSha512, pssSha256, pssSha384, pssSha512, rsaMd2, rsaMd5, rsaSha1, rsaSha256, rsaSha384, rsaSha512];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupSignatureAlgorithm && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupSignatureAlgorithm($value)'; } 
 }
