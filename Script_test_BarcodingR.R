#clearing everyhting off of workspace
rm(list=ls())

#setting a working directory 
setwd("~/Dropbox/Research/Beetle_Mites")

#loading BarcodingR package
library(BarcodingR)

#import FASTA file with sequence alignment 
x<-read.FASTA("Mite_contigs_only_MUSCLE.fasta")

#turn data from FASTA file into a matrix
B<-as.matrix(x)

#Convert file into DNAbin
#Actually might not need to do this, already DNAbin?
#barcode1<-as.DNAbin(as.character(B[1:528,]))

#is.matrix(B)

#running bracoding gap function to get the barcoding gap
b.gap<-barcoding.gap(ref=B,dist="RAW")


#import FASTA file with sequence alignment 
y<-read.FASTA("Beetle_alignment_MAAFT.fasta")
C<-as.matrix(y)

#trying the species ID function by using my own data as the reference
Ref<-C
#out<-sample.ref(ref=C, sample.porp = 0.85, sample.level="specie")
que<-B
#ref2<-out$ref.selected
#que<-out$ref.left
bsi<-barcoding.spe.identify(Ref, que, method= "bpNewTrainingOnly")
  
