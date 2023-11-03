// Response wrapper which has the states: [loading, success, error]

sealed class ResponseState<T> {}

class Loading<T> extends ResponseState<T> {}

class Success<T> extends ResponseState<T> {
  final T data;

  Success({required this.data});
}

class Error<T> extends ResponseState<T> {
  final String? message;

  Error({this.message});
}
