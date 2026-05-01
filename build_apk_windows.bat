@echo off
echo Building APK...
flutter pub get
flutter build apk --release
echo.
echo APK location:
echo build\app\outputs\flutter-apk\app-release.apk
pause
