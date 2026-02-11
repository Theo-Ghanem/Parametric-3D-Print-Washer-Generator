# Parametric 3D print washer

A customizable OpenSCAD parametric washer / spacer generator.

I originally built this because I needed a couple washers of different sizes and didn’t want to remodel each one manually. Instead, I made a flexible parametric builder that lets me generate any washer in seconds.

Built for OpenSCAD and MakerWorld Parametric.

---

## ✨ Features

### 🔷 Basic Controls

- **Outer Diameter** — overall size of the washer  
- **Inner Diameter** — hole size (or automatically set via screw preset)  
- **Height** — thickness of the washer  
- **Shape Selector**
  - Circle  
  - Triangle  
  - Square  
  - Custom Polygon (adjustable number of sides)

---

### 🔧 Screw Presets

Quickly generate common clearance holes (FDM-friendly defaults):

- **Custom** — user-defined
- **M3** — 3.2 mm
- **M4** — 4.3 mm
- **M5** — 5.3 mm
- **M6** — 6.4 mm
- **M8** — 8.4 mm

These values are typical clearance hole sizes for 3D printed parts.  
You can further fine-tune the fit using the **Hole Tolerance** parameter.

---

### ⚙️ Advanced Options

- **Hole Tolerance**  
  Add extra clearance to compensate for printer tolerances.

- **Chamfer Toggle**  
  Adds a clean bevel to the top and bottom edges for a more premium look.

- **Countersink Option**  
  Create finishing-style washers with adjustable top diameter and depth.

---

## 🛠 How to Use

### Maker World Parametric Page – OpenSCAD

1. Open [Link Text](https://example.com) (will be updated once done verifying)
2. Adjust parameters in the Customizer
3. Export STL
4. Print!

## 📄 License

MIT License — free to use, modify, and distribute.
