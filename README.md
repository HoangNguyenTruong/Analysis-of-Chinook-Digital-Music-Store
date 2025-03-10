# Analysis of Chinook Digital Music Store
## Supported tool 
SQL Server for queries and Power BI for visualization 
## Ask

How can we optimize our sales?

What are the insights from sales and customers that we can identify?

From these insights what are our recommendations?
## Prepare
In this phase, we will identify and assess the features of our Chinook Dataset:

The data is publicly available through Kaggle under https://github.com/msimanga/chinook/blob/master/SQLServer/Chinook_SQLServer.sql

The dataset records system data of a digital music store, containing information on customers, orders, artists, albums, tracks, and employees. The data was collected in 5 years,  during the period from January 1, 2009, to December 22, 2013.

Table description

Data model 

## Analyze
**Sales**

* Total Revenue, Quantity
Tổng doanh thu của cửa hàng trong 5 năm là 2328,60 và tổng số lượng sản phẩm đã bán ra là 2240.
* Sales, Quantity by year
Tổng doanh thu và số lượng hàng bán ra của cửa hàng theo các năm biến động cứ tăng xong rồi giảm chứ không hề có sự tăng trưởng ổn định.
* Revenue, Quantiy by genere
Rock, Latin, Metal, Alternative & Punk và TV Shows vẫn là những thể loại sản phẩm bán chạy của cửa hàng. Đặc biệt là thể loại nhạc Rock dẫn đầu về doanh số với khoảng cách bỏ xa các thể loại còn lại với doanh số 826,65$ với 382,14$ của Latin đứng thứ 2. 
* Revenue, Quantiy by media type
Định dạng MPEG (lưu trữ audio) vẫn là thể loại được ưa chuộng nhất khi đi mua của khách hàng với doanh số là 1958,24 so với 220,89 của định dạng MPEG-4 (lưu trữ video). Điều này cho thấy khách hàng có xu hướng mua định dạng lưu trữ audio hơn. Định dạng Purchased AAC và AAC đang ngày càng bị khách hàng rời bỏ khi chỉ có số lượng bán ra lần lượt là 4 và 3 trong giai đoạn 5 năm
* Revenue and quantity by country
Hoa Kỳ có doanh thu vượt trội so với các quốc gia khác, gần gấp đôi so với Canada (quốc gia đứng thứ hai). Điều này cho thấy Hoa Kỳ là thị trường quan trọng nhất. Các thị trường lớn: Canada, Pháp, Brazil và Đức cũng là những thị trường lớn, đóng góp đáng kể vào tổng doanh thu. Các quốc gia còn lại có doanh thu tương đối thấp, cho thấy tiềm năng phát triển thị trường ở những khu vực này.
* Revenue and quantity by track (top hits), by artits (top artist)
Dazed and Confused, The Trooper là những đĩa nhạc có doanh thu lớn với 5 bản được bán ra. Còn IronMaiden là nghệ sĩ với doanh số lớn nhất với 138,60 và số lượng đĩa nhạc bán ra là 140. 


**Product**
* Overview about product and artist
Cửa hàng hiện đang kinh doanh 347 Albums với số lượng đĩa nhạc là 3503. Số lượng album có nhiều đĩa nhạc nhất với 57 đĩa nhạc. Số lượng ca sĩ hợp tác với của hàng nhạc của doanh nghiệp lên tới 275 ca sĩ. Các sản phẩm của cửa hàng trải dài trên 25 thể loại.

* Millisecond of track
Thời gian trung bình là 393599 milisec với ngắn nhất của một đĩa nhạc là 1071 milisec còn nhiều nhất là 5286953 milisec

* Storage of track
Một đĩa nhạc có dung lượng lưu trữ trung bình là 33510207 với nhỏ nhất là 38747 bytes và nhiều nhất là 10595546140 bytes. 

**Customer**
* Retention rate: 
Tỷ lệ khách hàng quay lại trong 5 năm qua là 100%. Điều này cho thấy tỷ lệ giữ chân các khách hàng thân thiết của cửa hàng đang rất tốt. Tuy nhiên cần xem xét vào Customer lifetime value (CLV)

* Customer lifetime value: 
CLV của khách hàng trong giai đoạn này được tách ra thành hai nhóm là giá trị cao và trung bình. Đối với nhóm khách hàng giá trị CLV cao (trên 40), cần được chăm sóc đặc biệt. Đặc biết là với khách hàng Helena Holý có giá trị CLV cao nhất (49.62). Còn với nhóm khách hàng giá trị trung bình thì lại đang chiếm phần lớn (khoảng 39). 
## Share 
below you will find a picture of the interactive dashboard that represents the sales and information on the collected sales data which was realized and demonstrated with PowerBI.
## Act
** Sales Strategy **

* Revenue and Sales Growth

Implement year-round marketing campaigns to stabilize revenue growth instead of experiencing fluctuating sales trends.

Identify seasonal trends and optimize pricing strategies during peak periods.

* Genre-Based Sales Optimization

Expand the inventory and promotions for the top-performing genres: Rock, Latin, Metal, Alternative & Punk, and TV Shows.

Introduce exclusive bundles or playlists for these genres to maximize customer engagement.

* Media Format Strategy

Prioritize MPEG (audio) sales, as it remains the most preferred format among customers.

Reevaluate MPEG-4 (video) offerings by conducting market research to determine customer interest.

Gradually phase out Purchased AAC and AAC formats, as they have significantly low sales.

* Market Expansion Strategy

Strengthen presence in the U.S., which has the highest revenue contribution, through targeted advertisements and localized promotions.

Optimize strategies for Canada, France, Brazil, and Germany, leveraging tailored marketing efforts.

Explore untapped markets with potential for growth by identifying customer preferences and adapting product offerings accordingly.

* Top-Selling Artists and Tracks

Promote Iron Maiden, the highest-selling artist, by offering exclusive merchandise and curated playlists.

Increase visibility for top-performing tracks like Dazed and Confused and The Trooper through featured playlists and discounts.

** Product Strategy **

Catalog Expansion and Management

Diversify the album collection while maintaining quality control to ensure sustained customer interest.

Optimize pricing and marketing strategies for high-selling albums.

Track Duration and Storage Optimization

Analyze listener behavior to determine the ideal track length and storage requirements.

Implement cloud-based storage solutions to optimize costs while maintaining high-quality audio and video files.

** Customer Strategy **

Customer Retention and Loyalty Programs

Leverage the 100% retention rate by introducing loyalty rewards and subscription-based benefits.

Implement personalized marketing strategies to enhance customer engagement.

Customer Lifetime Value (CLV) Management

Prioritize high CLV customers (>40) with exclusive offers, early access to new releases, and VIP memberships.

Improve engagement with mid-range CLV customers (~39) through targeted promotions and customized recommendations.

Develop customer segmentation strategies to maximize lifetime value and enhance customer satisfaction.

Conclusion

By implementing these strategic actions, the company can stabilize sales growth, optimize product offerings, expand market reach, and enhance customer engagement. A data-driven approach to marketing, inventory management, and customer relationship management will drive long-term success and revenue growth.
## Limitation
The study has facilitated the analysis of the store’s sales performance, product characteristics, and customer information. However, several limitations remain. First, the dataset covers the period from 2009 to 2012, meaning the data is not real-time. Additionally, the dataset lacks cost-related information, so this study focuses solely on the store’s revenue without any analysis of costs or operational profitability. Moreover, consumer behavior has not yet been examined in detail.
