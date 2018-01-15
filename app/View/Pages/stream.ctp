<head>
  <link href="http://vjs.zencdn.net/6.2.0/video-js.css" rel="stylesheet">

  <!-- If you'd like to support IE8 -->
  <script src="http://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>
</head>

<body class="text-center" style="margin:auto">
  <video  style="margin:auto;max-width:100vw; max-height: 100vh;"  width=600 height=400 id=example-video class="video-js vjs-default-skin" controls>
    <source src="http://104.198.2.123:8080/hls/stream.m3u8" type="application/x-mpegURL">
  </video>

  <script src="http://vjs.zencdn.net/6.2.0/video.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/videojs-flash@2/dist/videojs-flash.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/videojs-contrib-hls/5.12.2/videojs-contrib-hls.js"></script>
  <script>
    var player = videojs('example-video');
    player.play();
  </script>
</body>