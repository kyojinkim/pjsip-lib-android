# pjsip-lib-android
A [PJSIP](https://www.pjsip.org) library for Android with OpenSSL, OpenH264, Opus

Based on [telefon-one/react-native-sip2-builder](https://github.com/telefon-one/react-native-sip2-builder)


## Versions
| Library              | Version |
|----------------------|---------|
| Android API          | >23-30  |
| Android NDK          | r19c    |
| PJSIP                | 2.10    |
| OPENSSL              | 1.0.2s  |
| OPENH264             | 2.1.1   | 
| OPUS                 | 1.3.1   |
| SWIG                 | 3.0.12  |

## Defined options
```
#define PJMEDIA_HAS_VIDEO 1
#define PJMEDIA_AUDIO_DEV_HAS_ANDROID_JNI 0
#define PJMEDIA_AUDIO_DEV_HAS_OPENSL 1
#define PJSIP_AUTH_AUTO_SEND_NEXT 0
#define PJMEDIA_HAS_WEBRTC_AEC 1
#define PJMEDIA_HAS_SPEEX_AEC 1
#define PJMEDIA_SPEEX_AEC_USE_AGC 1
#define PJMEDIA_SPEEX_AEC_USE_DENOISE 1
#define PJMEDIA_HAS_OPUS_CODEC 1
#define PJMEDIA_CODEC_OPUS_DEFAULT_SAMPLE_RATE 16000
#define PJMEDIA_CODEC_OPUS_DEFAULT_BIT_RATE 24000
#define PTIME 20
#define PJMEDIA_CODEC_OPUS_DEFAULT_COMPLEXITY 5
#define PJMEDIA_CODEC_OPUS_DEFAULT_CBR PJ_FALSE
```

overwrite `/pjsip/third_party/build/speex/config.h` for speex to operate in floating-point


## Build for Android
```
git clone https://github.com/kyojinkim/pjsip-lib-android
cd pjsip-lib-android
./build_android.sh
```

## Output for Android
```
./dist/android/src/main/jniLibs/*
./dist/android/src/main/java/*
```
