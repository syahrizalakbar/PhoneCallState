# phone_state_i

## Listen to Phone Call State and provide call back

```
import 'package:incoming_call_event/incoming_call_event.dart';

...

  StreamSubscription streamSubscription;

  @override
  void dispose() {
    super.dispose();
    streamSubscription.cancel();
  }

  @override
  void initState() {
    super.initState();
    streamSubscription = incomingCallEvent.listen((IncomingCallEvent event) {
      print('Call is Incoming or Connected' + event.stateC);
      //event.stateC has values "true" or "false"
    });
  }

...

```



