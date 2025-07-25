Here is your complete **GitHub `README.md`** for the Selenium Java framework project with Docker, Helm, and Kubernetes setup — structured cleanly and professionally:

---

```markdown
# 🚀 Selenium Java Automation Framework

A complete end-to-end Selenium automation framework built with Java, TestNG, ExtentReports, and containerized using Docker. It is deployed and orchestrated using Helm and Kubernetes. This project is tailored for interview preparation and scalable automation use cases.

---

## 📌 Features

- ✅ Selenium + Java 17 + TestNG based test framework
- ✅ HTML reporting via ExtentReports
- ✅ Dockerized for portable execution
- ✅ Kubernetes-ready via Helm charts
- ✅ Easily deployable via Minikube or any K8s cluster
- ✅ Suitable for Jenkins CI/CD integration

---

## 🗂️ Project Structure

```

selenium-framework/
│
├── src/
│   └── test/
│       ├── java/
│       │   ├── base/
│       │   │   └── BaseTest.java
│       │   ├── pages/
│       │   │   └── SamplePage.java
│       │   ├── tests/
│       │   │   └── SampleTest.java
│       │   └── utils/
│       │       └── ExtentReportManager.java
│       └── resources/
│           └── testng.xml
│
├── Dockerfile
├── pom.xml
├── helm/
│   └── selenium-framework/
│       ├── Chart.yaml
│       ├── values.yaml
│       └── templates/
│           ├── deployment.yaml
│           └── service.yaml
└── README.md

````

---

## ⚙️ Technologies Used

| Tool             | Purpose                  |
|------------------|--------------------------|
| Java 17          | Programming language     |
| Selenium         | UI automation            |
| TestNG           | Test runner              |
| ExtentReports    | Test reporting           |
| Docker           | Containerization         |
| Kubernetes (Minikube) | Orchestration     |
| Helm             | Kubernetes package mgmt  |
| Jenkins (optional) | CI/CD support          |

---

## 🧪 How It Works

### 1. BaseTest.java
- Initializes and tears down WebDriver.
- Base setup for Chrome browser.

### 2. SampleTest.java
- Demonstrates test case using PageObject.

### 3. SamplePage.java
- Page Object containing element locators and methods.

### 4. ExtentReportManager.java
- Manages creation of beautiful HTML reports.

### 5. testng.xml
- Test configuration and suite definition.

---

## 📦 Build & Run

### 🔧 Build JAR

```bash
mvn clean package
````

### 🐳 Build & Push Docker Image

```bash
docker build -t anikeshsmn26/selenium-framework:latest .
docker push anikeshsmn26/selenium-framework:latest
```

### ☸️ Deploy with Helm

```bash
cd helm/selenium-framework
helm install selenium-framework .
```

To uninstall:

```bash
helm uninstall selenium-framework
```

---

## 🌐 Access the App

### Option 1: Port Forward (for local testing)

```bash
kubectl port-forward svc/selenium-framework 8080:80
```

Then open [http://localhost:8080](http://localhost:8080)

### Option 2: Modify `/etc/hosts`

```
127.0.0.1 selenium.local
```

Then access [http://selenium.local](http://selenium.local)

---

## 🛠️ Common Issues & Fixes

### ❌ CrashLoopBackOff / Container exits instantly

**Reason**: Java `main()` method finishes instantly.

**Fix**:
Add this to your `Main` class to keep the container alive:

```java
public static void main(String[] args) throws InterruptedException {
    // your code
    while (true) {
        Thread.sleep(1000);
    }
}
```

---

### ❌ `ERR_CONNECTION_REFUSED` or blank service

**Reason**: No web server running, test framework exits too soon.

**Fix**: Same as above, simulate long-running app or convert to a `Job` if short-lived.

---

### ❌ Helm Error: `Chart.yaml missing`

**Fix**: Make sure you're inside the chart directory:

```bash
cd helm/selenium-framework
helm install selenium-framework .
```

---

## 📈 Improvements & Next Steps

* [ ] Add Jenkinsfile for full CI/CD pipeline
* [ ] Export HTML reports from container
* [ ] Add support for test parameters via TestNG XML
* [ ] Integrate Ingress controller (Nginx) for clean public URLs

---

## 🤝 Contributions

This project was built for interview prep and real-world simulation. Contributions and suggestions are welcome!

---

## 📄 License

MIT – Use, modify, and share freely.

---

```

---

Let me know if you'd like:
- A downloadable `.zip` of the full project
- A GitHub repo with this `README.md` and code already pushed
- A Jenkinsfile added next

Just say the word.
```
# BMC_SeleniumJava
To create dummy project
