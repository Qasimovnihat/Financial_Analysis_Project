 Project Overview
This end-to-end data analysis project demonstrates the full data pipeline: from extracting raw financial data using SQL, performing in-depth exploratory data analysis (EDA) in Python (JupyterLab), to creating an interactive executive dashboard in Power BI. The goal is to monitor the liquidity and profitability of hundreds of companies over a 15-year period.

Analysis Workflow
1.  SQL: Data Extraction & Transformation
The foundation of the project involved querying raw data directly from the database:

Create View: Developed custom SQL Views to simplify complex JOIN operations and ensure a reusable, "clean" data source for subsequent analysis.

Data Filtering: Extracted relevant financial records for the fiscal years 2010-2025.

Data Integrity: Validated relationships between tables to ensure consistency and accuracy across the dataset.

2. Python & JupyterLab: Exploratory Data Analysis (EDA)
The dataset was processed in a JupyterLab environment using libraries such as Pandas, NumPy, and Seaborn:

Feature Engineering: Derived strategic financial ratios such as Net Profit Margin and Current Ratio from raw financial statements (Revenue, Profit, Assets).

Data Cleaning: Handled missing values and identified outliers in large-scale financial figures (millions/billions) to normalize the data.

Initial Visualization: Conducted trend analysis and correlation checks before moving to the final visualization stage.

3. Power BI: Interactive Business Intelligence
The final step was transforming the analyzed data into a decision-making tool:

Dynamic KPIs: Created real-time cards for essential metrics like Current Ratio, Net Profit Margin, and ROE.

Trend Analysis: Visualized the evolution of financial health over a decade.

Scatter Plot Matrix: Plotted companies based on the balance between profitability (Margin) and risk (Liquidity).
