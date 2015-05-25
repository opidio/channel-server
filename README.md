# Opidio Channel Server
[![Build Status](https://img.shields.io/circleci/project/opidio/channel-server.svg?style=flat-square)](https://circleci.com/gh/opidio/channel-server)
[![Code Coverage](https://img.shields.io/coveralls/opidio/channel-server.svg?style=flat-square)](https://coveralls.io/r/opidio/channel-server)

The Opidio Projects:

[![Hub Server](https://img.shields.io/badge/opidio-hub--server-lightgray.svg?style=flat-square)](https://github.com/opidio/hub-server)
[![Channel Server](https://img.shields.io/badge/opidio-channel--server-blue.svg?style=flat-square)](https://github.com/opidio/channel-server)
[![Android Client](https://img.shields.io/badge/opidio-android--client-lightgray.svg?style=flat-square)](https://github.com/opidio/android-client)
[![Landing Page](https://img.shields.io/badge/opidio-landing--page-lightgray.svg?style=flat-square)](https://github.com/opidio/landing-page)

The channel server is used for hosting the videos themselves and all video
metadata such as name, descriptions etc. (In other words mostly static content)

## This server is not made yet.
It's currently possible to emulate this server using a static nginx server instead. A suitable file structure is:
```
.
├── clarkson-hammond-may-live
│   ├── loading-the-trucks
│   │   ├── 1080p.mp4
│   │   ├── 1080p.png
│   │   └── video.json
│   └── rockin-robin
│       ├── 1080p.mp4
│       ├── 1080p.png
│       └── video.json
└── monstercat
    ├── eminence-soulero--invisible
    │   ├── 1080p.mp4
    │   ├── 1080p.png
    │   └── video.json
    └── stephen-walking--difference-between-aliens
        ├── 1080p.mp4
        ├── 1080p.png
        └── video.json
```
Where 1080p.mp4 is the video itself and 1080p.png is the thumbnail. The video.json contains some metadata that is directly downloaded by the android client. The contents should be along the lines of:
```
{
    "name": "Loading the trucks",
    "upload-date": "2015-05-12T115:00:00+00:00",
    "variants": [
        "1080p"
    ]
}
```

If you don't want to have to bother with all this, there's a demo channel server at [channel.opid.io](http://channel.opid.io) containing the files listed above.
