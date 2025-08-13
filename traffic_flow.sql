SELECT * FROM traffic_flow.uk;

SELECT Road_No, Road_Name, All_Motors
FROM traffic_flow.uk
ORDER BY All_Motors DESC
LIMIT 20;

SELECT Road_Name, Pedal_Cycles_12hr
FROM traffic_flow.uk
ORDER by Pedal_Cycles_12hr DESC
LIMIT 15;

-- Average LGV percentage by road type
SELECT LEFT(Road_No,1) AS road_type, ROUND(AVG(LGV/All_Motors * 100),2) AS avg_lgv_pct
FROM traffic_flow.uk
GROUP BY road_type
ORDER BY avg_lgv_pct DESC;

-- Average OGV percentage by road type
SELECT LEFT(Road_No, 1) AS road_type, ROUND(AVG(OGV/All_Motors * 100),2) AS avg_pct_ogv
FROM traffic_flow.uk
GROUP BY road_type
ORDER BY avg_pct_ogv;
