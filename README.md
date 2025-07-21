# hardclone‑gui

A graphical user interface for HardClone — fast, reliable disk cloning and imaging tool.

---

## 🚀 Features

- Intuitive GUI to create and restore disk images.
- Visual selection of source and target drives/partitions.
- Progress bar with status updates.
- Basic validation of user inputs.
- Logs and error reporting.
- Supports `.img` files used by HardClone backend.

---

## 📦 Installation

### Prerequisites
- A working [hardclone-cli](https://github.com/dawciobiel/hardclone-cli) installation.
- Python 3.8+ (or newer)
- [`psutil`](https://pypi.org/project/psutil/) Python library
- [`PySide6`](https://pypi.org/project/PySide6/) (Qt6-based GUI toolkit for Python)

### From Source
```bash
git clone https://github.com/dawciobiel/hardclone-gui.git
cd hardclone-gui
# (optional) create virtual environment
pip install -r requirements.txt
python main.py
````

### Docker (optional)

```bash
docker build -t hardclone-gui .
docker run --privileged -v /dev:/dev hardclone-gui
```

---

## 🛠 Usage

1. Launch the application (`python main.py` or platform-specific executable).
2. Select **Restore image** mode.
3. Choose `.img` image file.
4. Select destination partition (e.g. `/dev/sda1`).
5. Click **Restore** and monitor progress bar.
6. View logs and final status message.

---

## 🧪 Testing

* Unit tests covering:

  * Drive and image selection validations.
  * Progress and error handling.
* Manual tests:

  * Restoring onto empty and formatted partitions.
  * Handling invalid or missing images.
  * GUI responsiveness on Windows/Linux/macOS.

---

## 🧩 Architecture

* **frontend/** – GUI source code.
* **backend/** – Helper module calling `hardclone-cli`.
* **logs/** – Runtime logs saved here.
* **tests/** – Unit and integration tests.
* **assets/** – Icons and images.

---

## 📚 Documentation

Refer to the parent repositories for full guidance:

* [hardclone](https://github.com/dawciobiel/hardclone)
* [hardclone-cli](https://github.com/dawciobiel/hardclone-cli)

---

## 📝 TODO

See [TODO.md](TODO.md) for current roadmap, including:

* `restore_image_to_partition` functionality.
* Progress display, error handling.
* Unit tests, checksum verification.
* Optional future features: SSH, GUI packaging.

---

## 📌 License

This project is licensed under the GNU General Public License v3.0 – see the [`LICENSE`](LICENSE) file for details.

---

## 👥 Contributing

Contributions are welcome!
Please open an issue for new features or bugs, and submit pull requests per the style guidelines in the root project.

---

*Last updated: 2025‑07‑21*
