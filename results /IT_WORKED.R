


library("PraatR")

FullPath = function(FileName){ return( paste( "/Users/readerlindsey/Desktop/Tutorial/Feb24_2017/", FileName, sep="") ) }


### THIS IS HOW TO DO THE CHANNEL EXTRACTION ### 


### this is putting them in a separate folder ## 

foldername<-("/Users/readerlindsey/Desktop/Tutorial/Feb24_2017/")
outputfolder<-("/Users/readerlindsey/Desktop/channels/")
channel_list<-list.dirs(path="/Users/readerlindsey/Desktop/channels/")


filelist<-list.files(path=foldername, pattern="*.WAV")

for (z in 1:length(filelist))
{
  Files<-filelist[z]
  
  for (i in 1:7) {
    praat( "Extract one channel...", arguments=list(i), input=paste(foldername,Files, sep = "") , output=paste(channel_list[i],Files,sep=""))
  }
}