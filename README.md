# Superstore Sales Analysis

วิเคราะห์ยอดขายร้านค้า Superstore ปี 2014–2017  
จำนวน 9,994 orders เพื่อหา insight เชิงธุรกิจ

## Tools
- Python, Pandas, Matplotlib
- Google Colab

## Key Insights
- Technology มี revenue สูงสุด ($836K) แต่ margin ใกล้เคียง Office Supplies (17%)
- Furniture margin ต่ำมากเพียง 2.5% — Tables และ Bookcases ขาดทุนรวม -$21K
- Q4 คิดเป็น 38% ของ revenue ทั้งปี — demand พุ่งสูงช่วงปลายปี
- Orders ที่ขาดทุนให้ discount เฉลี่ย 47% vs กำไร 8%

## Business Recommendations
1. Re-price หรือ discontinue Tables เพราะขาดทุนทุกปี
2. จำกัด discount ไม่เกิน 20% โดยเฉพาะ Furniture
3. เพิ่ม stock และ marketing budget ช่วง Q4

## SQL Analysis
วิเคราะห์ด้วย SQL (SQLite) เพิ่มเติม ไฟล์ `superstore_sql.sql`

### Queries
1. Revenue & Profit Margin by Category
2. Sub-categories ที่ขาดทุน
3. ความสัมพันธ์ระหว่าง Discount กับ Profit
## Dashboard
[ดู Superstore Sales Dashboard](https://datastudio.google.com/reporting/59a8023d-f57d-4799-afaa-dd8d12600782)

## Predictive Model
พยากรณ์ว่า order ไหนจะขาดทุน ด้วย Random Forest Classifier

### Results
- Accuracy: 94%
- Discount คือปัจจัยหลักที่ส่งผลต่อการขาดทุน 67.1%
- Sales มีผล 31% / Quantity แทบไม่มีผล 1.9%

### Business Recommendation
- จำกัด discount เพราะส่งผลต่อกำไรมากที่สุด
- ใช้โมเดลนี้ช่วย flag orders ที่เสี่ยงขาดทุนก่อนอนุมัติ
