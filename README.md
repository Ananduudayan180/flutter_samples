# 🚀 Flutter Samples

This repository contains small Flutter practice projects.  
Each project focuses on learning one Flutter concept.

---

## 📂 Projects in this Repository

1. [Counter App](./counter_app) - ValueListenableBuilder state management  
2. [Bottom Sheet Demo](./bottom_sheet) - BottomSheet, BottomNavigationBar, Dropdown usage
3. [Student Management App](./hive_db_sample) - Hive database with CRUD operations (without Update)
4. [SQLite DB Sample](./sqlite_db_sample)- Sqlite database with CRUD operations
5. [Shared Preferences](./shared_preferences)- Shared Preferences login, Splash screen feature

---

## Project 1: Counter App (ValueListenableBuilder)

A simple counter app demonstrating:

- ValueNotifier
- ValueListenableBuilder

### ✨ Features
- Increment counter using FloatingActionButton
- Rebuild only the widget that listens to the counter
- Clean and simple Flutter state management example

---

## Project 2: Bottom Sheet Demo

A demo app showcasing:

### ✨ Features
- Persistent and modal bottom sheets
- BottomNavigationBar with multiple items
- DropdownButtonFormField

---

## Project 3: Student Management App (Hive Database)

A demo using Hive as local storage (Create, Read, Delete) 

✨ Features
 - Add student details (Name & Age)
 - View student list with ValueListenableBuilder
 - Delete students from the list
 - Local persistent storage using Hive

 ---

 ## Project 4: SQLite DB Sample 

 Student Name and Age app using SQLite as local storage

✨ Features
 - Add student details (Name & Age)
 - View student list with ValueListenableBuilder
 - CRUD support
 - Edit Student(UI): Click edit to auto-fill name & age, button change to Update Student

 ---

 ## Project 5: Shared Preferences Login Sample

 Uses shared_preferences to save login

✨ Features
 - Splash screen
 - Uses shared_preferences to save login
 - Home page accessible only to logged-in users

---

### 🚀 How to Run

1. **Clone this repository:**
   ```bash
   git clone https://github.com/Ananduudayan180/flutter_samples.git
   ```

2. **Navigate to the desired project folder:**
   ```bash   
   cd flutter_samples/counter_app
   # or
   cd flutter_samples/bottom_sheet
   # or
   cd flutter_samples/hive_db_sample
   # or
   cd flutter_samples/sqlite_db_sample
   # or
   cd flutter_samples/shared_preferences
   ```
   
3. **Get dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the app on your emulator or connected device:** 
   ```bash
   flutter run
   ```
