import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FinanceEducation extends StatefulWidget {
  const FinanceEducation({super.key});

  @override
  State<FinanceEducation> createState() => _FinanceEducationState();
}

class _FinanceEducationState extends State<FinanceEducation> {
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller1;

  @override
  void initState() {
    super.initState();
    const videoURL = 'https://www.youtube.com/watch?v=-CN8oSAMhec';

    const video = "https://www.youtube.com/watch?v=CzMzNanG7gI";
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoURL) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    _controller1 = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(video) ?? '',
      flags: const YoutubePlayerFlags(
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Finance Eduation',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: h * .02,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 34, 36),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: h * .03,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              //   _controller.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '1.Master class on investment',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: h * .05,
          ),
          YoutubePlayer(
            controller: _controller1,
            showVideoProgressIndicator: true,
            onReady: () {
              _controller1.play();
              print('Player is ready.');
            },
            onEnded: (YoutubeMetaData data) {
              //    data.call();
              // Do something when video ends
            },
          ),
          SizedBox(
            height: h * .05,
          ),
          Text(
            '2.How to save more money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: h * .02,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
}
