import 'dart:async';
import 'package:flutter/material.dart';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopwatchState();
}

class _StopwatchState extends State<StopWatchPage> {
  final Stopwatch _stopwatch = Stopwatch(); // _stopwatch object
  late Timer _timer;

  // This updates the UI while the stopwatch is running
  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 80), (timer) {
      setState(() {});
    });
  }

  void _handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
      _timer.cancel();
    } else {
      _stopwatch.start();
      _startTimer();
    }
    setState(() {});
  }

  void _handleReset() {
    _stopwatch.reset();
    setState(() {});
  }

  // Helper to format time as 00:00:00
  String _formatTime() {
    var milli = _stopwatch
        .elapsed
        .inMilliseconds; // thats mean the object _stopwatch gives us the total time passed in milliseconds
    String milliseconds = (milli % 1000).toString().padLeft(3, '0');
    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, '0');
    String minutes = ((milli ~/ 60000) % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds:$milliseconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stopwatch"),
        backgroundColor: const Color.fromARGB(187, 255, 193, 7),
      ),

      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _formatTime(),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _handleStartStop,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(183, 76, 175, 79),
                      ),
                      child: Text(
                        _stopwatch.isRunning ? "Stop" : "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: _handleReset,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                      ),
                      child: const Text(
                        "Reset",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Text(
              "Raw Milliseconds : ${_stopwatch.elapsed.inMilliseconds}",
            ),
          ),
        ],
      ),
    );
  }
}

/* 
Var mini returned always in milliseconds 
ex ) 65200 ms
ms : 65200 % 1000 = 200 ms 
sec : 65200 ~/ 1000 = 65 % 60 = 5s (every 1 s = 1000 ms)
min : 65200 ~/ 60000 = 1 % 60 = 1 min (every 1 min = 60000 ms)
             01 : 05 : 200
*/
