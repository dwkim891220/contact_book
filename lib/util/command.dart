import 'dart:async';

import 'package:flutter/foundation.dart';

import 'result.dart';

typedef CmdAction<T> = Future<Result<T>> Function();
typedef CmdActionWithArg<T, A> = Future<Result<T>> Function(A);

abstract class Command<T> extends ChangeNotifier {
  Command();

  bool _running = false;

  bool get running => _running;

  Result<T>? _result;

  bool get error => _result is Error;

  bool get completed => _result is Ok;

  Result? get result => _result;

  void clearResult() {
    _result = null;
  }

  Future<void> _execute(CmdAction<T> action) async {
    if (_running) return;

    _running = true;
    _result = null;

    try {
      _result = await action();
    } finally {
      _running = false;
    }
  }
}

class CmdNoArg<T> extends Command<T> {
  CmdNoArg(this._action);

  final CmdAction<T> _action;

  Future<void> execute() async {
    await _execute(_action);
  }
}

class CmdArg<T, A> extends Command<T> {
  CmdArg(this._action);

  final CmdActionWithArg<T, A> _action;

  Future<void> execute(A argument) async {
    await _execute(() => _action(argument));
  }
}
