import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeVideo extends StatefulWidget {
  final String title;

  const HomeVideo({Key key, this.title}) : super(key: key);

  @override
  _HomeVideoState createState() => _HomeVideoState();
}

class _HomeVideoState extends State<HomeVideo> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.title);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Text(widget.title);
          // return Stack(
          //   children: [
          //     Center(
          //         child: AspectRatio(
          //       aspectRatio: _controller.value.aspectRatio,
          //       child: VideoPlayer(_controller),
          //     )),
          //     Center(
          //       //     child: ClipOval(
          //       //   child: Material(
          //       //     color: Colors.transparent, // button color
          //       //     child: InkWell(
          //       //       splashColor: Colors.black, // inkwell color
          //       //       child: SizedBox(
          //       //         width: 56,
          //       //         height: 56,
          //       //         child: Icon(_controller.value.isPlaying
          //       //             ? Icons.pause
          //       //             : Icons.play_arrow),
          //       //       ),
          //       //       onTap: () {
          //       //         setState(() {
          //       //           if (_controller.value.isPlaying) {
          //       //             _controller.pause();
          //       //           } else {
          //       //             _controller.play();
          //       //           }
          //       //         });
          //       //       },
          //       //     ),
          //       //   ),
          //       // )
          //       child: FloatingActionButton(
          //         heroTag: widget.title,
          //         mini: true,
          //         backgroundColor: Colors.transparent,
          //         hoverColor: Colors.black45,
          //         onPressed: () {
          //           setState(() {
          //             if (_controller.value.isPlaying) {
          //               _controller.pause();
          //             } else {
          //               _controller.play();
          //             }
          //           });
          //         },
          //         child: Icon(_controller.value.isPlaying
          //             ? Icons.pause
          //             : Icons.play_arrow),
          //       ),
          //     ),
          //   ],
          // );
        } else if (snapshot.connectionState == ConnectionState.none) {
          return Center(child: Text('None'));
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.active) {
          return Center(
            child: Text('active'),
          );
        } else {
          return Center(child: Text('Else'));
        }
      },
    );
  }
}
