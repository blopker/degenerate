// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_content_request_variant2_add_script_tag.dart';import 'brapi_post_content_request_variant2_add_style_tag.dart';import 'brapi_post_content_request_variant2_authenticate.dart';import 'brapi_post_content_request_variant2_cookies.dart';import 'brapi_post_content_request_variant2_goto_options.dart';import 'brapi_post_content_request_variant2_viewport.dart';import 'brapi_post_content_request_variant2_wait_for_selector.dart';final class BrapiPostContentRequestVariant2AllowResourceTypes {const BrapiPostContentRequestVariant2AllowResourceTypes._(this.value);

factory BrapiPostContentRequestVariant2AllowResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostContentRequestVariant2AllowResourceTypes._(json),
}; }

static const BrapiPostContentRequestVariant2AllowResourceTypes document = BrapiPostContentRequestVariant2AllowResourceTypes._('document');

static const BrapiPostContentRequestVariant2AllowResourceTypes stylesheet = BrapiPostContentRequestVariant2AllowResourceTypes._('stylesheet');

static const BrapiPostContentRequestVariant2AllowResourceTypes image = BrapiPostContentRequestVariant2AllowResourceTypes._('image');

static const BrapiPostContentRequestVariant2AllowResourceTypes media = BrapiPostContentRequestVariant2AllowResourceTypes._('media');

static const BrapiPostContentRequestVariant2AllowResourceTypes font = BrapiPostContentRequestVariant2AllowResourceTypes._('font');

static const BrapiPostContentRequestVariant2AllowResourceTypes script = BrapiPostContentRequestVariant2AllowResourceTypes._('script');

static const BrapiPostContentRequestVariant2AllowResourceTypes texttrack = BrapiPostContentRequestVariant2AllowResourceTypes._('texttrack');

static const BrapiPostContentRequestVariant2AllowResourceTypes xhr = BrapiPostContentRequestVariant2AllowResourceTypes._('xhr');

static const BrapiPostContentRequestVariant2AllowResourceTypes fetch = BrapiPostContentRequestVariant2AllowResourceTypes._('fetch');

static const BrapiPostContentRequestVariant2AllowResourceTypes prefetch = BrapiPostContentRequestVariant2AllowResourceTypes._('prefetch');

static const BrapiPostContentRequestVariant2AllowResourceTypes eventsource = BrapiPostContentRequestVariant2AllowResourceTypes._('eventsource');

static const BrapiPostContentRequestVariant2AllowResourceTypes websocket = BrapiPostContentRequestVariant2AllowResourceTypes._('websocket');

static const BrapiPostContentRequestVariant2AllowResourceTypes manifest = BrapiPostContentRequestVariant2AllowResourceTypes._('manifest');

static const BrapiPostContentRequestVariant2AllowResourceTypes signedexchange = BrapiPostContentRequestVariant2AllowResourceTypes._('signedexchange');

static const BrapiPostContentRequestVariant2AllowResourceTypes ping = BrapiPostContentRequestVariant2AllowResourceTypes._('ping');

static const BrapiPostContentRequestVariant2AllowResourceTypes cspviolationreport = BrapiPostContentRequestVariant2AllowResourceTypes._('cspviolationreport');

static const BrapiPostContentRequestVariant2AllowResourceTypes preflight = BrapiPostContentRequestVariant2AllowResourceTypes._('preflight');

static const BrapiPostContentRequestVariant2AllowResourceTypes $other = BrapiPostContentRequestVariant2AllowResourceTypes._('other');

static const List<BrapiPostContentRequestVariant2AllowResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentRequestVariant2AllowResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostContentRequestVariant2AllowResourceTypes($value)'; } 
 }
final class BrapiPostContentRequestVariant2RejectResourceTypes {const BrapiPostContentRequestVariant2RejectResourceTypes._(this.value);

factory BrapiPostContentRequestVariant2RejectResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostContentRequestVariant2RejectResourceTypes._(json),
}; }

static const BrapiPostContentRequestVariant2RejectResourceTypes document = BrapiPostContentRequestVariant2RejectResourceTypes._('document');

static const BrapiPostContentRequestVariant2RejectResourceTypes stylesheet = BrapiPostContentRequestVariant2RejectResourceTypes._('stylesheet');

static const BrapiPostContentRequestVariant2RejectResourceTypes image = BrapiPostContentRequestVariant2RejectResourceTypes._('image');

static const BrapiPostContentRequestVariant2RejectResourceTypes media = BrapiPostContentRequestVariant2RejectResourceTypes._('media');

static const BrapiPostContentRequestVariant2RejectResourceTypes font = BrapiPostContentRequestVariant2RejectResourceTypes._('font');

static const BrapiPostContentRequestVariant2RejectResourceTypes script = BrapiPostContentRequestVariant2RejectResourceTypes._('script');

static const BrapiPostContentRequestVariant2RejectResourceTypes texttrack = BrapiPostContentRequestVariant2RejectResourceTypes._('texttrack');

static const BrapiPostContentRequestVariant2RejectResourceTypes xhr = BrapiPostContentRequestVariant2RejectResourceTypes._('xhr');

static const BrapiPostContentRequestVariant2RejectResourceTypes fetch = BrapiPostContentRequestVariant2RejectResourceTypes._('fetch');

static const BrapiPostContentRequestVariant2RejectResourceTypes prefetch = BrapiPostContentRequestVariant2RejectResourceTypes._('prefetch');

static const BrapiPostContentRequestVariant2RejectResourceTypes eventsource = BrapiPostContentRequestVariant2RejectResourceTypes._('eventsource');

static const BrapiPostContentRequestVariant2RejectResourceTypes websocket = BrapiPostContentRequestVariant2RejectResourceTypes._('websocket');

static const BrapiPostContentRequestVariant2RejectResourceTypes manifest = BrapiPostContentRequestVariant2RejectResourceTypes._('manifest');

static const BrapiPostContentRequestVariant2RejectResourceTypes signedexchange = BrapiPostContentRequestVariant2RejectResourceTypes._('signedexchange');

static const BrapiPostContentRequestVariant2RejectResourceTypes ping = BrapiPostContentRequestVariant2RejectResourceTypes._('ping');

static const BrapiPostContentRequestVariant2RejectResourceTypes cspviolationreport = BrapiPostContentRequestVariant2RejectResourceTypes._('cspviolationreport');

static const BrapiPostContentRequestVariant2RejectResourceTypes preflight = BrapiPostContentRequestVariant2RejectResourceTypes._('preflight');

static const BrapiPostContentRequestVariant2RejectResourceTypes $other = BrapiPostContentRequestVariant2RejectResourceTypes._('other');

static const List<BrapiPostContentRequestVariant2RejectResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostContentRequestVariant2RejectResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostContentRequestVariant2RejectResourceTypes($value)'; } 
 }
final class BrapiPostContentRequestVariant2 {const BrapiPostContentRequestVariant2({this.actionTimeout, this.addScriptTag, this.addStyleTag, this.allowRequestPattern, this.allowResourceTypes, this.authenticate, this.bestAttempt, this.cookies, this.emulateMediaType, this.gotoOptions, required this.html, this.rejectRequestPattern, this.rejectResourceTypes, this.setExtraHttpHeaders, this.setJavaScriptEnabled, this.userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', this.viewport, this.waitForSelector, this.waitForTimeout, });

factory BrapiPostContentRequestVariant2.fromJson(Map<String, dynamic> json) { return BrapiPostContentRequestVariant2(
  actionTimeout: json['actionTimeout'] != null ? (json['actionTimeout'] as num).toDouble() : null,
  addScriptTag: (json['addScriptTag'] as List<dynamic>?)?.map((e) => BrapiPostContentRequestVariant2AddScriptTag.fromJson(e as Map<String, dynamic>)).toList(),
  addStyleTag: (json['addStyleTag'] as List<dynamic>?)?.map((e) => BrapiPostContentRequestVariant2AddStyleTag.fromJson(e as Map<String, dynamic>)).toList(),
  allowRequestPattern: (json['allowRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowResourceTypes: (json['allowResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostContentRequestVariant2AllowResourceTypes.fromJson(e as String)).toList(),
  authenticate: json['authenticate'] != null ? BrapiPostContentRequestVariant2Authenticate.fromJson(json['authenticate'] as Map<String, dynamic>) : null,
  bestAttempt: json['bestAttempt'] as bool?,
  cookies: (json['cookies'] as List<dynamic>?)?.map((e) => BrapiPostContentRequestVariant2Cookies.fromJson(e as Map<String, dynamic>)).toList(),
  emulateMediaType: json['emulateMediaType'] as String?,
  gotoOptions: json['gotoOptions'] != null ? BrapiPostContentRequestVariant2GotoOptions.fromJson(json['gotoOptions'] as Map<String, dynamic>) : null,
  html: json['html'] as String,
  rejectRequestPattern: (json['rejectRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectResourceTypes: (json['rejectResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostContentRequestVariant2RejectResourceTypes.fromJson(e as String)).toList(),
  setExtraHttpHeaders: (json['setExtraHTTPHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setJavaScriptEnabled: json['setJavaScriptEnabled'] as bool?,
  userAgent: json.containsKey('userAgent') ? json['userAgent'] as String : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
  viewport: json['viewport'] != null ? BrapiPostContentRequestVariant2Viewport.fromJson(json['viewport'] as Map<String, dynamic>) : null,
  waitForSelector: json['waitForSelector'] != null ? BrapiPostContentRequestVariant2WaitForSelector.fromJson(json['waitForSelector'] as Map<String, dynamic>) : null,
  waitForTimeout: json['waitForTimeout'] != null ? (json['waitForTimeout'] as num).toDouble() : null,
); }

/// The maximum duration allowed for the browser action to complete after the page has loaded (such as taking screenshots, extracting content, or generating PDFs). If this time limit is exceeded, the action stops and returns a timeout error.
final double? actionTimeout;

/// Adds a `<script>` tag into the page with the desired URL or content.
final List<BrapiPostContentRequestVariant2AddScriptTag>? addScriptTag;

/// Adds a `<link rel="stylesheet">` tag into the page with the desired URL or a `<style type="text/css">` tag with the content.
final List<BrapiPostContentRequestVariant2AddStyleTag>? addStyleTag;

/// Only allow requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? allowRequestPattern;

/// Only allow requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostContentRequestVariant2AllowResourceTypes>? allowResourceTypes;

/// Provide credentials for HTTP authentication.
final BrapiPostContentRequestVariant2Authenticate? authenticate;

/// Attempt to proceed when 'awaited' events fail or timeout.
final bool? bestAttempt;

/// Check [options](https://pptr.dev/api/puppeteer.page.setcookie).
final List<BrapiPostContentRequestVariant2Cookies>? cookies;

final String? emulateMediaType;

/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
final BrapiPostContentRequestVariant2GotoOptions? gotoOptions;

/// Set the content of the page, eg: `<h1>Hello World!!</h1>`. Either `html` or `url` must be set.
final String html;

/// Block undesired requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? rejectRequestPattern;

/// Block undesired requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostContentRequestVariant2RejectResourceTypes>? rejectResourceTypes;

final Map<String,String>? setExtraHttpHeaders;

final bool? setJavaScriptEnabled;

final String userAgent;

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final BrapiPostContentRequestVariant2Viewport? viewport;

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final BrapiPostContentRequestVariant2WaitForSelector? waitForSelector;

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
  'html': html,
  'rejectRequestPattern': ?rejectRequestPattern,
  if (rejectResourceTypes != null) 'rejectResourceTypes': rejectResourceTypes?.map((e) => e.toJson()).toList(),
  'setExtraHTTPHeaders': ?setExtraHttpHeaders,
  'setJavaScriptEnabled': ?setJavaScriptEnabled,
  'userAgent': userAgent,
  if (viewport != null) 'viewport': viewport?.toJson(),
  if (waitForSelector != null) 'waitForSelector': waitForSelector?.toJson(),
  'waitForTimeout': ?waitForTimeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('html') && json['html'] is String; } 
BrapiPostContentRequestVariant2 copyWith({double Function()? actionTimeout, List<BrapiPostContentRequestVariant2AddScriptTag> Function()? addScriptTag, List<BrapiPostContentRequestVariant2AddStyleTag> Function()? addStyleTag, List<String> Function()? allowRequestPattern, List<BrapiPostContentRequestVariant2AllowResourceTypes> Function()? allowResourceTypes, BrapiPostContentRequestVariant2Authenticate Function()? authenticate, bool Function()? bestAttempt, List<BrapiPostContentRequestVariant2Cookies> Function()? cookies, String Function()? emulateMediaType, BrapiPostContentRequestVariant2GotoOptions Function()? gotoOptions, String? html, List<String> Function()? rejectRequestPattern, List<BrapiPostContentRequestVariant2RejectResourceTypes> Function()? rejectResourceTypes, Map<String, String> Function()? setExtraHttpHeaders, bool Function()? setJavaScriptEnabled, String Function()? userAgent, BrapiPostContentRequestVariant2Viewport Function()? viewport, BrapiPostContentRequestVariant2WaitForSelector Function()? waitForSelector, double Function()? waitForTimeout, }) { return BrapiPostContentRequestVariant2(
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
  html: html ?? this.html,
  rejectRequestPattern: rejectRequestPattern != null ? rejectRequestPattern() : this.rejectRequestPattern,
  rejectResourceTypes: rejectResourceTypes != null ? rejectResourceTypes() : this.rejectResourceTypes,
  setExtraHttpHeaders: setExtraHttpHeaders != null ? setExtraHttpHeaders() : this.setExtraHttpHeaders,
  setJavaScriptEnabled: setJavaScriptEnabled != null ? setJavaScriptEnabled() : this.setJavaScriptEnabled,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
  viewport: viewport != null ? viewport() : this.viewport,
  waitForSelector: waitForSelector != null ? waitForSelector() : this.waitForSelector,
  waitForTimeout: waitForTimeout != null ? waitForTimeout() : this.waitForTimeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentRequestVariant2 &&
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
          html == other.html &&
          listEquals(rejectRequestPattern, other.rejectRequestPattern) &&
          listEquals(rejectResourceTypes, other.rejectResourceTypes) &&
          setExtraHttpHeaders == other.setExtraHttpHeaders &&
          setJavaScriptEnabled == other.setJavaScriptEnabled &&
          userAgent == other.userAgent &&
          viewport == other.viewport &&
          waitForSelector == other.waitForSelector &&
          waitForTimeout == other.waitForTimeout; } 
@override int get hashCode { return Object.hash(actionTimeout, Object.hashAll(addScriptTag ?? const []), Object.hashAll(addStyleTag ?? const []), Object.hashAll(allowRequestPattern ?? const []), Object.hashAll(allowResourceTypes ?? const []), authenticate, bestAttempt, Object.hashAll(cookies ?? const []), emulateMediaType, gotoOptions, html, Object.hashAll(rejectRequestPattern ?? const []), Object.hashAll(rejectResourceTypes ?? const []), setExtraHttpHeaders, setJavaScriptEnabled, userAgent, viewport, waitForSelector, waitForTimeout); } 
@override String toString() { return 'BrapiPostContentRequestVariant2(actionTimeout: $actionTimeout, addScriptTag: $addScriptTag, addStyleTag: $addStyleTag, allowRequestPattern: $allowRequestPattern, allowResourceTypes: $allowResourceTypes, authenticate: $authenticate, bestAttempt: $bestAttempt, cookies: $cookies, emulateMediaType: $emulateMediaType, gotoOptions: $gotoOptions, html: $html, rejectRequestPattern: $rejectRequestPattern, rejectResourceTypes: $rejectResourceTypes, setExtraHttpHeaders: $setExtraHttpHeaders, setJavaScriptEnabled: $setJavaScriptEnabled, userAgent: $userAgent, viewport: $viewport, waitForSelector: $waitForSelector, waitForTimeout: $waitForTimeout)'; } 
 }
