import 'cancel_token.dart';

/// Per-request overrides for timeout, headers, and cancellation.
///
/// Pass to any generated API method to customize a single call:
/// ```dart
/// await sdk.pets.listPets(
///   options: RequestOptions(
///     timeout: Duration(seconds: 30),
///     extraHeaders: {'X-Request-Id': '123'},
///     cancelToken: myToken,
///   ),
/// );
/// ```
final class RequestOptions {
  /// Override the default timeout for this request.
  final Duration? timeout;

  /// Extra headers merged on top of config defaults and operation headers.
  final Map<String, String>? extraHeaders;

  /// Token to cancel this request.
  final CancelToken? cancelToken;

  const RequestOptions({this.timeout, this.extraHeaders, this.cancelToken});
}
