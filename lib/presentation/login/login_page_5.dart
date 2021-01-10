import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/widget/wave/animated_wave.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _buildBackground(context),
      ],
    );
  }

  Widget _buildBackground(BuildContext context) {
    // return WaveWidget(
    //   isLoop: false,
    //   config: CustomConfig(
    //     colors: [
    //       Colors.red[300],
    //       Colors.red[500],
    //       Colors.red[700],
    //       Colors.red[800],
    //     ],
    //     durations: [35000, 19440, 10800, 6000],
    //     heightPercentages: [0.20, 0.23, 0.25, 0.30],
    //   ),
    //   size: Size(
    //     double.infinity,
    //     MediaQuery.of(context).size.height,
    //   ),
    //   backgroundColor: Colors.white,
    // );

    return AnimatedWave();
  }
}
