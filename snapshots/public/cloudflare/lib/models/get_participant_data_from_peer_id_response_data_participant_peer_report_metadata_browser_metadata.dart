// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata {const GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata({this.browser, this.browserVersion, this.engine, this.userAgent, this.webglSupport, });

factory GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata(
  browser: json['browser'] as String?,
  browserVersion: json['browser_version'] as String?,
  engine: json['engine'] as String?,
  userAgent: json['user_agent'] as String?,
  webglSupport: json['webgl_support'] as String?,
); }

final String? browser;

final String? browserVersion;

final String? engine;

final String? userAgent;

final String? webglSupport;

Map<String, dynamic> toJson() { return {
  'browser': ?browser,
  'browser_version': ?browserVersion,
  'engine': ?engine,
  'user_agent': ?userAgent,
  'webgl_support': ?webglSupport,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'browser', 'browser_version', 'engine', 'user_agent', 'webgl_support'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata copyWith({String Function()? browser, String Function()? browserVersion, String Function()? engine, String Function()? userAgent, String Function()? webglSupport, }) { return GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata(
  browser: browser != null ? browser() : this.browser,
  browserVersion: browserVersion != null ? browserVersion() : this.browserVersion,
  engine: engine != null ? engine() : this.engine,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
  webglSupport: webglSupport != null ? webglSupport() : this.webglSupport,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata &&
          browser == other.browser &&
          browserVersion == other.browserVersion &&
          engine == other.engine &&
          userAgent == other.userAgent &&
          webglSupport == other.webglSupport; } 
@override int get hashCode { return Object.hash(browser, browserVersion, engine, userAgent, webglSupport); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantPeerReportMetadataBrowserMetadata(browser: $browser, browserVersion: $browserVersion, engine: $engine, userAgent: $userAgent, webglSupport: $webglSupport)'; } 
 }
