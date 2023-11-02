// Response wrapper which has the states: [loading, success, error]

sealed class ResponseState<T> {}

class Loading extends ResponseState {}

class Success<T> extends ResponseState<T> {
  final T data;

  Success({required this.data});
}

class Error extends ResponseState {
  final String? message;

  Error({this.message});
}
