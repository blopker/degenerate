// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'brapi_post_pdf_request_variant1_add_script_tag.dart';import 'brapi_post_pdf_request_variant1_add_style_tag.dart';import 'brapi_post_pdf_request_variant1_authenticate.dart';import 'brapi_post_pdf_request_variant1_cookies.dart';import 'brapi_post_pdf_request_variant1_goto_options.dart';import 'brapi_post_pdf_request_variant1_pdf_options.dart';import 'brapi_post_pdf_request_variant1_viewport.dart';import 'brapi_post_pdf_request_variant1_wait_for_selector.dart';final class BrapiPostPdfRequestVariant1AllowResourceTypes {const BrapiPostPdfRequestVariant1AllowResourceTypes._(this.value);

factory BrapiPostPdfRequestVariant1AllowResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostPdfRequestVariant1AllowResourceTypes._(json),
}; }

static const BrapiPostPdfRequestVariant1AllowResourceTypes document = BrapiPostPdfRequestVariant1AllowResourceTypes._('document');

static const BrapiPostPdfRequestVariant1AllowResourceTypes stylesheet = BrapiPostPdfRequestVariant1AllowResourceTypes._('stylesheet');

static const BrapiPostPdfRequestVariant1AllowResourceTypes image = BrapiPostPdfRequestVariant1AllowResourceTypes._('image');

static const BrapiPostPdfRequestVariant1AllowResourceTypes media = BrapiPostPdfRequestVariant1AllowResourceTypes._('media');

static const BrapiPostPdfRequestVariant1AllowResourceTypes font = BrapiPostPdfRequestVariant1AllowResourceTypes._('font');

static const BrapiPostPdfRequestVariant1AllowResourceTypes script = BrapiPostPdfRequestVariant1AllowResourceTypes._('script');

static const BrapiPostPdfRequestVariant1AllowResourceTypes texttrack = BrapiPostPdfRequestVariant1AllowResourceTypes._('texttrack');

static const BrapiPostPdfRequestVariant1AllowResourceTypes xhr = BrapiPostPdfRequestVariant1AllowResourceTypes._('xhr');

static const BrapiPostPdfRequestVariant1AllowResourceTypes fetch = BrapiPostPdfRequestVariant1AllowResourceTypes._('fetch');

static const BrapiPostPdfRequestVariant1AllowResourceTypes prefetch = BrapiPostPdfRequestVariant1AllowResourceTypes._('prefetch');

static const BrapiPostPdfRequestVariant1AllowResourceTypes eventsource = BrapiPostPdfRequestVariant1AllowResourceTypes._('eventsource');

static const BrapiPostPdfRequestVariant1AllowResourceTypes websocket = BrapiPostPdfRequestVariant1AllowResourceTypes._('websocket');

static const BrapiPostPdfRequestVariant1AllowResourceTypes manifest = BrapiPostPdfRequestVariant1AllowResourceTypes._('manifest');

static const BrapiPostPdfRequestVariant1AllowResourceTypes signedexchange = BrapiPostPdfRequestVariant1AllowResourceTypes._('signedexchange');

static const BrapiPostPdfRequestVariant1AllowResourceTypes ping = BrapiPostPdfRequestVariant1AllowResourceTypes._('ping');

static const BrapiPostPdfRequestVariant1AllowResourceTypes cspviolationreport = BrapiPostPdfRequestVariant1AllowResourceTypes._('cspviolationreport');

static const BrapiPostPdfRequestVariant1AllowResourceTypes preflight = BrapiPostPdfRequestVariant1AllowResourceTypes._('preflight');

static const BrapiPostPdfRequestVariant1AllowResourceTypes $other = BrapiPostPdfRequestVariant1AllowResourceTypes._('other');

static const List<BrapiPostPdfRequestVariant1AllowResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfRequestVariant1AllowResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostPdfRequestVariant1AllowResourceTypes($value)'; } 
 }
final class BrapiPostPdfRequestVariant1RejectResourceTypes {const BrapiPostPdfRequestVariant1RejectResourceTypes._(this.value);

factory BrapiPostPdfRequestVariant1RejectResourceTypes.fromJson(String json) { return switch (json) {
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
  _ => BrapiPostPdfRequestVariant1RejectResourceTypes._(json),
}; }

static const BrapiPostPdfRequestVariant1RejectResourceTypes document = BrapiPostPdfRequestVariant1RejectResourceTypes._('document');

static const BrapiPostPdfRequestVariant1RejectResourceTypes stylesheet = BrapiPostPdfRequestVariant1RejectResourceTypes._('stylesheet');

static const BrapiPostPdfRequestVariant1RejectResourceTypes image = BrapiPostPdfRequestVariant1RejectResourceTypes._('image');

static const BrapiPostPdfRequestVariant1RejectResourceTypes media = BrapiPostPdfRequestVariant1RejectResourceTypes._('media');

static const BrapiPostPdfRequestVariant1RejectResourceTypes font = BrapiPostPdfRequestVariant1RejectResourceTypes._('font');

static const BrapiPostPdfRequestVariant1RejectResourceTypes script = BrapiPostPdfRequestVariant1RejectResourceTypes._('script');

static const BrapiPostPdfRequestVariant1RejectResourceTypes texttrack = BrapiPostPdfRequestVariant1RejectResourceTypes._('texttrack');

static const BrapiPostPdfRequestVariant1RejectResourceTypes xhr = BrapiPostPdfRequestVariant1RejectResourceTypes._('xhr');

static const BrapiPostPdfRequestVariant1RejectResourceTypes fetch = BrapiPostPdfRequestVariant1RejectResourceTypes._('fetch');

static const BrapiPostPdfRequestVariant1RejectResourceTypes prefetch = BrapiPostPdfRequestVariant1RejectResourceTypes._('prefetch');

static const BrapiPostPdfRequestVariant1RejectResourceTypes eventsource = BrapiPostPdfRequestVariant1RejectResourceTypes._('eventsource');

static const BrapiPostPdfRequestVariant1RejectResourceTypes websocket = BrapiPostPdfRequestVariant1RejectResourceTypes._('websocket');

static const BrapiPostPdfRequestVariant1RejectResourceTypes manifest = BrapiPostPdfRequestVariant1RejectResourceTypes._('manifest');

static const BrapiPostPdfRequestVariant1RejectResourceTypes signedexchange = BrapiPostPdfRequestVariant1RejectResourceTypes._('signedexchange');

static const BrapiPostPdfRequestVariant1RejectResourceTypes ping = BrapiPostPdfRequestVariant1RejectResourceTypes._('ping');

static const BrapiPostPdfRequestVariant1RejectResourceTypes cspviolationreport = BrapiPostPdfRequestVariant1RejectResourceTypes._('cspviolationreport');

static const BrapiPostPdfRequestVariant1RejectResourceTypes preflight = BrapiPostPdfRequestVariant1RejectResourceTypes._('preflight');

static const BrapiPostPdfRequestVariant1RejectResourceTypes $other = BrapiPostPdfRequestVariant1RejectResourceTypes._('other');

static const List<BrapiPostPdfRequestVariant1RejectResourceTypes> values = [document, stylesheet, image, media, font, script, texttrack, xhr, fetch, prefetch, eventsource, websocket, manifest, signedexchange, ping, cspviolationreport, preflight, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BrapiPostPdfRequestVariant1RejectResourceTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BrapiPostPdfRequestVariant1RejectResourceTypes($value)'; } 
 }
final class BrapiPostPdfRequestVariant1 {const BrapiPostPdfRequestVariant1({this.actionTimeout, this.addScriptTag, this.addStyleTag, this.allowRequestPattern, this.allowResourceTypes, this.authenticate, this.bestAttempt, this.cookies, this.emulateMediaType, this.gotoOptions, required this.html, this.pdfOptions, this.rejectRequestPattern, this.rejectResourceTypes, this.setExtraHttpHeaders, this.setJavaScriptEnabled, this.userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', this.viewport, this.waitForSelector, this.waitForTimeout, });

factory BrapiPostPdfRequestVariant1.fromJson(Map<String, dynamic> json) { return BrapiPostPdfRequestVariant1(
  actionTimeout: json['actionTimeout'] != null ? (json['actionTimeout'] as num).toDouble() : null,
  addScriptTag: (json['addScriptTag'] as List<dynamic>?)?.map((e) => BrapiPostPdfRequestVariant1AddScriptTag.fromJson(e as Map<String, dynamic>)).toList(),
  addStyleTag: (json['addStyleTag'] as List<dynamic>?)?.map((e) => BrapiPostPdfRequestVariant1AddStyleTag.fromJson(e as Map<String, dynamic>)).toList(),
  allowRequestPattern: (json['allowRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowResourceTypes: (json['allowResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostPdfRequestVariant1AllowResourceTypes.fromJson(e as String)).toList(),
  authenticate: json['authenticate'] != null ? BrapiPostPdfRequestVariant1Authenticate.fromJson(json['authenticate'] as Map<String, dynamic>) : null,
  bestAttempt: json['bestAttempt'] as bool?,
  cookies: (json['cookies'] as List<dynamic>?)?.map((e) => BrapiPostPdfRequestVariant1Cookies.fromJson(e as Map<String, dynamic>)).toList(),
  emulateMediaType: json['emulateMediaType'] as String?,
  gotoOptions: json['gotoOptions'] != null ? BrapiPostPdfRequestVariant1GotoOptions.fromJson(json['gotoOptions'] as Map<String, dynamic>) : null,
  html: json['html'] as String,
  pdfOptions: json['pdfOptions'] != null ? BrapiPostPdfRequestVariant1PdfOptions.fromJson(json['pdfOptions'] as Map<String, dynamic>) : null,
  rejectRequestPattern: (json['rejectRequestPattern'] as List<dynamic>?)?.map((e) => e as String).toList(),
  rejectResourceTypes: (json['rejectResourceTypes'] as List<dynamic>?)?.map((e) => BrapiPostPdfRequestVariant1RejectResourceTypes.fromJson(e as String)).toList(),
  setExtraHttpHeaders: (json['setExtraHTTPHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  setJavaScriptEnabled: json['setJavaScriptEnabled'] as bool?,
  userAgent: json.containsKey('userAgent') ? json['userAgent'] as String : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
  viewport: json['viewport'] != null ? BrapiPostPdfRequestVariant1Viewport.fromJson(json['viewport'] as Map<String, dynamic>) : null,
  waitForSelector: json['waitForSelector'] != null ? BrapiPostPdfRequestVariant1WaitForSelector.fromJson(json['waitForSelector'] as Map<String, dynamic>) : null,
  waitForTimeout: json['waitForTimeout'] != null ? (json['waitForTimeout'] as num).toDouble() : null,
); }

/// The maximum duration allowed for the browser action to complete after the page has loaded (such as taking screenshots, extracting content, or generating PDFs). If this time limit is exceeded, the action stops and returns a timeout error.
final double? actionTimeout;

/// Adds a `<script>` tag into the page with the desired URL or content.
final List<BrapiPostPdfRequestVariant1AddScriptTag>? addScriptTag;

/// Adds a `<link rel="stylesheet">` tag into the page with the desired URL or a `<style type="text/css">` tag with the content.
final List<BrapiPostPdfRequestVariant1AddStyleTag>? addStyleTag;

/// Only allow requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? allowRequestPattern;

/// Only allow requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostPdfRequestVariant1AllowResourceTypes>? allowResourceTypes;

/// Provide credentials for HTTP authentication.
final BrapiPostPdfRequestVariant1Authenticate? authenticate;

/// Attempt to proceed when 'awaited' events fail or timeout.
final bool? bestAttempt;

/// Check [options](https://pptr.dev/api/puppeteer.page.setcookie).
final List<BrapiPostPdfRequestVariant1Cookies>? cookies;

final String? emulateMediaType;

/// Check [options](https://pptr.dev/api/puppeteer.gotooptions).
final BrapiPostPdfRequestVariant1GotoOptions? gotoOptions;

/// Set the content of the page, eg: `<h1>Hello World!!</h1>`. Either `html` or `url` must be set.
final String html;

/// Check [options](https://pptr.dev/api/puppeteer.pdfoptions).
final BrapiPostPdfRequestVariant1PdfOptions? pdfOptions;

/// Block undesired requests that match the provided regex patterns, eg. '/^.*\.(css)'.
final List<String>? rejectRequestPattern;

/// Block undesired requests that match the provided resource types, eg. 'image' or 'script'.
final List<BrapiPostPdfRequestVariant1RejectResourceTypes>? rejectResourceTypes;

final Map<String,String>? setExtraHttpHeaders;

final bool? setJavaScriptEnabled;

final String userAgent;

/// Check [options](https://pptr.dev/api/puppeteer.page.setviewport).
final BrapiPostPdfRequestVariant1Viewport? viewport;

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final BrapiPostPdfRequestVariant1WaitForSelector? waitForSelector;

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
  if (pdfOptions != null) 'pdfOptions': pdfOptions?.toJson(),
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
BrapiPostPdfRequestVariant1 copyWith({double Function()? actionTimeout, List<BrapiPostPdfRequestVariant1AddScriptTag> Function()? addScriptTag, List<BrapiPostPdfRequestVariant1AddStyleTag> Function()? addStyleTag, List<String> Function()? allowRequestPattern, List<BrapiPostPdfRequestVariant1AllowResourceTypes> Function()? allowResourceTypes, BrapiPostPdfRequestVariant1Authenticate Function()? authenticate, bool Function()? bestAttempt, List<BrapiPostPdfRequestVariant1Cookies> Function()? cookies, String Function()? emulateMediaType, BrapiPostPdfRequestVariant1GotoOptions Function()? gotoOptions, String? html, BrapiPostPdfRequestVariant1PdfOptions Function()? pdfOptions, List<String> Function()? rejectRequestPattern, List<BrapiPostPdfRequestVariant1RejectResourceTypes> Function()? rejectResourceTypes, Map<String, String> Function()? setExtraHttpHeaders, bool Function()? setJavaScriptEnabled, String Function()? userAgent, BrapiPostPdfRequestVariant1Viewport Function()? viewport, BrapiPostPdfRequestVariant1WaitForSelector Function()? waitForSelector, double Function()? waitForTimeout, }) { return BrapiPostPdfRequestVariant1(
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
  pdfOptions: pdfOptions != null ? pdfOptions() : this.pdfOptions,
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
      other is BrapiPostPdfRequestVariant1 &&
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
          pdfOptions == other.pdfOptions &&
          listEquals(rejectRequestPattern, other.rejectRequestPattern) &&
          listEquals(rejectResourceTypes, other.rejectResourceTypes) &&
          setExtraHttpHeaders == other.setExtraHttpHeaders &&
          setJavaScriptEnabled == other.setJavaScriptEnabled &&
          userAgent == other.userAgent &&
          viewport == other.viewport &&
          waitForSelector == other.waitForSelector &&
          waitForTimeout == other.waitForTimeout; } 
@override int get hashCode { return Object.hash(actionTimeout, Object.hashAll(addScriptTag ?? const []), Object.hashAll(addStyleTag ?? const []), Object.hashAll(allowRequestPattern ?? const []), Object.hashAll(allowResourceTypes ?? const []), authenticate, bestAttempt, Object.hashAll(cookies ?? const []), emulateMediaType, gotoOptions, html, pdfOptions, Object.hashAll(rejectRequestPattern ?? const []), Object.hashAll(rejectResourceTypes ?? const []), setExtraHttpHeaders, setJavaScriptEnabled, userAgent, viewport, waitForSelector, waitForTimeout); } 
@override String toString() { return 'BrapiPostPdfRequestVariant1(actionTimeout: $actionTimeout, addScriptTag: $addScriptTag, addStyleTag: $addStyleTag, allowRequestPattern: $allowRequestPattern, allowResourceTypes: $allowResourceTypes, authenticate: $authenticate, bestAttempt: $bestAttempt, cookies: $cookies, emulateMediaType: $emulateMediaType, gotoOptions: $gotoOptions, html: $html, pdfOptions: $pdfOptions, rejectRequestPattern: $rejectRequestPattern, rejectResourceTypes: $rejectResourceTypes, setExtraHttpHeaders: $setExtraHttpHeaders, setJavaScriptEnabled: $setJavaScriptEnabled, userAgent: $userAgent, viewport: $viewport, waitForSelector: $waitForSelector, waitForTimeout: $waitForTimeout)'; } 
 }
