import 'dart:async';
import 'package:to_do_list/classes/tareas.dart';


class Streamer {
  final _controler = StreamController<List<Tareas>>();

  Stream<List<Tareas>> get counterStream => _controler.stream;
  
   void startCounter(List<Tareas> x) {
    _controler.sink.add(x);
  }
  void dispose(){
    _controler.close();
  }
}