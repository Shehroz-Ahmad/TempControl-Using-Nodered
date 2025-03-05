# TempControl-Using-Nodered


## **OPC UA-Based Temperature Control Using Node-RED**  

### **Project Overview**  
This project focuses on designing, configuring, and implementing an **OPC Unified Architecture (OPC UA) Server** in **Node-RED** for **temperature control**. The system enables seamless data exchange between **sensors and cloud applications**, supporting industrial automation through standardized communication.  

---

### **Key Features**  
✅ **OPC UA Node Set Design:** Structured nodes for reading data, executing commands, and seamless data transfer.  
✅ **OPC UA Server Configuration:** Implemented in **JavaScript** within Node-RED, defining variables and attributes.  
✅ **Real-Time Temperature Control:** Simulation of **closed-loop control** with dynamic adjustments.  
✅ **Celsius to Fahrenheit Conversion:** Automatic unit conversion and **real-time visualization** in Node-RED UI.  
✅ **Industrial Automation Integration:** Demonstrates **scalability** for advanced **IoT** and **Industry 4.0 applications**.  

---

### **System Design & Implementation**  

#### **1️⃣ OPC UA Node Set Design**  
- Created **structured nodes** for handling **temperature, controller errors, and manipulated variables**.  
- Designed an **OPC UA information model** with **Hierarchical and Non-Hierarchical** references.  

#### **2️⃣ OPC UA Server Configuration**  
- Implemented **Global Declaration** (constants, objects), **Structure Declaration** (folders, references), and **Variable Declaration** (parameters, attributes).  
- Embedded **JavaScript-based information model** into Node-RED's **Compact Context Server**.  

#### **3️⃣ Simulation & Data Processing**  
- Initial **temperature set at 40°C**, dynamically controlled via **KP & KI parameters**.  
- **Celsius-to-Fahrenheit function block** for real-time unit conversion and UI display.  
- Data visualization on **Node-RED dashboard** for monitoring system behavior.  

---

### **Technology Stack**  
🛠 **Node-RED** – Visual programming for IoT & industrial automation  
🛠 **OPC UA** – Secure & scalable industrial communication protocol  
🛠 **JavaScript** – Used for OPC UA server scripting & address space configuration  
🛠 **MQTT/REST API** – Potential for cloud & IoT integration  

---

### **Project Setup & Deployment**  

#### **🔹 Prerequisites**  
- **Node.js** installed on your system  
- **Node-RED** setup (`npm install -g node-red`)  
- **OPC UA Node Package** for Node-RED  

#### **🔹 Installation Steps**  
1. **Clone the repository:**  
   ```sh
   git clone https://github.com/your-username/opc-ua-temperature-control.git  
   cd opc-ua-temperature-control  
   ```  
2. **Install dependencies:**  
   ```sh
   npm install  
   ```  
3. **Start Node-RED:**  
   ```sh
   node-red  
   ```  
4. **Open Node-RED UI:**  
   Navigate to `http://localhost:1880/` and import the provided **Node-RED flow file**.  

---

### **Conclusion**  
This project demonstrates the power of **OPC UA in industrial automation** by integrating real-time **temperature control, simulation, and data conversion** using **Node-RED**. Future improvements may include **AI-based predictive maintenance, cloud connectivity, and adaptive control algorithms**.  

🔗 **Contributions are welcome!** Feel free to submit issues, feature requests, or pull requests. 🚀  

