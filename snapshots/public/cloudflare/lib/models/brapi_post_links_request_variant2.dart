// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_links_request_variant2_add_script_tag.dart';import 'brapi_post_links_request_variant2_add_style_tag.dart';import 'brapi_post_links_request_variant2_authenticate.dart';import 'brapi_post_links_request_variant2_cookies.dart';import 'brapi_post_links_request_variant2_goto_options.dart';import 'brapi_post_links_request_variant2_viewport.dart';import 'brapi_post_links_request_variant2_wait_for_selector.dart';final class BrapiPostLinksRequestVariant2AllowResourceTypes {const BrapiPostLinksRequestVariant2AllowResourceTypes._(this.value);

factory BrapiPostLinksRequestVariant2AllowResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostLinksRequestVariant2AllowResourceTypes._(json),
}; }

static const BrapiPostLinksRequestVariant2AllowResourceTypes document = BrapiPostLinksRequestVariant2AllowResourceTypes._('document');

static const BrapiPostLinksRequestVariant2AllowResourceTypes stylesheet = BrapiPostLinksRequestVariant2AllowResourceTypes._('stylesheet');

static const BrapiPostLinksRequestVariant2AllowResourceTypes image = BrapiPostLinksRequestVariant2AllowResourceTypes._('image');

static const BrapiPostLinksRequestVariant2AllowResourceTypes media = BrapiPostLinksRequestVariant2AllowResourceTypes._('media');

static const BrapiPostLinksRequestVariant2AllowResourceTypes font = BrapiPostLinksRequestVariant2AllowResourceTypes._('font');

static const BrapiPostLinksRequestVariant2AllowResourceTypes script = BrapiPostLinksRequestVariant2AllowResourceTypes._('script');

static const BrapiPostLinksRequestVariant2AllowResourceTypes texttrack = BrapiPostLinksRequestVariant2AllowResourceTypes._('texttrack');

static const BrapiPostLinksRequestVariant2AllowResourceTypes xhr = BrapiPostLinksRequestVariant2AllowResourceTypes._('xhr');

static const BrapiPostLinksRequestVariant2AllowResourceTypes fetch = BrapiPostLinksRequestVariant2AllowResourceTypes._('fetch');

static const BrapiPostLinksRequestVariant2AllowResourceTypes prefetch = BrapiPostLinksRequestVariant2AllowResourceTypes._('prefetch');

static const BrapiPostLinksRequestVariant2AllowResourceTypes eventsource = BrapiPostLinksRequestVariant2AllowResourceTypes._('eventsource');

static const BrapiPostLinksRequestVariant2AllowResourceTypes websocket = BrapiPostLinksRequestVariant2AllowResourceTypes._('websocket');

static const BrapiPostLinksRequestVariant2AllowResourceTypes manifest = BrapiPostLinksRequestVariant2AllowResourceTypes._('manifest');

static const BrapiPostLinksRequestVariant2AllowResourceTypes signedexchange = BrapiPostLinksRequestVariant2AllowResourceTypes._('signedexchange');

static const BrapiPostLinksRequestVariant2AllowResourceTypes ping = BrapiPostLinksRequestVariant2AllowResourceTypes._('ping');

static const BrapiPostLinksRequestVariant2AllowResourceTypes cspviolationreport = BrapiPostLinksRequestVariant2AllowResourceTypes._('cspviolationreport');

static const BrapiPostLinksRequestVariant2AllowResourceTypes preflight = BrapiPostLinksRequestVariant2AllowResourceTypes._('preflight');

static const BrapiPostLinksRequestVariant2AllowResourceTypes $other = BrapiPostLinksRequestVariant2AllowResourceTypes._('other');

static const List<BrapiPostLinksRequestVariant2AllowResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksRequestVariant2AllowResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostLinksRequestVariant2AllowResourceTypes($value)'; } 
 }
final class BrapiPostLinksRequestVariant2RejectResourceTypes {const BrapiPostLinksRequestVariant2RejectResourceTypes._(this.value);

factory BrapiPostLinksRequestVariant2RejectResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostLinksRequestVariant2RejectResourceTypes._(json),
}; }

static const BrapiPostLinksRequestVariant2RejectResourceTypes document = BrapiPostLinksRequestVariant2RejectResourceTypes._('document');

static const BrapiPostLinksRequestVariant2RejectResourceTypes stylesheet = BrapiPostLinksRequestVariant2RejectResourceTypes._('stylesheet');

static const BrapiPostLinksRequestVariant2RejectResourceTypes image = BrapiPostLinksRequestVariant2RejectResourceTypes._('image');

static const BrapiPostLinksRequestVariant2RejectResourceTypes media = BrapiPostLinksRequestVariant2RejectResourceTypes._('media');

static const BrapiPostLinksRequestVariant2RejectResourceTypes font = BrapiPostLinksRequestVariant2RejectResourceTypes._('font');

static const BrapiPostLinksRequestVariant2RejectResourceTypes script = BrapiPostLinksRequestVariant2RejectResourceTypes._('script');

static const BrapiPostLinksRequestVariant2RejectResourceTypes texttrack = BrapiPostLinksRequestVariant2RejectResourceTypes._('texttrack');

static const BrapiPostLinksRequestVariant2RejectResourceTypes xhr = BrapiPostLinksRequestVariant2RejectResourceTypes._('xhr');

static const BrapiPostLinksRequestVariant2RejectResourceTypes fetch = BrapiPostLinksRequestVariant2RejectResourceTypes._('fetch');

static const BrapiPostLinksRequestVariant2RejectResourceTypes prefetch = BrapiPostLinksRequestVariant2RejectResourceTypes._('prefetch');

static const BrapiPostLinksRequestVariant2RejectResourceTypes eventsource = BrapiPostLinksRequestVariant2RejectResourceTypes._('eventsource');

static const BrapiPostLinksRequestVariant2RejectResourceTypes websocket = BrapiPostLinksRequestVariant2RejectResourceTypes._('websocket');

static const BrapiPostLinksRequestVariant2RejectResourceTypes manifest = BrapiPostLinksRequestVariant2RejectResourceTypes._('manifest');

static const BrapiPostLinksRequestVariant2RejectResourceTypes signedexchange = BrapiPostLinksRequestVariant2RejectResourceTypes._('signedexchange');

static const BrapiPostLinksRequestVariant2RejectResourceTypes ping = BrapiPostLinksRequestVariant2RejectResourceTypes._('ping');

static const BrapiPostLinksRequestVariant2RejectResourceTypes cspviolationreport = BrapiPostLinksRequestVariant2RejectResourceTypes._('cspviolationreport');

static const BrapiPostLinksRequestVariant2RejectResourceTypes preflight = BrapiPostLinksRequestVariant2RejectResourceTypes._('preflight');

static const BrapiPostLinksRequestVariant2RejectResourceTypes $other = BrapiPostLinksRequestVariant2RejectResourceTypes._('other');

static const List<BrapiPostLinksRequestVariant2RejectResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostLinksRequestVariant2RejectResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostLinksRequestVariant2RejectResourceTypes($value)'; } 
 }
final class BrapiPostLinksRequestVariant2 {const BrapiPostLinksRequestVariant2({this.actionTimeout, this.addScriptTag, this.addStyleTag, this.allowRequestPattern, this.allowResourceTypes, this.authenticate, this.bestAttempt, this.cookies, this.emulateMediaType, this.excludeExternalLinks = false, this.gotoOptions, this.rejectRequestPattern, this.rejectResourceTypes, this.setExtraHttpHeaders, this.setJavaScriptEnabled, required this.url, this.userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', this.viewport, this.visibleLinksOnly = false, this.waitForSelector, this.waitForTimeout, });

factory BrapiPostLinksRequestVariant2.fromJson(Map<String, dynamic> json) { return BrapiPostLinksRequestVariant2(
  actionTimeout: json['actionTimeout'] != null ? (json['actionTimeout'] as num).toDouble() : null,
  addScriptTag: (json['addScriptTag'] as List<dynamic>?)?.map((e) => BrapiPostLinksRequestVariant2AddScriptTag.fromJson(e as Map<String, dynamic>)).toList(),
  addStyleTag: (json['addStyleTag'] as List<dynamic>?)?.map((e) => BrapiPostLinksRequestVariant2AddStyleTag.fromJson(e as Map<String, dynamic>)).toList(),
  allowRequestPattern: (json['allowRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowResourceTypes: (json['allowResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostLinksRequestVariant2AllowResourceTypes.fromJson(e as String)).toList(),
  authenticate: json['authenticate'] != null ? BrapiPostLinksRequestVariant2Authenticate.fromJson(json['authenticate'] as Map<String, dynamic>) : null,
  bestAttempt: json['bestAttempt'] as bool?,
  cookies: (json['cookies'] as List<dynamic>?)?.map((e) => BrapiPostLinksRequestVariant2Cookies.fromJson(e as Map<String, dynamic>)).toList(),
  emulateMediaType: json['emulateMediaType'] as String?,
  excludeExternalLinks: json.containsKey('excludeExternalLinks') ? json['excludeExternalLinks'] as bool : false,
  gotoOptions: json['gotoOptions'] != null ? BrapiPostLinksRequestVariant2GotoOptions.fromJson(json['gotoOptions'] as Map<String, dynamic>) : null,
  rejectRequestPattern: (json['rejectRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectResourceTypes: (json['rejectResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostLinksRequestVariant2RejectResourceTypes.fromJson(e as String)).toList(),
  setExtraHttpHeaders: (json['setExtraHTTPHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setJavaScriptEnabled: json['setJavaScriptEnabled'] as bool?,
  url: Uri.parse(json['url'] as String),
  userAgent: json.containsKey('userAgent') ? json['userAgent'] as String : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
  viewport: json['viewport'] != null ? BrapiPostLinksRequestVariant2Viewport.fromJson(json['viewport'] as Map<String, dynamic>) : null,
  visibleLinksOnly: json.containsKey('visibleLinksOnly') ? json['visibleLinksOnly'] as bool : false,
  waitForSelector: json['waitForSelector'] != null ? BrapiPostLinksRequestVariant2WaitForSelector.fromJson(json['waitForSelector'] as Map<String, dynamic>) : null,
  waitForTimeout: json['waitForTimeout'] != null ? (json['waitForTimeout'] as num).toDouble() : null,
); }

/// The maximum duration allowed for the browser action to complete after the page has loaded (such as taking screenshots, extracting content, or generating PDFs). If this time limit is exceeded, the action stops and returns a timeout error.
final double? actionTimeout;

/// Adds a `<script>` tag into the page with the desired URL or content.
final List<BrapiPostLinksRequestVariant2AddScriptTag>? addScriptTag;

/// Adds a `<link rel="stylesheet">` tag into the page with the desired URL or a `<style type="text/css">` tag with the content.
final List<BrapiPostLinksRequestVariant2AddStyleTag>? addStyleTag;

/// Only allow requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? allowRequestPattern;

/// Only allow requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostLinksRequestVariant2AllowResourceTypes>? allowResourceTypes;

/// Provide credentials for HTTP authentication.
final BrapiPostLinksRequestVariant2Authenticate? authenticate;

/// Attempt to proceed when 'awaited' events fail or timeout.
final bool? bestAttempt;

/// Check [options](https://pptr.dev/api/puppeteer.page.setcookie).
final List<BrapiPostLinksRequestVariant2Cookies>? cookies;

final String? emulateMediaType;

final bool excludeExternalLinks;

/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
final BrapiPostLinksRequestVariant2GotoOptions? gotoOptions;

/// Block undesired requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? rejectRequestPattern;

/// Block undesired requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostLinksRequestVariant2RejectResourceTypes>? rejectResourceTypes;

final Map<String,String>? setExtraHttpHeaders;

final bool? setJavaScriptEnabled;

/// URL to navigate to, eg. `https://example.com`.
final Uri url;

final String userAgent;

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final BrapiPostLinksRequestVariant2Viewport? viewport;

final bool visibleLinksOnly;

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final BrapiPostLinksRequestVariant2WaitForSelector? waitForSelector;

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
  'excludeExternalLinks': excludeExternalLinks,
  if (gotoOptions != null) 'gotoOptions': gotoOptions?.toJson(),
  'rejectRequestPattern': ?rejectRequestPattern,
  if (rejectResourceTypes != null) 'rejectResourceTypes': rejectResourceTypes?.map((e) => e.toJson()).toList(),
  'setExtraHTTPHeaders': ?setExtraHttpHeaders,
  'setJavaScriptEnabled': ?setJavaScriptEnabled,
  'url': url.toString(),
  'userAgent': userAgent,
  if (viewport != null) 'viewport': viewport?.toJson(),
  'visibleLinksOnly': visibleLinksOnly,
  if (waitForSelector != null) 'waitForSelector': waitForSelector?.toJson(),
  'waitForTimeout': ?waitForTimeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
BrapiPostLinksRequestVariant2 copyWith({double Function()? actionTimeout, List<BrapiPostLinksRequestVariant2AddScriptTag> Function()? addScriptTag, List<BrapiPostLinksRequestVariant2AddStyleTag> Function()? addStyleTag, List<String> Function()? allowRequestPattern, List<BrapiPostLinksRequestVariant2AllowResourceTypes> Function()? allowResourceTypes, BrapiPostLinksRequestVariant2Authenticate Function()? authenticate, bool Function()? bestAttempt, List<BrapiPostLinksRequestVariant2Cookies> Function()? cookies, String Function()? emulateMediaType, bool Function()? excludeExternalLinks, BrapiPostLinksRequestVariant2GotoOptions Function()? gotoOptions, List<String> Function()? rejectRequestPattern, List<BrapiPostLinksRequestVariant2RejectResourceTypes> Function()? rejectResourceTypes, Map<String, String> Function()? setExtraHttpHeaders, bool Function()? setJavaScriptEnabled, Uri? url, String Function()? userAgent, BrapiPostLinksRequestVariant2Viewport Function()? viewport, bool Function()? visibleLinksOnly, BrapiPostLinksRequestVariant2WaitForSelector Function()? waitForSelector, double Function()? waitForTimeout, }) { return BrapiPostLinksRequestVariant2(
  actionTimeout: actionTimeout != null ? actionTimeout() : this.actionTimeout,
  addScriptTag: addScriptTag != null ? addScriptTag() : this.addScriptTag,
  addStyleTag: addStyleTag != null ? addStyleTag() : this.addStyleTag,
  allowRequestPattern: allowRequestPattern != null ? allowRequestPattern() : this.allowRequestPattern,
  allowResourceTypes: allowResourceTypes != null ? allowResourceTypes() : this.allowResourceTypes,
  authenticate: authenticate != null ? authenticate() : this.authenticate,
  bestAttempt: bestAttempt != null ? bestAttempt() : this.bestAttempt,
  cookies: cookies != null ? cookies() : this.cookies,
  emulateMediaType: emulateMediaType != null ? emulateMediaType() : this.emulateMediaType,
  excludeExternalLinks: excludeExternalLinks != null ? excludeExternalLinks() : this.excludeExternalLinks,
  gotoOptions: gotoOptions != null ? gotoOptions() : this.gotoOptions,
  rejectRequestPattern: rejectRequestPattern != null ? rejectRequestPattern() : this.rejectRequestPattern,
  rejectResourceTypes: rejectResourceTypes != null ? rejectResourceTypes() : this.rejectResourceTypes,
  setExtraHttpHeaders: setExtraHttpHeaders != null ? setExtraHttpHeaders() : this.setExtraHttpHeaders,
  setJavaScriptEnabled: setJavaScriptEnabled != null ? setJavaScriptEnabled() : this.setJavaScriptEnabled,
  url: url ?? this.url,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
  viewport: viewport != null ? viewport() : this.viewport,
  visibleLinksOnly: visibleLinksOnly != null ? visibleLinksOnly() : this.visibleLinksOnly,
  waitForSelector: waitForSelector != null ? waitForSelector() : this.waitForSelector,
  waitForTimeout: waitForTimeout != null ? waitForTimeout() : this.waitForTimeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostLinksRequestVariant2 &&
          actionTimeout == other.actionTimeout &&
          listEquals(addScriptTag, other.addScriptTag) &&
          listEquals(addStyleTag, other.addStyleTag) &&
          listEquals(allowRequestPattern, other.allowRequestPattern) &&
          listEquals(allowResourceTypes, other.allowResourceTypes) &&
          authenticate == other.authenticate &&
          bestAttempt == other.bestAttempt &&
          listEquals(cookies, other.cookies) &&
          emulateMediaType == other.emulateMediaType &&
          excludeExternalLinks == other.excludeExternalLinks &&
          gotoOptions == other.gotoOptions &&
          listEquals(rejectRequestPattern, other.rejectRequestPattern) &&
          listEquals(rejectResourceTypes, other.rejectResourceTypes) &&
          setExtraHttpHeaders == other.setExtraHttpHeaders &&
          setJavaScriptEnabled == other.setJavaScriptEnabled &&
          url == other.url &&
          userAgent == other.userAgent &&
          viewport == other.viewport &&
          visibleLinksOnly == other.visibleLinksOnly &&
          waitForSelector == other.waitForSelector &&
          waitForTimeout == other.waitForTimeout; } 
@override int get hashCode { return Object.hashAll([actionTimeout, Object.hashAll(addScriptTag ?? const []), Object.hashAll(addStyleTag ?? const []), Object.hashAll(allowRequestPattern ?? const []), Object.hashAll(allowResourceTypes ?? const []), authenticate, bestAttempt, Object.hashAll(cookies ?? const []), emulateMediaType, excludeExternalLinks, gotoOptions, Object.hashAll(rejectRequestPattern ?? const []), Object.hashAll(rejectResourceTypes ?? const []), setExtraHttpHeaders, setJavaScriptEnabled, url, userAgent, viewport, visibleLinksOnly, waitForSelector, waitForTimeout]); } 
@override String toString() { return 'BrapiPostLinksRequestVariant2(actionTimeout: $actionTimeout, addScriptTag: $addScriptTag, addStyleTag: $addStyleTag, allowRequestPattern: $allowRequestPattern, allowResourceTypes: $allowResourceTypes, authenticate: $authenticate, bestAttempt: $bestAttempt, cookies: $cookies, emulateMediaType: $emulateMediaType, excludeExternalLinks: $excludeExternalLinks, gotoOptions: $gotoOptions, rejectRequestPattern: $rejectRequestPattern, rejectResourceTypes: $rejectResourceTypes, setExtraHttpHeaders: $setExtraHttpHeaders, setJavaScriptEnabled: $setJavaScriptEnabled, url: $url, userAgent: $userAgent, viewport: $viewport, visibleLinksOnly: $visibleLinksOnly, waitForSelector: $waitForSelector, waitForTimeout: $waitForTimeout)'; } 
 }
