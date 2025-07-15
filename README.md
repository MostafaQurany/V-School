
# 🎓 V-School App

**V-School** is a modern, full-featured school management mobile application built with **Flutter** and powered by a robust **API** backend. It serves two main user roles: **Parents** and **Teachers**, offering a smooth, intuitive interface and real-time educational communication.

---

## 👥 User Roles

### 👨‍👩‍👧‍👦 Parent
- View their children’s:
  - Assignments & Homework
  - Attendance Records
  - Class Schedule & Exam Schedule
  - School Announcements
  - School Events
  - Results / Grades
  - Notifications
- Communicate with teachers via in-app chat

### 👨‍🏫 Teacher
- Add & manage:
  - Assignments
  - Attendance
  - Events
  - Announcements
- View students' performance
- Chat with parents and colleagues


---

## ⚙️ Tech Stack

| Technology       | Description                                |
|------------------|--------------------------------------------|
| Flutter          | Cross-platform mobile development          |
| REST API         | Backend integration (API-driven structure) |
| Dio              | Network handling and API calls             |
| BLoC/Cubit       | State management                           |
| Freezed          | Data modeling and immutability             |
| Secure Storage   | Local secure data persistence              |
| Custom Routing   | Deep linking and navigation structure      |
| ThemeManager     | Centralized theme system                   |

---

## 🗂️ Project Structure

```bash
lib/
├── app/
│   └── v_school.dart
├── core/
│   ├── di/                 # Dependency Injection
│   ├── extension/          # Dart extensions
│   ├── helpers/            # Storage, observer, form helpers
│   ├── networking/         # API service & models
│   ├── route/              # App routing
│   ├── theme/              # Theme and styles
│   ├── utils/              # Constants and assets
│   └── widgets/            # Shared reusable widgets
├── features/
│   ├── announcement/
│   ├── attendance/
│   ├── authentication/
│   ├── events/
│   └── home/
└── main.dart
```

---

## 🔐 Authentication

- Secure login using username & password
- Support for forget password flow
- API token-based authentication

---

## 🚀 Features List

- 🔔 Real-time announcements
- 📅 Event calendar with filters
- ✅ Assignment management
- 🗓️ Attendance tracking
- 💬 Chat system
- 🧪 Quiz and exam results
- 📚 Class & exam schedule
- 🧑 Profile management
- 🌐 Multi-language support (English / Arabic)

---

## 🌍 Localization

- Fully supports both **Arabic** and **English**
- Right-to-left (RTL) layout included

---

## 📦 Dependencies

A few of the core dependencies used:

```yaml
dependencies:
  flutter_bloc:
  freezed_annotation:
  dio:
  get_it:
  flutter_secure_storage:
  intl:
  json_serializable:
```

_(See full list in `pubspec.yaml`)_

---

## 📄 License

This project is private and not open-sourced. All rights reserved..

---

## 👨‍💻 Author

- **Name:** Mostafa Qurany  
- **GitHub:** [@MostafaQurany](https://github.com/MostafaQurany)  
- **Email:** mostafa.qurany.prog@gmail.com  
