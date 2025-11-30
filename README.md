# 💬 Flutter Firebase Chat App
A real-time chat application built with Flutter, Firebase Authentication, Cloud Firestore, and Provider for state management.
This project demonstrates a clean, beginner-friendly structure for building scalable chat apps.

<p align="center">
  <img src="assets/app_banner.png" width="600" />
</p>

---

## 🎥 Demo Video  
👉 Coming soon…

<p align="center">
  <a href="https://www.youtube.com/watch?v=VIDEO_ID">
    <img src="https://img.youtube.com/vi/VIDEO_ID/0.jpg" width="500" />
  </a>
</p>


---

## ⭐ Features

- 🔐 **Firebase Email/Password Authentication**
- 🗨 **Real-time messaging with Cloud Firestore**
- 👤 **User list with online users**
- ➡ **Chat between two users** (1-to-1 messaging)
- 📡 **Stream-based real-time UI updates**
- 🚪 **Logout & session handling**
- 🧠 **Provider for Auth + Chat state management**
- 🧼 **Clean, readable architecture**
- 🔥 **Firebase backend integration**

---

## 🏗 Clean Architecture Overview

```
lib/
│
├── components/
│   ├── chat_bubble.dart
│   ├── my_button.dart
│   └── my_input_field.dart
│
├── model/
│   └── message.dart
│
├── pages/
│   ├── home_page.dart
│   ├── chat_page.dart
│   ├── login_page.dart
│   └── register_page.dart
│
├── services/
│   ├── auth/
│   │   ├── auth_gate.dart
│   │   ├── auth_service.dart
│   │   └── login_or_register.dart
│   └── chat/
│       └── chat_service.dart
│
├── firebase_options.dart
├── main.dart
└── my_app.dart

```

---

## 🔧 Tech Stack

| Layer | Technology |
|------|------------|
| UI | Flutter (Material Design) |
| Backend	| Firebase |
| Authentication |	Firebase Auth |
| Database	| Cloud Firestore |
| State Management | Provider |
| Architecture | Clean, modular |
| Language |	Dart |

---

## 📡 How Messaging Works
Every message is stored in a chat room
```
chat_rooms/
   {userA_userB}/
      messages/
         message1
         message2
         ...
```

Messages include
```
{
  "senderId": "uid123",
  "senderEmail": "example@gmail.com",
  "receiverId": "uid456",
  "message": "Hi!",
  "timestamp": "2024-01-01"
}
```

## 🚀 Getting Started

### 1️⃣ Clone the Repository
```sh
https://github.com/sntanju/Chat_App.git
cd Chat_App
```

## 2️⃣ Install Dependencies
```sh
flutter pub get
```

## 3️⃣ Setup Firebase
1. Go to Firebase Console → Create a project
2. Add an iOS and Android app
3. Download google-services.json → place it in
```sh
android/app/
```
4. Download GoogleService-Info.plist → place in
```sh
ios/Runner/
```
5. Run
```sh
flutterfire configure
```


### 4️⃣ Run the App
```sh
flutter run
```



