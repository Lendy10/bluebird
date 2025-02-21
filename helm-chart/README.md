# 🚀 Bluebird Helm Chart

This **Helm chart** provides a modular and configurable way to deploy **Bluebird services** in a **Kubernetes cluster**. Each component can be **enabled or disabled** using feature toggles in the `values.yaml` file, allowing for flexible deployment based on specific requirements.

---

## 📌 **Features**
- **Modular components**: Enable or disable `Service`, `Deployment`, `HPA`, `Ingress`, and `ConfigMap` as needed.
- **Scalability**: Supports **auto-scaling** via **Horizontal Pod Autoscaler (HPA)**.
- **Environment-specific configurations**: Uses **ConfigMap** for app settings.
- **Ingress support**: Configurable ingress rules for domain-based routing.
- **Dynamic resource management**: Uses **values.yaml** to control deployment parameters.

---

## 🚀 **How to Deploy**
### **1️⃣ Install Helm Chart**
```sh
helm install bluebird ./helm-chart
```

### **2️⃣ Override Default Values**
```sh
helm install bluebird ./helm-chart -f custom-values.yaml
```

### **3️⃣ Upgrade Deployment**
```sh
helm upgrade bluebird ./helm-chart
```

### **4️⃣ Uninstall Deployment**
```sh
helm uninstall bluebird
```

---

## 📌 **Conclusion**
This **Helm chart** provides a flexible, scalable, and production-ready way to deploy **Bluebird services** on **Kubernetes**. With **feature toggles**, users can enable or disable components dynamically, making it **highly adaptable** for different environments.