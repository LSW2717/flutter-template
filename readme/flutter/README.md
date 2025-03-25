# 1. Flutter

https://docs.flutter.dev/get-started/install/macos/mobile-ios

Flutter download...

# 2. Settings

* flutter 환경 변수 설정 (.zshrc 파일 안에 추가)

```
unzip {flutter-home}
cd {user-home}
touch ~/.zshrc
open ~/.zshrc
```

```
export PATH="$PATH:{flutter-home}/bin"
```

* 설치 확인

``` 
 flutter
``` 

* doctor 확인을 통해 설치가 필요한 항목을 확인 할 수 있다.

모두 정상일 경우

``` 
flutter doctor


[✓] Flutter (Channel stable, 3.27.3, on macOS 15.3 24D60 darwin-arm64, locale ko-KR)
[✓] Android toolchain - develop for Android devices (Android SDK version 35.0.1)
[✓] Xcode - develop for iOS and macOS (Xcode 16.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2024.2)
[✓] IntelliJ IDEA Ultimate Edition (version 2024.3.1.1)
[✓] VS Code (version 1.96.4)
[✓] Connected device (4 available)
[✓] Network resources

• No issues found!
```