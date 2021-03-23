import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:chimpmusic/model/playlistsongs_model.dart';

class SongScreen extends StatefulWidget {
  final PlaylistSongs playlistsongs;
  SongScreen({this.playlistsongs});

  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  //variables for play and pause Button
  bool playing = false;
  IconData playBtn = Icons.play_arrow;
  //create the Music Player
  AudioPlayer _player;
  AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  //Custom Slider
  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
          activeColor: Colors.blue[800],
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  //
  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  //Now let's initialize our player
  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    //now let's handle the audioplayer time

    //this function will allow you to get the music duration
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };

    //this function will allow us to move the cursor of the slider while we are playing the song
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(14, 11, 30, 1),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios)),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image:
                                  NetworkImage(widget.playlistsongs.imageUrl),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        widget.playlistsongs.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.playlistsongs.artist,
                        style: TextStyle(
                          color: Colors.white24,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Colors.white10,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Container(
                          width: 300.0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white38),
                                ),
                                Text(
                                  "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white38),
                                ),
                              ]),
                        ),
                        slider(),
                        Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.5, color: Colors.white38),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.skip_previous,
                                size: 45,
                                color: Colors.white,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (!playing) {
                                    //now let's play the song
                                    cache.play("baby.mp3");
                                    setState(() {
                                      playBtn = Icons.pause;
                                      playing = true;
                                    });
                                  } else {
                                    _player.pause();
                                    setState(() {
                                      playBtn = Icons.play_arrow;
                                      playing = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  playBtn,
                                  size: 52,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.skip_next,
                                size: 45,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
