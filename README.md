# AutoChainage
An AutoLISP tool for AutoCAD that calculates and labels chainage values along polylines in 0+000 format — perfect for civil and road alignment drawings.

# AutoChainage.lsp  
**An AutoLISP tool for calculating and labeling chainage values along polylines in AutoCAD.**  

---

## 📘 Overview  
**AutoChainage.lsp** is a lightweight AutoLISP utility designed for civil engineers and CAD professionals.  
It allows users to quickly **calculate and label chainages (in the 0+000 format)** on selected polylines — perfect for road design, alignment marking, or route planning.

---

## ⚙️ Features  
• Select any polyline in your drawing  
• Pick a point on or near the polyline  
• Automatically calculates chainage distance from the start point  
• Displays the chainage value as text (e.g., *3+45.67*)  
• Text automatically aligns with the tangent direction of the line  
• Simple and fast command execution  

---

## 🧩 Command  

**CHCHK** - Prompts the user to select a polyline and pick a point. It then displays the chainage value and places the corresponding text at that location. |

---

## 🖱️ How to Use  
1. Open **AutoCAD**.  
2. Type `APPLOAD` in the command line.  
3. Load the file **AutoChainage.lsp**.  
4. Run the command by typing:  
