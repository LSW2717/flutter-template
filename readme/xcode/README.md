# 1. XCode

https://developer.apple.com/kr/xcode/

XCode download...

# 2. Settings

* XCode 를 설치하면 자동으로 Simulator가 설치된다.

* XCode 에서 pod package를 사용하기 위해서 cocoapods 를 설치한다.

```shell
cd {user_home}
sudo gem install cocoapods
```
OR
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '\nexport PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
brew cleanup -d -v
brew install cocoapods
```

설치 확인

```
pod
```

