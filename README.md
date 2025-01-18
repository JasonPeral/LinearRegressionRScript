# Stats Script Analysis

## **Purpose of the Project**

- Perform a **linear regression analysis** on a dataset containing two variables (`x` and `y`) from a CSV file.
- Calculate important statistical metrics and visualize the relationship between the two variables with a regression line.

## **Key Features**

### **Data Processing**

- Reads data from a CSV file (`q2.csv`) with two columns: `x` and `y`.
- Cleans and converts data to numeric format for analysis.

### **Statistical Analysis**

- Computes **Mean**, **Variance**, and **Standard Deviation** for both `x` and `y`.
- Calculates **Sum of Squares** (`SS_xx`, `SS_xy`, `SS_yy`).
- Determines **Regression Coefficients** (`Beta0`, `Beta1`) for the linear model:
  
  `y = β₀ + β₁x`

- Evaluates **Standard Error**, **t-statistic**, and **Coefficient of Determination** (`r²`).

### **Model Evaluation**

- Calculates the **Sum of Squared Errors (SSE)** to measure model fit.
- Determines the **correlation coefficient (r)** to assess linear correlation strength.

### **Data Visualization**

- Plots the original data points with an **orange scatter plot**.
- Overlays the **best-fit regression line** in **blue** for visual interpretation.

---

## **Technologies Used**

- **R Libraries:**
  - `ggplot2`: For data visualization.
  - `readr`: For reading CSV files.

---

## **How to Run the Script**

1. Place the CSV file (`q2.csv`) on your **Desktop**.
2. Run the script in your **R environment**.
3. View the **calculated statistics** in the console and the **regression plot** in the graphics window.

---

## **Use Cases**

- **Data Analysis Projects:** Quick linear regression and correlation analysis.
- **Academic Assignments:** Understanding regression concepts.
- **Data Visualization:** Clear graphical representation of relationships between variables.

---

## **Future Improvements**

- Add **confidence intervals** to the regression line.
- Automate CSV file selection with a **file browser**.
- Export results and plots to **PDF** or **Excel**.

