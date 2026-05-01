# Edu Stream Starter App

قالب Flutter لتطبيق تعليمي بشكل Netflix-style.

## المميزات الموجودة

- Login / Register
- Courses / Levels / Lessons
- Video lesson
- Quiz بعد كل فيديو بنسبة نجاح 70%
- Final Exam بعد نهاية كل Level بنسبة نجاح 70%
- PDF Summary داخل التطبيق
- اشتراك يدوي Manual Subscription
- حد جهازين لكل حساب
- Admin mode بسيط داخل الكود كبداية
- Firestore-ready structure

## التشغيل

1. ثبت Flutter.
2. افتح الفولدر في VS Code أو Android Studio.
3. شغل:

```bash
flutter pub get
flutter run
```

## Firebase Setup

1. اعمل Firebase project.
2. فعل Authentication > Email/Password.
3. فعل Firestore Database.
4. فعل Storage.
5. شغل FlutterFire CLI:

```bash
dart pub global activate flutterfire_cli
flutterfire configure
```

ده هيضيف ملف `firebase_options.dart` داخل `lib/`.

## إضافة المحتوى

ممكن تضيف محتوى تجريبي من داخل الملف:

`lib/services/demo_content.dart`

أو تضيفه لاحقًا في Firestore بالهيكل التالي:

```text
courses/{courseId}
levels/{levelId}
lessons/{lessonId}
quizzes/{quizId}
level_exams/{examId}
subscriptions/{userId}
devices/{userId}/user_devices/{deviceId}
progress/{userId}/lesson_progress/{lessonId}
```

## الاشتراك اليدوي

في البداية، الدفع يكون خارج التطبيق. بعد الدفع، أنت تغيّر حالة الطالب في Firestore:

```text
users/{userId}
subscriptionStatus: active
subscriptionEndDate: Timestamp
```

## حد الجهازين

عند login، التطبيق يسجل deviceId. لو الحساب عليه أكثر من جهازين، يمنع الدخول.

## حماية PDF

الـ PDF يفتح داخل التطبيق فقط. يفضل لاحقًا إضافة watermark server-side لكل طالب.

## ملاحظة مهمة

YouTube Unlisted مجاني لكنه غير آمن 100%. للحماية الحقيقية استخدم لاحقًا Cloudflare Stream أو Vimeo.
