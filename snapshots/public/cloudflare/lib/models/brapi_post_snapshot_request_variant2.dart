// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_snapshot_request_variant2_add_script_tag.dart';import 'brapi_post_snapshot_request_variant2_add_style_tag.dart';import 'brapi_post_snapshot_request_variant2_authenticate.dart';import 'brapi_post_snapshot_request_variant2_cookies.dart';import 'brapi_post_snapshot_request_variant2_goto_options.dart';import 'brapi_post_snapshot_request_variant2_screenshot_options.dart';import 'brapi_post_snapshot_request_variant2_viewport.dart';import 'brapi_post_snapshot_request_variant2_wait_for_selector.dart';final class BrapiPostSnapshotRequestVariant2AllowResourceTypes {const BrapiPostSnapshotRequestVariant2AllowResourceTypes._(this.value);

factory BrapiPostSnapshotRequestVariant2AllowResourceTypes.fromJson(String json) { return switch (json) {
  'document' => document,
  'stylesheet' => stylesheet,
  'image' => image,
  'media' => media,
  'font' => font,
  'script' => script,
  'texttrack' => texttrack,
  'xhr' => xhr,
  'fetch' => fetch,
  'prefetch' => prefetch,
  'eventsource' => eventsource,
  'websocket' => websocket,
  'manifest' => manifest,
  'signedexchange' => signedexchange,
  'ping' => ping,
  'cspviolationreport' => cspviolationreport,
  'preflight' => preflight,
  'other' => $other,
  _ => BrapiPostSnapshotRequestVariant2AllowResourceTypes._(json),
}; }

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes document = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('document');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes stylesheet = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('stylesheet');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes image = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('image');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes media = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('media');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes font = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('font');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes script = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('script');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes texttrack = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('texttrack');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes xhr = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('xhr');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes fetch = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('fetch');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes prefetch = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('prefetch');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes eventsource = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('eventsource');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes websocket = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('websocket');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes manifest = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('manifest');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes signedexchange = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('signedexchange');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes ping = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('ping');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes cspviolationreport = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('cspviolationreport');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes preflight = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('preflight');

static const BrapiPostSnapshotRequestVariant2AllowResourceTypes $other = BrapiPostSnapshotRequestVariant2AllowResourceTypes._('other');

static const List<BrapiPostSnapshotRequestVariant2AllowResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotRequestVariant2AllowResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant2AllowResourceTypes($value)'; } 
 }
final class BrapiPostSnapshotRequestVariant2RejectResourceTypes {const BrapiPostSnapshotRequestVariant2RejectResourceTypes._(this.value);

factory BrapiPostSnapshotRequestVariant2RejectResourceTypes.fromJson(String json) { return switch (json) {
  'document' => document,
  'stylesheet' => stylesheet,
  'image' => image,
  'media' => media,
  'font' => font,
  'script' => script,
  'texttrack' => texttrack,
  'xhr' => xhr,
  'fetch' => fetch,
  'prefetch' => prefetch,
  'eventsource' => eventsource,
  'websocket' => websocket,
  'manifest' => manifest,
  'signedexchange' => signedexchange,
  'ping' => ping,
  'cspviolationreport' => cspviolationreport,
  'preflight' => preflight,
  'other' => $other,
  _ => BrapiPostSnapshotRequestVariant2RejectResourceTypes._(json),
}; }

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes document = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('document');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes stylesheet = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('stylesheet');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes image = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('image');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes media = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('media');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes font = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('font');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes script = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('script');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes texttrack = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('texttrack');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes xhr = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('xhr');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes fetch = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('fetch');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes prefetch = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('prefetch');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes eventsource = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('eventsource');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes websocket = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('websocket');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes manifest = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('manifest');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes signedexchange = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('signedexchange');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes ping = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('ping');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes cspviolationreport = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('cspviolationreport');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes preflight = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('preflight');

static const BrapiPostSnapshotRequestVariant2RejectResourceTypes $other = BrapiPostSnapshotRequestVariant2RejectResourceTypes._('other');

static const List<BrapiPostSnapshotRequestVariant2RejectResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostSnapshotRequestVariant2RejectResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant2RejectResourceTypes($value)'; } 
 }
final class BrapiPostSnapshotRequestVariant2 {const BrapiPostSnapshotRequestVariant2({this.actionTimeout, this.addScriptTag, this.addStyleTag, this.allowRequestPattern, this.allowResourceTypes, this.authenticate, this.bestAttempt, this.cookies, this.emulateMediaType, this.gotoOptions, this.rejectRequestPattern, this.rejectResourceTypes, this.screenshotOptions, this.setExtraHttpHeaders, this.setJavaScriptEnabled, required this.url, this.userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', this.viewport, this.waitForSelector, this.waitForTimeout, });

factory BrapiPostSnapshotRequestVariant2.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotRequestVariant2(
  actionTimeout: json['actionTimeout'] != null ? (json['actionTimeout'] as num).toDouble() : null,
  addScriptTag: (json['addScriptTag'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotRequestVariant2AddScriptTag.fromJson(e as Map<String, dynamic>)).toList(),
  addStyleTag: (json['addStyleTag'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotRequestVariant2AddStyleTag.fromJson(e as Map<String, dynamic>)).toList(),
  allowRequestPattern: (json['allowRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowResourceTypes: (json['allowResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotRequestVariant2AllowResourceTypes.fromJson(e as String)).toList(),
  authenticate: json['authenticate'] != null ? BrapiPostSnapshotRequestVariant2Authenticate.fromJson(json['authenticate'] as Map<String, dynamic>) : null,
  bestAttempt: json['bestAttempt'] as bool?,
  cookies: (json['cookies'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotRequestVariant2Cookies.fromJson(e as Map<String, dynamic>)).toList(),
  emulateMediaType: json['emulateMediaType'] as String?,
  gotoOptions: json['gotoOptions'] != null ? BrapiPostSnapshotRequestVariant2GotoOptions.fromJson(json['gotoOptions'] as Map<String, dynamic>) : null,
  rejectRequestPattern: (json['rejectRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectResourceTypes: (json['rejectResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostSnapshotRequestVariant2RejectResourceTypes.fromJson(e as String)).toList(),
  screenshotOptions: json['screenshotOptions'] != null ? BrapiPostSnapshotRequestVariant2ScreenshotOptions.fromJson(json['screenshotOptions'] as Map<String, dynamic>) : null,
  setExtraHttpHeaders: (json['setExtraHTTPHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setJavaScriptEnabled: json['setJavaScriptEnabled'] as bool?,
  url: Uri.parse(json['url'] as String),
  userAgent: json.containsKey('userAgent') ? json['userAgent'] as String : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
  viewport: json['viewport'] != null ? BrapiPostSnapshotRequestVariant2Viewport.fromJson(json['viewport'] as Map<String, dynamic>) : null,
  waitForSelector: json['waitForSelector'] != null ? BrapiPostSnapshotRequestVariant2WaitForSelector.fromJson(json['waitForSelector'] as Map<String, dynamic>) : null,
  waitForTimeout: json['waitForTimeout'] != null ? (json['waitForTimeout'] as num).toDouble() : null,
); }

/// The maximum duration allowed for the browser action to complete after the page has loaded (such as taking screenshots, extracting content, or generating PDFs). If this time limit is exceeded, the action stops and returns a timeout error.
final double? actionTimeout;

/// Adds a `<script>` tag into the page with the desired URL or content.
final List<BrapiPostSnapshotRequestVariant2AddScriptTag>? addScriptTag;

/// Adds a `<link rel="stylesheet">` tag into the page with the desired URL or a `<style type="text/css">` tag with the content.
final List<BrapiPostSnapshotRequestVariant2AddStyleTag>? addStyleTag;

/// Only allow requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? allowRequestPattern;

/// Only allow requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostSnapshotRequestVariant2AllowResourceTypes>? allowResourceTypes;

/// Provide credentials for HTTP authentication.
final BrapiPostSnapshotRequestVariant2Authenticate? authenticate;

/// Attempt to proceed when 'awaited' events fail or timeout.
final bool? bestAttempt;

/// Check [options](https://pptr.dev/api/puppeteer.page.setcookie).
final List<BrapiPostSnapshotRequestVariant2Cookies>? cookies;

final String? emulateMediaType;

/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
final BrapiPostSnapshotRequestVariant2GotoOptions? gotoOptions;

/// Block undesired requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? rejectRequestPattern;

/// Block undesired requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostSnapshotRequestVariant2RejectResourceTypes>? rejectResourceTypes;

final BrapiPostSnapshotRequestVariant2ScreenshotOptions? screenshotOptions;

final Map<String,String>? setExtraHttpHeaders;

final bool? setJavaScriptEnabled;

/// URL to navigate to, eg. `https://example.com`.
final Uri url;

final String userAgent;

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final BrapiPostSnapshotRequestVariant2Viewport? viewport;

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final BrapiPostSnapshotRequestVariant2WaitForSelector? waitForSelector;

/// Waits for a specified timeout before continuing.
final double? waitForTimeout;

Map<String, dynamic> toJson() { return {
  'actionTimeout': ?actionTimeout,
  if (addScriptTag != null) 'addScriptTag': addScriptTag?.map((e) => e.toJson()).toList(),
  if (addStyleTag != null) 'addStyleTag': addStyleTag?.map((e) => e.toJson()).toList(),
  'allowRequestPattern': ?allowRequestPattern,
  if (allowResourceTypes != null) 'allowResourceTypes': allowResourceTypes?.map((e) => e.toJson()).toList(),
  if (authenticate != null) 'authenticate': authenticate?.toJson(),
  'bestAttempt': ?bestAttempt,
  if (cookies != null) 'cookies': cookies?.map((e) => e.toJson()).toList(),
  'emulateMediaType': ?emulateMediaType,
  if (gotoOptions != null) 'gotoOptions': gotoOptions?.toJson(),
  'rejectRequestPattern': ?rejectRequestPattern,
  if (rejectResourceTypes != null) 'rejectResourceTypes': rejectResourceTypes?.map((e) => e.toJson()).toList(),
  if (screenshotOptions != null) 'screenshotOptions': screenshotOptions?.toJson(),
  'setExtraHTTPHeaders': ?setExtraHttpHeaders,
  'setJavaScriptEnabled': ?setJavaScriptEnabled,
  'url': url.toString(),
  'userAgent': userAgent,
  if (viewport != null) 'viewport': viewport?.toJson(),
  if (waitForSelector != null) 'waitForSelector': waitForSelector?.toJson(),
  'waitForTimeout': ?waitForTimeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
BrapiPostSnapshotRequestVariant2 copyWith({double Function()? actionTimeout, List<BrapiPostSnapshotRequestVariant2AddScriptTag> Function()? addScriptTag, List<BrapiPostSnapshotRequestVariant2AddStyleTag> Function()? addStyleTag, List<String> Function()? allowRequestPattern, List<BrapiPostSnapshotRequestVariant2AllowResourceTypes> Function()? allowResourceTypes, BrapiPostSnapshotRequestVariant2Authenticate Function()? authenticate, bool Function()? bestAttempt, List<BrapiPostSnapshotRequestVariant2Cookies> Function()? cookies, String Function()? emulateMediaType, BrapiPostSnapshotRequestVariant2GotoOptions Function()? gotoOptions, List<String> Function()? rejectRequestPattern, List<BrapiPostSnapshotRequestVariant2RejectResourceTypes> Function()? rejectResourceTypes, BrapiPostSnapshotRequestVariant2ScreenshotOptions Function()? screenshotOptions, Map<String, String> Function()? setExtraHttpHeaders, bool Function()? setJavaScriptEnabled, Uri? url, String Function()? userAgent, BrapiPostSnapshotRequestVariant2Viewport Function()? viewport, BrapiPostSnapshotRequestVariant2WaitForSelector Function()? waitForSelector, double Function()? waitForTimeout, }) { return BrapiPostSnapshotRequestVariant2(
  actionTimeout: actionTimeout != null ? actionTimeout() : this.actionTimeout,
  addScriptTag: addScriptTag != null ? addScriptTag() : this.addScriptTag,
  addStyleTag: addStyleTag != null ? addStyleTag() : this.addStyleTag,
  allowRequestPattern: allowRequestPattern != null ? allowRequestPattern() : this.allowRequestPattern,
  allowResourceTypes: allowResourceTypes != null ? allowResourceTypes() : this.allowResourceTypes,
  authenticate: authenticate != null ? authenticate() : this.authenticate,
  bestAttempt: bestAttempt != null ? bestAttempt() : this.bestAttempt,
  cookies: cookies != null ? cookies() : this.cookies,
  emulateMediaType: emulateMediaType != null ? emulateMediaType() : this.emulateMediaType,
  gotoOptions: gotoOptions != null ? gotoOptions() : this.gotoOptions,
  rejectRequestPattern: rejectRequestPattern != null ? rejectRequestPattern() : this.rejectRequestPattern,
  rejectResourceTypes: rejectResourceTypes != null ? rejectResourceTypes() : this.rejectResourceTypes,
  screenshotOptions: screenshotOptions != null ? screenshotOptions() : this.screenshotOptions,
  setExtraHttpHeaders: setExtraHttpHeaders != null ? setExtraHttpHeaders() : this.setExtraHttpHeaders,
  setJavaScriptEnabled: setJavaScriptEnabled != null ? setJavaScriptEnabled() : this.setJavaScriptEnabled,
  url: url ?? this.url,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
  viewport: viewport != null ? viewport() : this.viewport,
  waitForSelector: waitForSelector != null ? waitForSelector() : this.waitForSelector,
  waitForTimeout: waitForTimeout != null ? waitForTimeout() : this.waitForTimeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotRequestVariant2 &&
          actionTimeout == other.actionTimeout &&
          listEquals(addScriptTag, other.addScriptTag) &&
          listEquals(addStyleTag, other.addStyleTag) &&
          listEquals(allowRequestPattern, other.allowRequestPattern) &&
          listEquals(allowResourceTypes, other.allowResourceTypes) &&
          authenticate == other.authenticate &&
          bestAttempt == other.bestAttempt &&
          listEquals(cookies, other.cookies) &&
          emulateMediaType == other.emulateMediaType &&
          gotoOptions == other.gotoOptions &&
          listEquals(rejectRequestPattern, other.rejectRequestPattern) &&
          listEquals(rejectResourceTypes, other.rejectResourceTypes) &&
          screenshotOptions == other.screenshotOptions &&
          setExtraHttpHeaders == other.setExtraHttpHeaders &&
          setJavaScriptEnabled == other.setJavaScriptEnabled &&
          url == other.url &&
          userAgent == other.userAgent &&
          viewport == other.viewport &&
          waitForSelector == other.waitForSelector &&
          waitForTimeout == other.waitForTimeout; } 
@override int get hashCode { return Object.hash(actionTimeout, Object.hashAll(addScriptTag ?? const []), Object.hashAll(addStyleTag ?? const []), Object.hashAll(allowRequestPattern ?? const []), Object.hashAll(allowResourceTypes ?? const []), authenticate, bestAttempt, Object.hashAll(cookies ?? const []), emulateMediaType, gotoOptions, Object.hashAll(rejectRequestPattern ?? const []), Object.hashAll(rejectResourceTypes ?? const []), screenshotOptions, setExtraHttpHeaders, setJavaScriptEnabled, url, userAgent, viewport, waitForSelector, waitForTimeout); } 
@override String toString() { return 'BrapiPostSnapshotRequestVariant2(actionTimeout: $actionTimeout, addScriptTag: $addScriptTag, addStyleTag: $addStyleTag, allowRequestPattern: $allowRequestPattern, allowResourceTypes: $allowResourceTypes, authenticate: $authenticate, bestAttempt: $bestAttempt, cookies: $cookies, emulateMediaType: $emulateMediaType, gotoOptions: $gotoOptions, rejectRequestPattern: $rejectRequestPattern, rejectResourceTypes: $rejectResourceTypes, screenshotOptions: $screenshotOptions, setExtraHttpHeaders: $setExtraHttpHeaders, setJavaScriptEnabled: $setJavaScriptEnabled, url: $url, userAgent: $userAgent, viewport: $viewport, waitForSelector: $waitForSelector, waitForTimeout: $waitForTimeout)'; } 
 }
