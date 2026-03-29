// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_json_request_variant1_add_script_tag.dart';import 'brapi_post_json_request_variant1_add_style_tag.dart';import 'brapi_post_json_request_variant1_authenticate.dart';import 'brapi_post_json_request_variant1_cookies.dart';import 'brapi_post_json_request_variant1_custom_ai.dart';import 'brapi_post_json_request_variant1_goto_options.dart';import 'brapi_post_json_request_variant1_response_format.dart';import 'brapi_post_json_request_variant1_viewport.dart';import 'brapi_post_json_request_variant1_wait_for_selector.dart';final class BrapiPostJsonRequestVariant1AllowResourceTypes {const BrapiPostJsonRequestVariant1AllowResourceTypes._(this.value);

factory BrapiPostJsonRequestVariant1AllowResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostJsonRequestVariant1AllowResourceTypes._(json),
}; }

static const BrapiPostJsonRequestVariant1AllowResourceTypes document = BrapiPostJsonRequestVariant1AllowResourceTypes._('document');

static const BrapiPostJsonRequestVariant1AllowResourceTypes stylesheet = BrapiPostJsonRequestVariant1AllowResourceTypes._('stylesheet');

static const BrapiPostJsonRequestVariant1AllowResourceTypes image = BrapiPostJsonRequestVariant1AllowResourceTypes._('image');

static const BrapiPostJsonRequestVariant1AllowResourceTypes media = BrapiPostJsonRequestVariant1AllowResourceTypes._('media');

static const BrapiPostJsonRequestVariant1AllowResourceTypes font = BrapiPostJsonRequestVariant1AllowResourceTypes._('font');

static const BrapiPostJsonRequestVariant1AllowResourceTypes script = BrapiPostJsonRequestVariant1AllowResourceTypes._('script');

static const BrapiPostJsonRequestVariant1AllowResourceTypes texttrack = BrapiPostJsonRequestVariant1AllowResourceTypes._('texttrack');

static const BrapiPostJsonRequestVariant1AllowResourceTypes xhr = BrapiPostJsonRequestVariant1AllowResourceTypes._('xhr');

static const BrapiPostJsonRequestVariant1AllowResourceTypes fetch = BrapiPostJsonRequestVariant1AllowResourceTypes._('fetch');

static const BrapiPostJsonRequestVariant1AllowResourceTypes prefetch = BrapiPostJsonRequestVariant1AllowResourceTypes._('prefetch');

static const BrapiPostJsonRequestVariant1AllowResourceTypes eventsource = BrapiPostJsonRequestVariant1AllowResourceTypes._('eventsource');

static const BrapiPostJsonRequestVariant1AllowResourceTypes websocket = BrapiPostJsonRequestVariant1AllowResourceTypes._('websocket');

static const BrapiPostJsonRequestVariant1AllowResourceTypes manifest = BrapiPostJsonRequestVariant1AllowResourceTypes._('manifest');

static const BrapiPostJsonRequestVariant1AllowResourceTypes signedexchange = BrapiPostJsonRequestVariant1AllowResourceTypes._('signedexchange');

static const BrapiPostJsonRequestVariant1AllowResourceTypes ping = BrapiPostJsonRequestVariant1AllowResourceTypes._('ping');

static const BrapiPostJsonRequestVariant1AllowResourceTypes cspviolationreport = BrapiPostJsonRequestVariant1AllowResourceTypes._('cspviolationreport');

static const BrapiPostJsonRequestVariant1AllowResourceTypes preflight = BrapiPostJsonRequestVariant1AllowResourceTypes._('preflight');

static const BrapiPostJsonRequestVariant1AllowResourceTypes $other = BrapiPostJsonRequestVariant1AllowResourceTypes._('other');

static const List<BrapiPostJsonRequestVariant1AllowResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonRequestVariant1AllowResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostJsonRequestVariant1AllowResourceTypes($value)'; } 
 }
final class BrapiPostJsonRequestVariant1RejectResourceTypes {const BrapiPostJsonRequestVariant1RejectResourceTypes._(this.value);

factory BrapiPostJsonRequestVariant1RejectResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostJsonRequestVariant1RejectResourceTypes._(json),
}; }

static const BrapiPostJsonRequestVariant1RejectResourceTypes document = BrapiPostJsonRequestVariant1RejectResourceTypes._('document');

static const BrapiPostJsonRequestVariant1RejectResourceTypes stylesheet = BrapiPostJsonRequestVariant1RejectResourceTypes._('stylesheet');

static const BrapiPostJsonRequestVariant1RejectResourceTypes image = BrapiPostJsonRequestVariant1RejectResourceTypes._('image');

static const BrapiPostJsonRequestVariant1RejectResourceTypes media = BrapiPostJsonRequestVariant1RejectResourceTypes._('media');

static const BrapiPostJsonRequestVariant1RejectResourceTypes font = BrapiPostJsonRequestVariant1RejectResourceTypes._('font');

static const BrapiPostJsonRequestVariant1RejectResourceTypes script = BrapiPostJsonRequestVariant1RejectResourceTypes._('script');

static const BrapiPostJsonRequestVariant1RejectResourceTypes texttrack = BrapiPostJsonRequestVariant1RejectResourceTypes._('texttrack');

static const BrapiPostJsonRequestVariant1RejectResourceTypes xhr = BrapiPostJsonRequestVariant1RejectResourceTypes._('xhr');

static const BrapiPostJsonRequestVariant1RejectResourceTypes fetch = BrapiPostJsonRequestVariant1RejectResourceTypes._('fetch');

static const BrapiPostJsonRequestVariant1RejectResourceTypes prefetch = BrapiPostJsonRequestVariant1RejectResourceTypes._('prefetch');

static const BrapiPostJsonRequestVariant1RejectResourceTypes eventsource = BrapiPostJsonRequestVariant1RejectResourceTypes._('eventsource');

static const BrapiPostJsonRequestVariant1RejectResourceTypes websocket = BrapiPostJsonRequestVariant1RejectResourceTypes._('websocket');

static const BrapiPostJsonRequestVariant1RejectResourceTypes manifest = BrapiPostJsonRequestVariant1RejectResourceTypes._('manifest');

static const BrapiPostJsonRequestVariant1RejectResourceTypes signedexchange = BrapiPostJsonRequestVariant1RejectResourceTypes._('signedexchange');

static const BrapiPostJsonRequestVariant1RejectResourceTypes ping = BrapiPostJsonRequestVariant1RejectResourceTypes._('ping');

static const BrapiPostJsonRequestVariant1RejectResourceTypes cspviolationreport = BrapiPostJsonRequestVariant1RejectResourceTypes._('cspviolationreport');

static const BrapiPostJsonRequestVariant1RejectResourceTypes preflight = BrapiPostJsonRequestVariant1RejectResourceTypes._('preflight');

static const BrapiPostJsonRequestVariant1RejectResourceTypes $other = BrapiPostJsonRequestVariant1RejectResourceTypes._('other');

static const List<BrapiPostJsonRequestVariant1RejectResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostJsonRequestVariant1RejectResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostJsonRequestVariant1RejectResourceTypes($value)'; } 
 }
final class BrapiPostJsonRequestVariant1 {const BrapiPostJsonRequestVariant1({this.actionTimeout, this.addScriptTag, this.addStyleTag, this.allowRequestPattern, this.allowResourceTypes, this.authenticate, this.bestAttempt, this.cookies, this.customAi, this.emulateMediaType, this.gotoOptions, required this.html, this.prompt, this.rejectRequestPattern, this.rejectResourceTypes, this.responseFormat, this.setExtraHttpHeaders, this.setJavaScriptEnabled, this.userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', this.viewport, this.waitForSelector, this.waitForTimeout, });

factory BrapiPostJsonRequestVariant1.fromJson(Map<String, dynamic> json) { return BrapiPostJsonRequestVariant1(
  actionTimeout: json['actionTimeout'] != null ? (json['actionTimeout'] as num).toDouble() : null,
  addScriptTag: (json['addScriptTag'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1AddScriptTag.fromJson(e as Map<String, dynamic>)).toList(),
  addStyleTag: (json['addStyleTag'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1AddStyleTag.fromJson(e as Map<String, dynamic>)).toList(),
  allowRequestPattern: (json['allowRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowResourceTypes: (json['allowResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1AllowResourceTypes.fromJson(e as String)).toList(),
  authenticate: json['authenticate'] != null ? BrapiPostJsonRequestVariant1Authenticate.fromJson(json['authenticate'] as Map<String, dynamic>) : null,
  bestAttempt: json['bestAttempt'] as bool?,
  cookies: (json['cookies'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1Cookies.fromJson(e as Map<String, dynamic>)).toList(),
  customAi: (json['custom_ai'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1CustomAi.fromJson(e as Map<String, dynamic>)).toList(),
  emulateMediaType: json['emulateMediaType'] as String?,
  gotoOptions: json['gotoOptions'] != null ? BrapiPostJsonRequestVariant1GotoOptions.fromJson(json['gotoOptions'] as Map<String, dynamic>) : null,
  html: json['html'] as String,
  prompt: json['prompt'] as String?,
  rejectRequestPattern: (json['rejectRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectResourceTypes: (json['rejectResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostJsonRequestVariant1RejectResourceTypes.fromJson(e as String)).toList(),
  responseFormat: json['response_format'] != null ? BrapiPostJsonRequestVariant1ResponseFormat.fromJson(json['response_format'] as Map<String, dynamic>) : null,
  setExtraHttpHeaders: (json['setExtraHTTPHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setJavaScriptEnabled: json['setJavaScriptEnabled'] as bool?,
  userAgent: json.containsKey('userAgent') ? json['userAgent'] as String : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
  viewport: json['viewport'] != null ? BrapiPostJsonRequestVariant1Viewport.fromJson(json['viewport'] as Map<String, dynamic>) : null,
  waitForSelector: json['waitForSelector'] != null ? BrapiPostJsonRequestVariant1WaitForSelector.fromJson(json['waitForSelector'] as Map<String, dynamic>) : null,
  waitForTimeout: json['waitForTimeout'] != null ? (json['waitForTimeout'] as num).toDouble() : null,
); }

/// The maximum duration allowed for the browser action to complete after the page has loaded (such as taking screenshots, extracting content, or generating PDFs). If this time limit is exceeded, the action stops and returns a timeout error.
final double? actionTimeout;

/// Adds a `<script>` tag into the page with the desired URL or content.
final List<BrapiPostJsonRequestVariant1AddScriptTag>? addScriptTag;

/// Adds a `<link rel="stylesheet">` tag into the page with the desired URL or a `<style type="text/css">` tag with the content.
final List<BrapiPostJsonRequestVariant1AddStyleTag>? addStyleTag;

/// Only allow requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? allowRequestPattern;

/// Only allow requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostJsonRequestVariant1AllowResourceTypes>? allowResourceTypes;

/// Provide credentials for HTTP authentication.
final BrapiPostJsonRequestVariant1Authenticate? authenticate;

/// Attempt to proceed when 'awaited' events fail or timeout.
final bool? bestAttempt;

/// Check [options](https://pptr.dev/api/puppeteer.page.setcookie).
final List<BrapiPostJsonRequestVariant1Cookies>? cookies;

/// Optional list of custom AI models to use for the request. The models will be tried in the order provided, and in case a model returns an error, the next one will be used as fallback.
final List<BrapiPostJsonRequestVariant1CustomAi>? customAi;

final String? emulateMediaType;

/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
final BrapiPostJsonRequestVariant1GotoOptions? gotoOptions;

/// Set the content of the page, eg: `<h1>Hello World!!</h1>`. Either `html` or `url` must be set.
final String html;

final String? prompt;

/// Block undesired requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? rejectRequestPattern;

/// Block undesired requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostJsonRequestVariant1RejectResourceTypes>? rejectResourceTypes;

final BrapiPostJsonRequestVariant1ResponseFormat? responseFormat;

final Map<String,String>? setExtraHttpHeaders;

final bool? setJavaScriptEnabled;

final String userAgent;

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final BrapiPostJsonRequestVariant1Viewport? viewport;

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final BrapiPostJsonRequestVariant1WaitForSelector? waitForSelector;

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
  if (customAi != null) 'custom_ai': customAi?.map((e) => e.toJson()).toList(),
  'emulateMediaType': ?emulateMediaType,
  if (gotoOptions != null) 'gotoOptions': gotoOptions?.toJson(),
  'html': html,
  'prompt': ?prompt,
  'rejectRequestPattern': ?rejectRequestPattern,
  if (rejectResourceTypes != null) 'rejectResourceTypes': rejectResourceTypes?.map((e) => e.toJson()).toList(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  'setExtraHTTPHeaders': ?setExtraHttpHeaders,
  'setJavaScriptEnabled': ?setJavaScriptEnabled,
  'userAgent': userAgent,
  if (viewport != null) 'viewport': viewport?.toJson(),
  if (waitForSelector != null) 'waitForSelector': waitForSelector?.toJson(),
  'waitForTimeout': ?waitForTimeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('html') && json['html'] is String; } 
BrapiPostJsonRequestVariant1 copyWith({double Function()? actionTimeout, List<BrapiPostJsonRequestVariant1AddScriptTag> Function()? addScriptTag, List<BrapiPostJsonRequestVariant1AddStyleTag> Function()? addStyleTag, List<String> Function()? allowRequestPattern, List<BrapiPostJsonRequestVariant1AllowResourceTypes> Function()? allowResourceTypes, BrapiPostJsonRequestVariant1Authenticate Function()? authenticate, bool Function()? bestAttempt, List<BrapiPostJsonRequestVariant1Cookies> Function()? cookies, List<BrapiPostJsonRequestVariant1CustomAi> Function()? customAi, String Function()? emulateMediaType, BrapiPostJsonRequestVariant1GotoOptions Function()? gotoOptions, String? html, String Function()? prompt, List<String> Function()? rejectRequestPattern, List<BrapiPostJsonRequestVariant1RejectResourceTypes> Function()? rejectResourceTypes, BrapiPostJsonRequestVariant1ResponseFormat Function()? responseFormat, Map<String, String> Function()? setExtraHttpHeaders, bool Function()? setJavaScriptEnabled, String Function()? userAgent, BrapiPostJsonRequestVariant1Viewport Function()? viewport, BrapiPostJsonRequestVariant1WaitForSelector Function()? waitForSelector, double Function()? waitForTimeout, }) { return BrapiPostJsonRequestVariant1(
  actionTimeout: actionTimeout != null ? actionTimeout() : this.actionTimeout,
  addScriptTag: addScriptTag != null ? addScriptTag() : this.addScriptTag,
  addStyleTag: addStyleTag != null ? addStyleTag() : this.addStyleTag,
  allowRequestPattern: allowRequestPattern != null ? allowRequestPattern() : this.allowRequestPattern,
  allowResourceTypes: allowResourceTypes != null ? allowResourceTypes() : this.allowResourceTypes,
  authenticate: authenticate != null ? authenticate() : this.authenticate,
  bestAttempt: bestAttempt != null ? bestAttempt() : this.bestAttempt,
  cookies: cookies != null ? cookies() : this.cookies,
  customAi: customAi != null ? customAi() : this.customAi,
  emulateMediaType: emulateMediaType != null ? emulateMediaType() : this.emulateMediaType,
  gotoOptions: gotoOptions != null ? gotoOptions() : this.gotoOptions,
  html: html ?? this.html,
  prompt: prompt != null ? prompt() : this.prompt,
  rejectRequestPattern: rejectRequestPattern != null ? rejectRequestPattern() : this.rejectRequestPattern,
  rejectResourceTypes: rejectResourceTypes != null ? rejectResourceTypes() : this.rejectResourceTypes,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  setExtraHttpHeaders: setExtraHttpHeaders != null ? setExtraHttpHeaders() : this.setExtraHttpHeaders,
  setJavaScriptEnabled: setJavaScriptEnabled != null ? setJavaScriptEnabled() : this.setJavaScriptEnabled,
  userAgent: userAgent != null ? userAgent() : this.userAgent,
  viewport: viewport != null ? viewport() : this.viewport,
  waitForSelector: waitForSelector != null ? waitForSelector() : this.waitForSelector,
  waitForTimeout: waitForTimeout != null ? waitForTimeout() : this.waitForTimeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostJsonRequestVariant1 &&
          actionTimeout == other.actionTimeout &&
          listEquals(addScriptTag, other.addScriptTag) &&
          listEquals(addStyleTag, other.addStyleTag) &&
          listEquals(allowRequestPattern, other.allowRequestPattern) &&
          listEquals(allowResourceTypes, other.allowResourceTypes) &&
          authenticate == other.authenticate &&
          bestAttempt == other.bestAttempt &&
          listEquals(cookies, other.cookies) &&
          listEquals(customAi, other.customAi) &&
          emulateMediaType == other.emulateMediaType &&
          gotoOptions == other.gotoOptions &&
          html == other.html &&
          prompt == other.prompt &&
          listEquals(rejectRequestPattern, other.rejectRequestPattern) &&
          listEquals(rejectResourceTypes, other.rejectResourceTypes) &&
          responseFormat == other.responseFormat &&
          setExtraHttpHeaders == other.setExtraHttpHeaders &&
          setJavaScriptEnabled == other.setJavaScriptEnabled &&
          userAgent == other.userAgent &&
          viewport == other.viewport &&
          waitForSelector == other.waitForSelector &&
          waitForTimeout == other.waitForTimeout; } 
@override int get hashCode { return Object.hashAll([actionTimeout, Object.hashAll(addScriptTag ?? const []), Object.hashAll(addStyleTag ?? const []), Object.hashAll(allowRequestPattern ?? const []), Object.hashAll(allowResourceTypes ?? const []), authenticate, bestAttempt, Object.hashAll(cookies ?? const []), Object.hashAll(customAi ?? const []), emulateMediaType, gotoOptions, html, prompt, Object.hashAll(rejectRequestPattern ?? const []), Object.hashAll(rejectResourceTypes ?? const []), responseFormat, setExtraHttpHeaders, setJavaScriptEnabled, userAgent, viewport, waitForSelector, waitForTimeout]); } 
@override String toString() { return 'BrapiPostJsonRequestVariant1(actionTimeout: $actionTimeout, addScriptTag: $addScriptTag, addStyleTag: $addStyleTag, allowRequestPattern: $allowRequestPattern, allowResourceTypes: $allowResourceTypes, authenticate: $authenticate, bestAttempt: $bestAttempt, cookies: $cookies, customAi: $customAi, emulateMediaType: $emulateMediaType, gotoOptions: $gotoOptions, html: $html, prompt: $prompt, rejectRequestPattern: $rejectRequestPattern, rejectResourceTypes: $rejectResourceTypes, responseFormat: $responseFormat, setExtraHttpHeaders: $setExtraHttpHeaders, setJavaScriptEnabled: $setJavaScriptEnabled, userAgent: $userAgent, viewport: $viewport, waitForSelector: $waitForSelector, waitForTimeout: $waitForTimeout)'; } 
 }
