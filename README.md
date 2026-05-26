# LemonBite (Little Lemon Menu App)

LemonBite is an iOS portfolio application developed for **Little Lemon**. It showcases the restaurant menu by fetching data from a remote server, persisting it locally for offline access, and providing robust search, sorting, and ordering features.

---

## Screenshots

| Main Menu Screen | Search & Ordering |
|---|---|
| ![Main Menu Screen](screenshots/screenshot_main.png) | ![Search & Ordering Screen](screenshots/screenshot_search.png) |

> *Note: Place your actual application screenshots in a `screenshots/` directory at the project root and name them `screenshot_main.png` and `screenshot_search.png` to display them here.*

---

## Features

- **REST API Integration**: Dynamically retrieves the latest food menu from the web server using a REST API endpoint.
- **Swift JSON Decodable**: Decodes JSON elements sent by the server into a custom, type-safe Swift data structure.
- **Core Data Persistence**: Converts decoded API objects into Core Data entities and saves them to a local SQLite database, enabling offline menu viewing.
- **Real-time Search Bar**: A user-friendly search box located at the top of the food menu to filter dishes dynamically.
- **Smart Filtering**: Custom Core Data fetch request filtering that is both **diacritic-insensitive** (ignores accents like é, á, etc.) and **case-insensitive**.
- **Alphabetical Sorting**: Automatically sorts the menu entries in ascending alphabetical order by dish name.
- **Order Confirmation**: Tap on any menu item to trigger a clear confirmation alert dialog verifying the order.

---

## Tech Stack

- **Platform**: iOS 16.0+
- **Language**: Swift 5.0+
- **UI Framework**: SwiftUI
- **Database / Local Storage**: Core Data (SQLite)
- **Networking**: URLSession / REST API / JSON Serialization
- **IDE**: Xcode 14+

---

## How to Run the App

Follow these steps to build and run the project locally on your machine:

### Prerequisites

1. A Mac computer running macOS.
2. Xcode 14.0 or newer installed.
3. An active internet connection (to fetch the menu data on the first run).

### Step 1: Open the Project
1. Open **Xcode**.
2. Go to `File` > `Open...` and navigate to the project directory.
3. Select `LemonBite.xcodeproj` and click **Open**.

### Step 2: Select a Target Device
- In the Xcode scheme selector at the top, select `LemonBite` as the scheme.
- Choose a target device or simulator (e.g., *iPhone 14 Simulator* or similar).

### Step 3: Build and Run
- Press `Cmd + R` or click the **Play** button in the top-left corner of Xcode.
- Xcode will compile the source code, set up the Core Data local store, and launch the application on your selected simulator/device.

### Step 4: Interact with the Menu
- On the first load, the app fetches the menu items via the REST API and saves them to Core Data.
- Try searching for menu items (e.g., typing "greek" or "salad").
- Verify that searches like "lemon" match case-insensitively and ignore any special accent markers.
- Tap on any menu item to see the order confirmation alert.
