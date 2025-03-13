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


Data model
![image](https://github.com/user-attachments/assets/0a84e1cf-88cb-441e-8778-f53c14a74b70)


## Analyze

**Sales**

* Total Revenue and Quantity

The total store revenue over five years is $2,328.60, with a total of 2,240 products sold.

![image](https://github.com/user-attachments/assets/8454f655-2bfc-487a-88a0-e9cf3b88df1a)


* Sales and Quantity by Year

The store's total revenue and sales volume fluctuated over the years, experiencing periods of growth followed by declines, rather than demonstrating consistent growth.

![image](https://github.com/user-attachments/assets/48c051ac-1515-4873-ad83-788d9af465b9)

* Revenue and Quantity by Genre

Rock, Latin, Metal, Alternative & Punk, and TV Shows remain the store's best-selling product genres. Notably, Rock leads sales by a significant margin, generating $826.65, while Latin, the second-highest, records $382.14.

![image](https://github.com/user-attachments/assets/51c1a26d-376c-4e5b-862f-f5e8f1174918)


* Revenue and Quantity by Media Type

The MPEG format (audio storage) is the most preferred format among customers, generating $1,958.24, compared to $220.89 for MPEG-4 (video storage). This indicates a stronger customer preference for audio storage formats. Meanwhile, Purchased AAC and AAC formats are declining in popularity, with only 4 and 3 units sold, respectively, over the five-year period.

![image](https://github.com/user-attachments/assets/c99dfa80-cc2e-4136-b51e-2c44ad44dfb7)

* Revenue and Quantity by Country

The United States significantly outperforms other countries in revenue, nearly doubling that of Canada, the second-highest market. This highlights the U.S. as the store’s most critical market.
Other major markets include Canada, France, Brazil, and Germany, which contribute substantially to total revenue. In contrast, other countries generate relatively low revenue, indicating potential opportunities for market expansion.

![image](https://github.com/user-attachments/assets/c1a2d304-ec84-451c-aea5-b09e2ff78446)


* Revenue and Quantity by Track (Top Hits) and Artist (Top Artists)

"Dazed and Confused" and "The Trooper" are among the top-selling tracks, each selling 5 copies. 

![image](https://github.com/user-attachments/assets/216717cb-7dfd-4926-813b-3fc28f727e2f)


Iron Maiden ranks as the highest-grossing artist, generating $138.60 in revenue with 140 tracks sold.

![image](https://github.com/user-attachments/assets/f06646e1-eb46-457b-99c9-f81b4013ddb3)

**Product**

* Overview of Products and Artists

The store currently offers 347 albums, with a total of 3,503 tracks.
The album with the highest number of tracks contains 57 tracks.
A total of 275 artists have collaborated with the store, with products spanning across 25 genres.

* Track Duration (Milliseconds)

The average track duration is 393,599 milliseconds, with the shortest track being 1,071 milliseconds and the longest being 5,286,953 milliseconds.

![image](https://github.com/user-attachments/assets/6190bcac-5422-4af4-8be8-785c6d81818d)

* Track Storage Size

The average track storage size is 33,510,207 bytes, with the smallest track at 38,747 bytes and the largest at 10,595,546,140 bytes.

![image](https://github.com/user-attachments/assets/f95615e2-a733-47b5-af5e-0b64f5d555e9)

**Customer**

* Retention Rate

The customer retention rate over the past five years is 100%, indicating strong customer loyalty. However, further evaluation of Customer Lifetime Value (CLV) is needed.

![image](https://github.com/user-attachments/assets/b66452f3-d5e1-4fa6-a160-483b7475c305)


* Customer Lifetime Value (CLV)

Customers are categorized into high-value and medium-value groups based on their CLV. High-value customers (CLV > 40) require special attention, particularly Helena Holý, who holds the highest CLV at 49.62. Medium-value customers constitute the majority, with an average CLV of approximately 39.

![image](https://github.com/user-attachments/assets/27e2979a-76d0-42f0-84c8-e37ddbb56c65)


## Share
Onto sharing our observations, below you will find a picture of the interactive dashboard that represents the sales and information on the collected music store data which was realized and demonstrated with PowerBI.
![image](https://github.com/user-attachments/assets/5b681df7-c62d-4d44-894e-0ddeff93a472)

## Act
**Sales Strategy**
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

**Product Strategy**

* Catalog Expansion and Management

Diversify the album collection while maintaining quality control to ensure sustained customer interest.

Optimize pricing and marketing strategies for high-selling albums.

* Track Duration and Storage Optimization

Analyze listener behavior to determine the ideal track length and storage requirements.

Implement cloud-based storage solutions to optimize costs while maintaining high-quality audio and video files.

**Customer Strategy**

Prioritize high CLV customers (>40) with exclusive offers, early access to new releases, and VIP memberships.

Improve engagement with mid-range CLV customers (~39) through targeted promotions and customized recommendations.

Develop customer segmentation strategies to maximize lifetime value and enhance customer satisfaction.

**Conclusion**

By implementing these strategic actions, the company can stabilize sales growth, optimize product offerings, expand market reach, and enhance customer engagement. A data-driven approach to marketing, inventory management, and customer relationship management will drive long-term success and revenue growth.

## Limitation
The study has facilitated the analysis of the store’s sales performance, product characteristics, and customer information. However, several limitations remain. First, the dataset covers the period from 2009 to 2012, meaning the data is not real-time. Additionally, the dataset lacks cost-related information, so this study focuses solely on the store’s revenue without any analysis of costs or operational profitability. Moreover, consumer behavior has not yet been examined in detail.
