# GharDalali 🏡

GharDalali is a Java-based web application built to manage real estate listings, users, and property images. It serves as a foundation for a real estate or rental platform where users can register, post listings, and interact with properties.

## 🚀 Features

- User & Admin Registration and Login
- Property listing and image upload
- Session and cookie management
- Secure password handling
- Input validation
- Configurable database connection

## 🛠️ Tech Stack

- **Java (Servlets & JSP)**
- **MySQL** – for data storage
- **Tomcat** or similar Java EE server
- **HTML/CSS/JS** (in `webapp`)
- **JDBC** – Java Database Connectivity

## 🗂️ Project Structure

```
GharDalali/
├── build/                  # Compiled class files
├── src/
│   ├── main/
│   │   ├── java/           # Java source code
│   │   │   └── com/GharDalali/
│   │   │       ├── controller/
│   │   │       ├── util/
│   │   │       └── config/
│   │   └── webapp/         # Web assets
├── ghar_dalali.sql         # MySQL database schema
```

## ⚙️ How to Run

1. **Clone the repo**

   ```bash
   git clone https://github.com/PickMcFlurry/Real-Estate-Management-system
   ```

2. **Import into IDE**  
   Use IntelliJ IDEA, Eclipse, or any IDE that supports Java EE projects.

3. **Set up the Database**

   - Open MySQL
   - Execute the `ghar_dalali.sql` file to create the schema

4. **Configure DB Connection**

   - Update `DbConfig.java` with your MySQL credentials

5. **Deploy to Server**
   - Package as WAR or run using Apache Tomcat

## ✅ Requirements

- Java 8+
- Apache Tomcat 9+
- MySQL Server
- IDE (e.g., Eclipse, IntelliJ)

## 📁 SQL Schema

The `ghar_dalali.sql` file includes all necessary tables for:

- Users/Admins
- Property Listings
- Images
- Sessions

## 🙌 Credits

Developed by: [Bardan Gurung, Avhiyan Khanal, Paurakh Pyakurel, Soumyata Shakya, Manish Jung Adhikari]

---
