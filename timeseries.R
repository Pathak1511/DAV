# linear time series
rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rainfall.timeseries<-ts(rainfall,start=c(2012,12),frequency = 12)
print(rainfall.timeseries)
png(file="rain.png")
plot(rainfall.timeseries)
dev.off()

# multiple time series
rainfall2<-c(655,1306.9,1323.4,1172.2,562.2,824,822.4,1265.5,799.6,1105.6,1106.7,1337.8)
combined.rainfall <- matrix(c(rainfall,rainfall2),nrow=12)
print(combined.rainfall)
rainfall2.timeseries<- ts(combined.rainfall,start=c(2012,1),frequency = 12)
plot(rainfall2.timeseries)
print(rainfall2.timeseries)
