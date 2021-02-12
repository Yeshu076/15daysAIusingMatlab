load fisheriris

Features=meas;
Class=species

Classifier=fitcknn(Features,Class);

save Classifier Classifier;

