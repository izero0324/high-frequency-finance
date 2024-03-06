CREATE TABLE OrderDetail( OrderCode CHAR(10), 
MarketSegmentCode CHAR(4), 
MarketSectorCode CHAR(4), 
TICode CHAR(12), 
CountryOfRegister CHAR(2), 
CurrencyCode CHAR(3),
ParticipantCode CHAR(11), 
BuySellnd CHAR(1), 
MarketMechanismGroup CHAR(1), 
MarketMechanismType CHAR(2), 
Price DECIMAL(18,8), 
AggregateSize DECIMAL(12), 
SingleFillnd CHAR(1), 
BroadcastUpdateAction CHAR(1), 
Date DATE, 
Time TIME, 
MessageSequenceNumber Integer(10)
)

LOAD DATA LOCAL INFILE '/Users/andrewyang/Desktop/workspace/high_frequency/high-frequency-finance/cw01/dataset/allGlaxoOrderDetail.CSV' INTO TABLE OrderDetail FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';

CREATE TABLE OrderHistory(
OrderCode CHAR(10),
OrderActionType CHAR(1),
MarketOrderCode CHAR(10),
TradeSize DECIMAL(8),
TradeCode CHAR(10),
TICode CHAR(12),
CurrencyCode CHAR(3),
CountryOfRegister CHAR(2),
MarketSegmentCode CHAR(4),
AggregateSize DECIMAL(12),
BuySellnd CHAR(1),
MarketMechanismType CHAR(2),
MessageSequenceNumber Integer(10),
Date DATE,
Time TIME
)
LOAD DATA LOCAL INFILE '/Users/andrewyang/Desktop/workspace/high_frequency/high-frequency-finance/cw01/dataset/allGlaxoOrderHistory.CSV' INTO TABLE OrderHistory
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

CREATE TABLE TradeReport(
MessageSequenceNumber Integer(10),
TICode CHAR(12),
MarketSegmentCode CHAR(4),
CountryOfRegister CHAR(2),
CurrencyCode CHAR(3),
TradeCode CHAR(10),
TradePrice DECIMAL(18,8),
TradeSize DECIMAL(12),
TradeDate DATE,
TradeTime TIME,
BroadcastUpdateAction CHAR(1),
TradeTypeInd CHAR(2),
TradeTimeInd CHAR(1),
BargainConditions CHAR(1),
COnvertedPriceInd CHAR(1),
PublicationDate DATE,
PublicationTime TIME
)
LOAD DATA LOCAL INFILE '/Users/andrewyang/Desktop/workspace/high_frequency/high-frequency-finance/cw01/dataset/allGlaxoTradeReport.CSV' INTO TABLE TradeReport
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
