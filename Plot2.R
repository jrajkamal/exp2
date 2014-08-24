NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Subset data and append two years in one data frame
MD <- subset(NEI, fips=='24510')

# total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 

png(filename='plot2.png')

barplot(tapply(X=MD$Emissions, INDEX=MD$year, FUN=sum), 
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))

dev.off()