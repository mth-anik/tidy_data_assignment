library(dplyr)

# reading the files
xtest<-read.table('./UCI HAR Dataset/test/X_test.txt')
ytest<-read.table('./UCI HAR Dataset/test/y_test.txt')
xtrain<-read.table('./UCI HAR Dataset/train/X_train.txt')
ytrain<-read.table('./UCI HAR Dataset/train/y_train.txt')
feature.name<-read.table('./UCI HAR Dataset/features.txt')

# combining the datasets and naming the columns
xcomb<-rbind(xtest,xtrain)
ycomb<-rbind(ytest,ytrain)
colnames(xcomb)<-feature.name$V2
colnames(ycomb)<-'Activity Names'

#extracting mean() and std() columns
col_ind<-grep('mean()|std()',colnames(xcomb))
x_extracted<-xcomb[,col_ind]

#assigning descriptive activity names
for (i in 1:10299){
   if (ycomb[i,1]=='1') ycomb[i,1]<-'WALKING'
   else if (ycomb[i,1]=='2') ycomb[i,1]<-'WALKING_UPSTAIRS'
   else if (ycomb[i,1]=='3') ycomb[i,1]<-'WALKING_DOWNSTAIRS'
   else if (ycomb[i,1]=='4') ycomb[i,1]<-'SITTING'
   else if (ycomb[i,1]=='5') ycomb[i,1]<-'STANDING'
   else if (ycomb[i,1]=='6') ycomb[i,1]<-'LAYING'
}

#creating tidy data set
tidy_data<-cbind(ycomb,x_extracted)

#creating second data set
tidy_data_tbl<-tbl_df(tidy_data)
grp_data<-group_by(tidy_data_tbl,`Activity Names`)
final_data<-summarise_all(grp_data,mean)
write.table(final_data,'./summary_data.txt')