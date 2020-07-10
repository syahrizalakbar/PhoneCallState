import 'dart:async';
import 'package:flutter/services.dart';

const EventChannel _incomingCallEventChannel = EventChannel('PHONE_STATE_99');

class IncomingCallEvent{

  final String stateC;
  IncomingCallEvent(this.stateC);

  @override
  String toString() => '$stateC';
}



Stream<IncomingCallEvent> _incomingCallEvent;

IncomingCallEvent _listIncomingCallEvent(String stateD){
  return new IncomingCallEvent(stateD);
}


/// A broadcast stream of events from the phone state.
Stream<IncomingCallEvent> get incomingCallEvent {
  if (_incomingCallEvent == null) {
    _incomingCallEvent = _incomingCallEventChannel
        .receiveBroadcastStream()
        .map(
            (dynamic event) => _listIncomingCallEvent(event));
  }
  return _incomingCallEvent;
}
