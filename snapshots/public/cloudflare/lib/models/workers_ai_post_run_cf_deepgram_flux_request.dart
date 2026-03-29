// GENERATED CODE - DO NOT MODIFY BY HAND

/// Encoding of the audio stream. Currently only supports raw signed little-endian 16-bit PCM.
final class WorkersAiPostRunCfDeepgramFluxRequestEncoding {const WorkersAiPostRunCfDeepgramFluxRequestEncoding._(this.value);

factory WorkersAiPostRunCfDeepgramFluxRequestEncoding.fromJson(String json) { return switch (json) {
  'linear16' => linear16,
  _ => WorkersAiPostRunCfDeepgramFluxRequestEncoding._(json),
}; }

static const WorkersAiPostRunCfDeepgramFluxRequestEncoding linear16 = WorkersAiPostRunCfDeepgramFluxRequestEncoding._('linear16');

static const List<WorkersAiPostRunCfDeepgramFluxRequestEncoding> values = [linear16];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunCfDeepgramFluxRequestEncoding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfDeepgramFluxRequestEncoding($value)'; } 
 }
/// Opts out requests from the Deepgram Model Improvement Program. Refer to Deepgram Docs for pricing impacts before setting this to true. https://dpgr.am/deepgram-mip
final class WorkersAiPostRunCfDeepgramFluxRequestMipOptOut {const WorkersAiPostRunCfDeepgramFluxRequestMipOptOut._(this.value);

factory WorkersAiPostRunCfDeepgramFluxRequestMipOptOut.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => WorkersAiPostRunCfDeepgramFluxRequestMipOptOut._(json),
}; }

static const WorkersAiPostRunCfDeepgramFluxRequestMipOptOut $true = WorkersAiPostRunCfDeepgramFluxRequestMipOptOut._('true');

static const WorkersAiPostRunCfDeepgramFluxRequestMipOptOut $false = WorkersAiPostRunCfDeepgramFluxRequestMipOptOut._('false');

static const List<WorkersAiPostRunCfDeepgramFluxRequestMipOptOut> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostRunCfDeepgramFluxRequestMipOptOut && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersAiPostRunCfDeepgramFluxRequestMipOptOut($value)'; } 
 }
final class WorkersAiPostRunCfDeepgramFluxRequest {const WorkersAiPostRunCfDeepgramFluxRequest({this.eagerEotThreshold, required this.encoding, this.eotThreshold = '0.7', this.eotTimeoutMs = '5000', this.keyterm, this.mipOptOut = WorkersAiPostRunCfDeepgramFluxRequestMipOptOut.$false, required this.sampleRate, this.tag, });

factory WorkersAiPostRunCfDeepgramFluxRequest.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunCfDeepgramFluxRequest(
  eagerEotThreshold: json['eager_eot_threshold'] as String?,
  encoding: WorkersAiPostRunCfDeepgramFluxRequestEncoding.fromJson(json['encoding'] as String),
  eotThreshold: json.containsKey('eot_threshold') ? json['eot_threshold'] as String : '0.7',
  eotTimeoutMs: json.containsKey('eot_timeout_ms') ? json['eot_timeout_ms'] as String : '5000',
  keyterm: json['keyterm'] as String?,
  mipOptOut: json.containsKey('mip_opt_out') ? WorkersAiPostRunCfDeepgramFluxRequestMipOptOut.fromJson(json['mip_opt_out'] as String) : WorkersAiPostRunCfDeepgramFluxRequestMipOptOut.$false,
  sampleRate: json['sample_rate'] as String,
  tag: json['tag'] as String?,
); }

/// End-of-turn confidence required to fire an eager end-of-turn event. When set, enables EagerEndOfTurn and TurnResumed events. Valid Values 0.3 - 0.9.
final String? eagerEotThreshold;

/// Encoding of the audio stream. Currently only supports raw signed little-endian 16-bit PCM.
final WorkersAiPostRunCfDeepgramFluxRequestEncoding encoding;

/// End-of-turn confidence required to finish a turn. Valid Values 0.5 - 0.9.
final String eotThreshold;

/// A turn will be finished when this much time has passed after speech, regardless of EOT confidence.
final String eotTimeoutMs;

/// Keyterm prompting can improve recognition of specialized terminology. Pass multiple keyterm query parameters to boost multiple keyterms.
final String? keyterm;

/// Opts out requests from the Deepgram Model Improvement Program. Refer to Deepgram Docs for pricing impacts before setting this to true. https://dpgr.am/deepgram-mip
final WorkersAiPostRunCfDeepgramFluxRequestMipOptOut mipOptOut;

/// Sample rate of the audio stream in Hz.
final String sampleRate;

/// Label your requests for the purpose of identification during usage reporting
final String? tag;

Map<String, dynamic> toJson() { return {
  'eager_eot_threshold': ?eagerEotThreshold,
  'encoding': encoding.toJson(),
  'eot_threshold': eotThreshold,
  'eot_timeout_ms': eotTimeoutMs,
  'keyterm': ?keyterm,
  'mip_opt_out': mipOptOut.toJson(),
  'sample_rate': sampleRate,
  'tag': ?tag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('encoding') &&
      json.containsKey('sample_rate') && json['sample_rate'] is String; } 
WorkersAiPostRunCfDeepgramFluxRequest copyWith({String Function()? eagerEotThreshold, WorkersAiPostRunCfDeepgramFluxRequestEncoding? encoding, String Function()? eotThreshold, String Function()? eotTimeoutMs, String Function()? keyterm, WorkersAiPostRunCfDeepgramFluxRequestMipOptOut Function()? mipOptOut, String? sampleRate, String Function()? tag, }) { return WorkersAiPostRunCfDeepgramFluxRequest(
  eagerEotThreshold: eagerEotThreshold != null ? eagerEotThreshold() : this.eagerEotThreshold,
  encoding: encoding ?? this.encoding,
  eotThreshold: eotThreshold != null ? eotThreshold() : this.eotThreshold,
  eotTimeoutMs: eotTimeoutMs != null ? eotTimeoutMs() : this.eotTimeoutMs,
  keyterm: keyterm != null ? keyterm() : this.keyterm,
  mipOptOut: mipOptOut != null ? mipOptOut() : this.mipOptOut,
  sampleRate: sampleRate ?? this.sampleRate,
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunCfDeepgramFluxRequest &&
          eagerEotThreshold == other.eagerEotThreshold &&
          encoding == other.encoding &&
          eotThreshold == other.eotThreshold &&
          eotTimeoutMs == other.eotTimeoutMs &&
          keyterm == other.keyterm &&
          mipOptOut == other.mipOptOut &&
          sampleRate == other.sampleRate &&
          tag == other.tag; } 
@override int get hashCode { return Object.hash(eagerEotThreshold, encoding, eotThreshold, eotTimeoutMs, keyterm, mipOptOut, sampleRate, tag); } 
@override String toString() { return 'WorkersAiPostRunCfDeepgramFluxRequest(eagerEotThreshold: $eagerEotThreshold, encoding: $encoding, eotThreshold: $eotThreshold, eotTimeoutMs: $eotTimeoutMs, keyterm: $keyterm, mipOptOut: $mipOptOut, sampleRate: $sampleRate, tag: $tag)'; } 
 }
