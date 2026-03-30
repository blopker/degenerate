// GENERATED CODE - DO NOT MODIFY BY HAND

final class CallEnumUpdateStatus {const CallEnumUpdateStatus._(this.value);

factory CallEnumUpdateStatus.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'completed' => completed,
  _ => CallEnumUpdateStatus._(json),
}; }

static const CallEnumUpdateStatus canceled = CallEnumUpdateStatus._('canceled');

static const CallEnumUpdateStatus completed = CallEnumUpdateStatus._('completed');

static const List<CallEnumUpdateStatus> values = [canceled, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CallEnumUpdateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CallEnumUpdateStatus($value)'; } 
 }
/// The HTTP method we should use when calling the `url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class UpdateCallRequestMethod {const UpdateCallRequestMethod._(this.value);

factory UpdateCallRequestMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateCallRequestMethod._(json),
}; }

static const UpdateCallRequestMethod $get = UpdateCallRequestMethod._('GET');

static const UpdateCallRequestMethod post = UpdateCallRequestMethod._('POST');

static const List<UpdateCallRequestMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateCallRequestMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateCallRequestMethod($value)'; } 
 }
/// The HTTP method that we should use to request the `fallback_url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class UpdateCallRequestFallbackMethod {const UpdateCallRequestFallbackMethod._(this.value);

factory UpdateCallRequestFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateCallRequestFallbackMethod._(json),
}; }

static const UpdateCallRequestFallbackMethod $get = UpdateCallRequestFallbackMethod._('GET');

static const UpdateCallRequestFallbackMethod post = UpdateCallRequestFallbackMethod._('POST');

static const List<UpdateCallRequestFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateCallRequestFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateCallRequestFallbackMethod($value)'; } 
 }
/// The HTTP method we should use when requesting the `status_callback` URL. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class UpdateCallRequestStatusCallbackMethod {const UpdateCallRequestStatusCallbackMethod._(this.value);

factory UpdateCallRequestStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateCallRequestStatusCallbackMethod._(json),
}; }

static const UpdateCallRequestStatusCallbackMethod $get = UpdateCallRequestStatusCallbackMethod._('GET');

static const UpdateCallRequestStatusCallbackMethod post = UpdateCallRequestStatusCallbackMethod._('POST');

static const List<UpdateCallRequestStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateCallRequestStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateCallRequestStatusCallbackMethod($value)'; } 
 }
final class UpdateCallRequest {const UpdateCallRequest({this.url, this.method, this.status, this.fallbackUrl, this.fallbackMethod, this.statusCallback, this.statusCallbackMethod, this.twiml, this.timeLimit, });

factory UpdateCallRequest.fromJson(Map<String, dynamic> json) { return UpdateCallRequest(
  url: json['Url'] != null ? Uri.parse(json['Url'] as String) : null,
  method: json['Method'] != null ? UpdateCallRequestMethod.fromJson(json['Method'] as String) : null,
  status: json['Status'] != null ? CallEnumUpdateStatus.fromJson(json['Status'] as String) : null,
  fallbackUrl: json['FallbackUrl'] != null ? Uri.parse(json['FallbackUrl'] as String) : null,
  fallbackMethod: json['FallbackMethod'] != null ? UpdateCallRequestFallbackMethod.fromJson(json['FallbackMethod'] as String) : null,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  statusCallbackMethod: json['StatusCallbackMethod'] != null ? UpdateCallRequestStatusCallbackMethod.fromJson(json['StatusCallbackMethod'] as String) : null,
  twiml: json['Twiml'] as String?,
  timeLimit: json['TimeLimit'] != null ? (json['TimeLimit'] as num).toInt() : null,
); }

/// The absolute URL that returns the TwiML instructions for the call. We will call this URL using the `method` when the call connects. For more information, see the [Url Parameter](https://www.twilio.com/docs/voice/make-calls#specify-a-url-parameter) section in [Making Calls](https://www.twilio.com/docs/voice/make-calls).
final Uri? url;

/// The HTTP method we should use when calling the `url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final UpdateCallRequestMethod? method;

final CallEnumUpdateStatus? status;

/// The URL that we call using the `fallback_method` if an error occurs when requesting or executing the TwiML at `url`. If an `application_sid` parameter is present, this parameter is ignored.
final Uri? fallbackUrl;

/// The HTTP method that we should use to request the `fallback_url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final UpdateCallRequestFallbackMethod? fallbackMethod;

/// The URL we should call using the `status_callback_method` to send status information to your application. If no `status_callback_event` is specified, we will send the `completed` status. If an `application_sid` parameter is present, this parameter is ignored. URLs must contain a valid hostname (underscores are not permitted).
final Uri? statusCallback;

/// The HTTP method we should use when requesting the `status_callback` URL. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final UpdateCallRequestStatusCallbackMethod? statusCallbackMethod;

/// TwiML instructions for the call Twilio will use without fetching Twiml from url. Twiml and url parameters are mutually exclusive
final String? twiml;

/// The maximum duration of the call in seconds. Constraints depend on account and configuration.
final int? timeLimit;

Map<String, dynamic> toJson() { return {
  if (url != null) 'Url': url?.toString(),
  if (method != null) 'Method': method?.toJson(),
  if (status != null) 'Status': status?.toJson(),
  if (fallbackUrl != null) 'FallbackUrl': fallbackUrl?.toString(),
  if (fallbackMethod != null) 'FallbackMethod': fallbackMethod?.toJson(),
  if (statusCallback != null) 'StatusCallback': statusCallback?.toString(),
  if (statusCallbackMethod != null) 'StatusCallbackMethod': statusCallbackMethod?.toJson(),
  'Twiml': ?twiml,
  'TimeLimit': ?timeLimit,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Url', 'Method', 'Status', 'FallbackUrl', 'FallbackMethod', 'StatusCallback', 'StatusCallbackMethod', 'Twiml', 'TimeLimit'}.contains(key)); } 
UpdateCallRequest copyWith({Uri Function()? url, UpdateCallRequestMethod Function()? method, CallEnumUpdateStatus Function()? status, Uri Function()? fallbackUrl, UpdateCallRequestFallbackMethod Function()? fallbackMethod, Uri Function()? statusCallback, UpdateCallRequestStatusCallbackMethod Function()? statusCallbackMethod, String Function()? twiml, int Function()? timeLimit, }) { return UpdateCallRequest(
  url: url != null ? url() : this.url,
  method: method != null ? method() : this.method,
  status: status != null ? status() : this.status,
  fallbackUrl: fallbackUrl != null ? fallbackUrl() : this.fallbackUrl,
  fallbackMethod: fallbackMethod != null ? fallbackMethod() : this.fallbackMethod,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  twiml: twiml != null ? twiml() : this.twiml,
  timeLimit: timeLimit != null ? timeLimit() : this.timeLimit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateCallRequest &&
          url == other.url &&
          method == other.method &&
          status == other.status &&
          fallbackUrl == other.fallbackUrl &&
          fallbackMethod == other.fallbackMethod &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          twiml == other.twiml &&
          timeLimit == other.timeLimit; } 
@override int get hashCode { return Object.hash(url, method, status, fallbackUrl, fallbackMethod, statusCallback, statusCallbackMethod, twiml, timeLimit); } 
@override String toString() { return 'UpdateCallRequest(url: $url, method: $method, status: $status, fallbackUrl: $fallbackUrl, fallbackMethod: $fallbackMethod, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, twiml: $twiml, timeLimit: $timeLimit)'; } 
 }
