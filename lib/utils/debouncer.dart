import 'dart:async';

class Debouncer {
  Timer? _timer;

  void debounce(Function() callback, {Duration? duration}) {
    if (_timer == null) {
      _timer = Timer(duration ?? Duration(seconds: 1), callback);
    } else {
      _timer!.cancel();
      _timer = Timer(duration ?? Duration(seconds: 1), callback);
    }
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}
