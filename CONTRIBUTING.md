# Contributing to Aether-Sync Personalization

We welcome community contributions to expand our forensic environment library. To maintain security and stability, all Pull Requests (PRs) must follow these strict guidelines.

## 📂 PR Structure
Every submission to `aether-personalized-ambient/` must include:
1. `build.sh`: Script to deploy the environment.
2. `README.md`: Documentation explaining the environment features.
3. `manifest.json`: List of compatible models and architectures (ARM32/ARM64).

## ⚠️ Mandatory Security Rules
* **NO REAL ROOT:** Any command attempting to install actual Root (Magisk binaries, flash, etc.) will result in an **immediate PR closure** and rejection.
* **Architecture Check:** Your `build.sh` must verify if the target system is compatible with your environment's architecture.
* **Non-Destructive:** Scripts must only operate within the Aether Shadow directory.

## 🛠️ Review Process
1. **AI Scan:** Our engine checks for malicious commands.
2. **Compatibility Test:** We verify if the environment matches the declared device models.
3. **Approval:** If everything is safe, the PR will be merged into the official repository.

*Note: If your build fails, you will be asked for improvements. If you violate security rules, your PR will be locked.*
