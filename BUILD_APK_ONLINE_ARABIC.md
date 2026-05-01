# طريقة استخراج APK بدون تثبيت Flutter على جهازك

## المطلوب
- حساب Gmail فقط.
- موقع Codemagic: https://codemagic.io/start/

## الخطوات

1. افتح موقع Codemagic وسجل دخول بحساب Gmail.
2. اضغط Add application.
3. اختار Upload zip / أو اربط GitHub لو متاح.
4. ارفع ملف المشروع المضغوط هذا.
5. Codemagic سيقرأ ملف `codemagic.yaml` تلقائياً.
6. اختار Workflow باسم: `Build Android APK`.
7. اضغط Start new build.
8. بعد انتهاء الـ build، افتح Artifacts.
9. حمّل الملف:

```text
app-release.apk
```

ده هو ملف التطبيق الذي يتم تثبيته على Android.

## ملاحظات مهمة
- هذه الطريقة لا تحتاج تثبيت Flutter أو Android Studio عندك.
- أول Build ممكن يأخذ 10 إلى 20 دقيقة.
- النسخة الحالية Demo/Starter، وبعدها نقدر نربط Firebase والاشتراكات الحقيقية.
