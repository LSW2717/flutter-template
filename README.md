## 1 Android Setting

open with Android Studio

Project Settings -> SDK (Android API 35)

Android 는 기본적으로 실행시 debug 모드로 실행되며 release 모드로 실행 시키기 위해서는 release 키 를 등록 해야 한다.

(생성한 키로 Google play store 에 올리게 되면 해당 키만 인식 하므로 키 보관 주의)

### 1.1 release key 등록

```shell
cd ${project root}/android/app
```

```shell
keytool -genkey -v -keystore ${your_keyname}.jks -keyalg RSA -keysize 2048 -validity 10000 -alias release
$ keytool -export -rfc -keystore release-key.jks -alias release -file release_certificate.pem
```
### 1.2 key password 생성 후 key.properties 에 등록
```shell
cd ${project root}/android
```
```shell
touch key.properties
```

* key.properties 에 아래 정보 기입
```groovy
storePassword=${your_password}
keyPassword=${your_password}
keyAlias=release
storeFile=${your_keyname}.jks
```

### 1.3 build.gradle 에 signingConfigs, buildTypes 추가

```shell
cd ${project root}/android/app
```
* build.gradle 에 아래 정보 기입

```groovy
android {
    
    ...
    
    signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword keystoreProperties['storePassword']
        }
    }


    buildTypes {
        release {
            signingConfig signingConfigs.release
        }

    }   
}
```

## 2 Ios Setting

```shell
cd {project_home}/ios (with Podfile)
pod update ObjectBox
pod install --repo-update
```

## 3 Build

```shell
// Flutter 라이브러리 입포트 (with pubspec.yaml)
cd {project_home}
flutter pub get
```

```shell
// code generator 패키지 rebuild
flutter pub run build_runner build
```

### 3.1 Device Turn On
Android Studio -> Device Manager -> Run \
Android Studio -> Open IOS Simulator

## 4 Release
실제 디바이스 연결 후
```shell
flutter run --release
```
