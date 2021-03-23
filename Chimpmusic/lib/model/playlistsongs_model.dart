class PlaylistSongs {
  String imageUrl, title, artist, time, song;

  PlaylistSongs({
    this.artist,
    this.imageUrl,
    this.title,
    this.time,
    this.song,
  });
}

final List<PlaylistSongs> playlistsongs = [
  PlaylistSongs(
      imageUrl:
          'https://images.unsplash.com/photo-1606936083160-f59c5d7c7a31?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
      title: 'Wonder',
      artist: 'Steven Goland',
      time: '4:00',
      song: 'assets/powder.mp3'),
  PlaylistSongs(
      imageUrl:
          'https://images.unsplash.com/photo-1615761579101-6ee432391258?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      title: 'Holy',
      artist: 'Geard Nunez',
      time: '3:49',
      song: 'assets/army.mp3'),
  PlaylistSongs(
      imageUrl:
          'https://images.unsplash.com/photo-1616120026677-62b6b565cc97?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      title: 'Day Times',
      artist: 'Lets play',
      time: '4:25',
      song: 'assets/baby.mp3'),
];
