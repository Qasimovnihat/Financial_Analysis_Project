CREATE VIEW financials_analysis AS
SELECT
    Şirket_Adı,
    Şirketin_Kodu,
    Yıl,
    Periyot,
    Cari_Oran,
    Asit_Test_Oranı,
    Nakit_Oranı,
    Aktif_Karlılık,
    Özsermaye_Karlılığı,
    Net_Kar_Marjı,
    Brüt_Kar_Marjı,
    Faaliyet_Kar_Marjı,
    FAVÖK_Marjı,
    Toplam_Borç_Özsermaye,
    Borç_Kaynak_Oranı,
    Finansal_Kaldıraç,
    Net_Borç_FAVÖK,
    Aktif_Devir_Hızı,
    Alacak_Devir_Hızı,
    Stok_Devir_Hızı,
    Altman_Z_Skoru,
    Springate_Skoru,
    Zmijewski_Skoru,
    L_Model_Skoru
FROM financial_data;


-- Purpose: Prepares data to analyze the relationship between leverage and profitability
-- Use Case: Used for correlation analysis and risk-performance evaluation in Python
SELECT
    Finansal_Kaldıraç,
    Net_Kar_Marjı,
    FAVÖK_Marjı,
    Aktif_Karlılık,
    Altman_Z_Skoru
FROM financial_data;


-- Purpose: Calculates average financial performance metrics per company
-- Use Case: Enables company-level comparison and benchmarking
CREATE VIEW vw_financials_company_avg AS
SELECT
    Şirket_Adı,
    AVG(Cari_Oran)         AS Avg_Cari_Oran,
    AVG(Net_Kar_Marjı)     AS Avg_Net_Kar_Marjı,
    AVG(FAVÖK_Marjı)       AS Avg_FAVÖK_Marjı,
    AVG(Finansal_Kaldıraç) AS Avg_Finansal_Kaldıraç,
    AVG(Altman_Z_Skoru)    AS Avg_Altman_Z
FROM financial_data
GROUP BY Şirket_Adı;


-- Purpose: Analyzes year-over-year trends in key financial ratios
-- Use Case: Supports time-series analysis and performance tracking
CREATE VIEW time_financials_company_avg AS
SELECT
    Yıl,
    AVG(Net_Kar_Marjı)     AS Avg_Net_Kar_Marjı,
    AVG(Cari_Oran)         AS Avg_Cari_Oran,
    AVG(Finansal_Kaldıraç) AS Avg_Finansal_Kaldıraç
FROM financial_data
GROUP BY Yıl;


-- Purpose: Classifies companies based on bankruptcy risk using Altman Z-Score
-- Use Case: Supports risk analysis and financial stability assessment
SELECT
    Şirket_Adı,
    Yıl,
    Altman_Z_Skoru,
    CASE
        WHEN Altman_Z_Skoru < 1.8 THEN 'High Risk'
        WHEN Altman_Z_Skoru BETWEEN 1.8 AND 3 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS Risk_Grubu
FROM financial_data;


-- Purpose: Evaluates operational efficiency using turnover ratios
-- Use Case: Assesses how efficiently companies utilize assets, inventory, and receivables
SELECT
    Şirket_Adı,
    AVG(Aktif_Devir_Hızı)  AS Avg_Aktif_Devir,
    AVG(Alacak_Devir_Hızı) AS Avg_Alacak_Devir,
    AVG(Stok_Devir_Hızı)   AS Avg_Stok_Devir
FROM financial_data
GROUP BY Şirket_Adı;









