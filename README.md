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
