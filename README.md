# 🚀 Flutter Samples

This repository contains small Flutter practice projects.  
Each project focuses on learning one Flutter concept.

---

## 📂 Projects in this Repository

1. [Counter App](./counter_app) - ValueListenableBuilder state management  
2. [Bottom Sheet Demo](./bottom_sheet) - BottomSheet, BottomNavigationBar, Dropdown usage
3. [Student Management App](./hive_db_sample) - Hive database with CRUD operations (without Update)

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
   ```
   
3. **Get dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the app on your emulator or connected device:** 
   ```bash
   flutter run
   ```
