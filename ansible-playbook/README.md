# ⚙️ Configuration Management with Ansible

This directory contains **Ansible playbooks** for automating server configuration and deployment in the **Bluebird infrastructure**. The playbooks ensure **consistency, repeatability, and efficiency** when managing multiple cloud instances.

## 📌 Inventory Configuration

Before running the playbooks, update the **inventory file** (`inventory`) to match your cloud **VM's IP address**. Replace `<VM_IP>` with the actual IP address of your instance:

```ini
[webservers]
<VM_IP> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
```

---

## 📜 Nginx Playbook (`nginx-playbook.yml`)

This **Ansible playbook** installs and configures **Nginx** on the target machine.

### Features:
- **Installs Nginx** on Ubuntu/Debian-based systems.
- **Ensures Nginx is running and enabled** on system startup.
- **Deploys a custom Nginx configuration file**.
- **Reloads Nginx** if configuration changes.

### Usage:
To apply the **nginx-playbook** on a VM:
```sh
ansible-playbook -i inventory nginx-playbook.yml
```

---

## 📜 Rsync Playbook (`rsync-playbook.yml`)

This **Ansible playbook** automates file synchronization between a local machine and a remote VM using **Rsync**.

### Features:
- **Installs Rsync** if it's not already installed.
- **Syncs files from a local directory** to the remote server.
- **Preserves file permissions and timestamps**.
- **Supports incremental syncing** to optimize performance.

### Usage:
Modify the **source directory (`src_dir`)** and **destination (`dest_dir`)** inside `rsync-playbook.yml` before running.

Run the **rsync-playbook**:
```sh
ansible-playbook -i inventory rsync-playbook.yml
```

---

## ✅ Verifying the Setup

After running the playbooks, verify the setup by:

1. **Checking Nginx Status**:
   ```sh
   systemctl status nginx
   ```

2. **Testing Nginx Configuration**:
   ```sh
   curl -I http://<VM_IP>
   ```

3. **Validating Rsync File Syncing**:
   ```sh
   ls -l /path/to/remote/destination/
   ```

---

## 🎯 Conclusion

These **Ansible playbooks** automate server configuration and file synchronization for **Bluebird's infrastructure**, ensuring that services are **secure, scalable, and easy to manage**. By using Ansible, manual configuration is eliminated, reducing human error and improving deployment speed.