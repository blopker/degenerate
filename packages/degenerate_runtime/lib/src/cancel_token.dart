import 'dart:async';

/// A token that can be used to cancel one or more API requests.
///
/// Pass the same token to multiple requests to cancel them all at once:
/// ```dart
/// final token = CancelToken();
/// final results = await Future.wait([
///   sdk.pets.listPets(options: RequestOptions(cancelToken: token)),
///   sdk.pets.getPet(petId: '1', options: RequestOptions(cancelToken: token)),
/// ]);
/// // Cancel both if needed:
/// token.cancel();
/// ```
final class CancelToken {
  Completer<void>? _completer;

  /// Whether [cancel] has been called.
  bool get isCancelled => _completer?.isCompleted ?? false;

  /// Cancel all requests using this token.
  ///
  /// Safe to call multiple times.
  void cancel() {
    _completer ??= Completer();
    if (!_completer!.isCompleted) _completer!.complete();
  }

  /// A future that completes when [cancel] is called.
  Future<void> get whenCancelled {
    _completer ??= Completer();
    return _completer!.future;
  }
}

/// Thrown when a request is cancelled via [CancelToken].
final class CancelledException implements Exception {
  final String? message;

  const CancelledException([this.message]);

  @override
  String toString() =>
      message != null ? 'CancelledException($message)' : 'CancelledException';
}
