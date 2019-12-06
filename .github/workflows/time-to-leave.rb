name: time-to-leave

on: [push, pull_request]

jobs:
  test:

    runs-on: macOS-latest

    steps:
    - name: tapping
      run: |
        gem install bundler
        export HOMEBREW_NO_AUTO_UPDATE=1
        brew tap kashaiahyah85/homebrew-k85-tap
        cd "$(brew --repository)"/Library/Taps/kashaiahyah85/homebrew-k85-tap
        
    - name: testing time-to-leave
      run: |
        brew cask install time-to-leave
        brew uninstall chdman
