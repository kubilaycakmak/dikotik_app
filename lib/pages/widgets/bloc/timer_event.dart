part of 'timer_bloc.dart';

@immutable
abstract class TimerEvent extends Equatable {
  TimerEvent([List props = const []]) : super();
}

class Start extends TimerEvent {
  final int duration;

  Start({@required this.duration}) : super([duration]);

  @override
  String toString() => "Start { duration: $duration }";

  @override
  List<Object> get props => throw UnimplementedError();
}

class Pause extends TimerEvent {
  @override
  String toString() => "Pause";

  @override
  List<Object> get props => throw UnimplementedError();
}

class Resume extends TimerEvent {
  @override
  String toString() => "Resume";

  @override
  List<Object> get props => throw UnimplementedError();
}

class Reset extends TimerEvent {
  @override
  String toString() => "Reset";

  @override
  List<Object> get props => throw UnimplementedError();
}

class Tick extends TimerEvent {
  final int duration;

  Tick({@required this.duration}) : super([duration]);

  @override
  String toString() => "Tick { duration: $duration }";

  @override
  List<Object> get props => throw UnimplementedError();
}