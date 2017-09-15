


library("PraatR")

FullPath = function(FileName){ return( paste( "/Users/readerlindsey/Desktop/Tutorial/Feb24_2017/", FileName, sep="") ) }


### THIS IS HOW TO DO THE CHANNEL EXTRACTION ### 


### this is putting them in a separate folder ## 

foldername<-("/Users/readerlindsey/Desktop/Tutorial/Feb24_2017")
channel_list<-list.dirs(path="/Users/readerlindsey/Desktop/channels", recursive = FALSE)


filelist<-list.files(path=foldername, pattern="*.WAV")

for (z in 1:length(filelist))
{
  Files<-filelist[z]
  
  for (i in 1:7) {
    praat( "Extract one channel...", arguments=list(i), input=paste(foldername,"/",Files, sep = "") , output=paste(channel_list[i],"/",Files,sep=""))
  }
}


### This worked. Now repeat with the force-only data. (You just replaced the data in the source folders ) ###


#### Now try something similar with the filtering commands in Praat ###
### You need to get stuff out of subfolders, so try the directory approach initially ###
### The line below should let you cycle through the muscle-only and force-only folders ###

separated_channels <-list.dirs(path="/Users/readerlindsey/Desktop/WOODPECKER_DATA/Solitude_EMG_computer/muscle_channels", recursive = FALSE)

filtered_files <-("/Users/readerlindsey/Desktop/filtered") ## this is going to be your output folder ##

need_to_filter<-list.files(path=separated_channels, pattern="*.WAV") 

### Here is the syntax from PraatR, numbers will differ for force and muscle channels: praat("Filter (pass Hann band)...", arguments=list(500, 1000, 100) ###	
