import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

final class _Client implements ApiClient {
  _Client(this.statuses);
  final List<int> statuses;
  final requests = <ApiRequest>[];

  @override
  Uri get baseUrl => Uri.parse('https://example.invalid');

  @override
  Future<void> close() async {}

  @override
  Future<ApiResponse> send(ApiRequest request) async {
    requests.add(request);
    return ApiResponse(statusCode: statuses.removeAt(0), body: 'ok');
  }

  @override
  Future<StreamedApiResponse> sendStreaming(ApiRequest request) async {
    requests.add(request);
    final status = statuses.removeAt(0);
    return StreamedApiResponse(
      statusCode: status,
      byteStream: Stream.value(
        utf8.encode(
          status == 200 ? 'data: hello\n\n' : 'failed',
        ),
      ),
    );
  }
}

final class _Executor with ApiExecutor {
  _Executor(this.apiConfig);
  @override
  final ApiConfig apiConfig;
}

final class _CachedStream implements Interceptor {
  @override
  Future<StreamedApiResponse> intercept(
    ApiRequest request,
    Handler next,
  ) async => StreamedApiResponse.fromResponse(
    ApiResponse(statusCode: 200, body: 'data: cached\n\n'),
  );
}

void main() {
  test('streaming auth refresh sees the actual 401 and retries', () async {
    final client = _Client([401, 200]);
    var refreshes = 0;
    final executor = _Executor(
      ApiConfig(
        client: client,
        interceptors: [
          AuthInterceptor(
            getToken: () async => 'first',
            refreshToken: () async {
              refreshes++;
              return 'second';
            },
          ),
        ],
      ),
    );
    final events = await executor
        .executeStreaming(
          const ApiRequest(method: 'GET', path: '/events'),
          onEvent: (data) => data,
        )
        .toList();
    expect(events, ['hello']);
    expect(refreshes, 1);
    expect(client.requests.map((r) => r.headers['Authorization']), [
      'Bearer first',
      'Bearer second',
    ]);
  });

  test(
    'streaming retry sees actual status and logging sees each attempt',
    () async {
      final client = _Client([503, 200]);
      final messages = <String>[];
      final executor = _Executor(
        ApiConfig(
          client: client,
          interceptors: [
            RetryInterceptor(maxRetries: 1, sleep: (_) async {}),
            LoggingInterceptor(logger: messages.add),
          ],
        ),
      );
      expect(
        await executor
            .executeStreaming(
              const ApiRequest(method: 'GET', path: '/events'),
              onEvent: (data) => data,
            )
            .toList(),
        ['hello'],
      );
      expect(client.requests, hasLength(2));
      expect(
        messages.where((s) => s.startsWith('<--')).first,
        startsWith('<-- 503'),
      );
    },
  );

  test(
    'streaming middleware can return a cached response without sending',
    () async {
      final client = _Client([]);
      final executor = _Executor(
        ApiConfig(client: client, interceptors: [_CachedStream()]),
      );
      expect(
        await executor
            .executeStreaming(
              const ApiRequest(method: 'GET', path: '/events'),
              onEvent: (data) => data,
            )
            .toList(),
        ['cached'],
      );
      expect(client.requests, isEmpty);
    },
  );

  test('OneOf serializes nested lists and maps recursively', () {
    const value = OneOf2<List<Map<String, Object?>>, String>.a([
      {
        'items': [1, null, 'x'],
      },
    ]);
    expect(value.toJson(), [
      {
        'items': [1, null, 'x'],
      },
    ]);
  });
}
