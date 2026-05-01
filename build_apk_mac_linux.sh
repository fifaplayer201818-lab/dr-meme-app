#!/bin/bash
echo "Building APK..."
flutter pub get
flutter build apk --release
echo "APK location: build/app/outputs/flutter-apk/app-release.apk"
