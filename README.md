# RHU-Almeria Health Practice Information System (RHU-AHPIS)

RHU-Almeria Health Practice Information System (RHU-AHPIS) is a healthcare management platform designed to automate and streamline the daily operations of RHU-Almeria. The system supports appointment scheduling, patient record management, medical and dental documentation, inventory tracking, user management, and administrative reporting. It aims to enhance efficiency, accuracy, and accessibility within the clinic’s workflow by digitizing processes traditionally handled manually.

---

## **System Users**

The system includes four (4) types of users, each with specific roles and permissions within the platform:

### **1. Administrator**

* Account management
* Overall system management
* Report generation

### **2. Clinic Staff**

* Patient admission
* Patient record management
* Access and view patient medical records
* Personal account management

### **3. Doctor**

* Access and view patients' medical records
* Notify potential patients of availability by logging in and entering schedule for the day
* Personal account management

### **4. Patients**

* Access and view doctor's schedule
* Book a doctor's appointment
* Get priority number

---

## 📦 **Installation**

Follow the steps below to install and set up the system on your local machine.

### **1. Download and Install XAMPP**

* Download XAMPP from the Apache Friends website.
* Install and open the XAMPP Control Panel.
* Start **Apache** and **MySQL**.

### **2. Download or Clone the Project**

Place the project folder inside your `htdocs` directory.

Or if using Git:

```bash
git clone <repository-url> "C:/xampp/htdocs/RHU-AHPIS"
```

### **3. Setup the Database**

1.Open the **XAMPP Control Panel** and start:
* **Apache**
* **MySQL**
2. Open your browser and go to: `http://localhost/phpmyadmin` // This where you manage databases
3. Create a new database
4. Import the `prasis.sql` file located in:

   * `IS-AHPIS/prasis.sql`

---

## ▶️ **How to Run the System**

### **1. Start the Server**

Open the **XAMPP Control Panel** and start:

* **Apache**
* **MySQL**


### **2. Access the System**
Paste the project folder in your local machine: C:\xampp\htdocs\{projectfolder}
Open your browser and visit:
```
http://localhost/{projectfolder}/index.html
User credentials for clinic/office staff:
Username: judyB1
password: judyB1!
```

The system should now be running locally.
