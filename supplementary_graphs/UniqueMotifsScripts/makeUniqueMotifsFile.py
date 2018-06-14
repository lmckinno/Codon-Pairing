#! /usr/bin/env python
import sys
import math

inFile = open(sys.argv[1],"r")
outFile = open(sys.argv[2],"w")

motifToSpecies = {}
header = inFile.readline()

for line in inFile:
	fields = line.split("\t")
	if len(fields) != 3:
                continue
	species = fields[0]
	motif = fields[1].replace("(","").replace(")","").replace("'","").replace(",","").split()
	motif = str(motif)	
	if motif in motifToSpecies:
		motifToSpecies[motif].append(species)
	else:
		myList = []
		myList.append(species)
		motifToSpecies[motif] = myList 

outFile.write('"motifs"\n')
uniqueMotifs = 0
repeatedMotifs = 0
for entry in motifToSpecies:
	if len(motifToSpecies[entry]) > 1:
		repeatedMotifs += 1
	else:
		uniqueMotifs += 1

outFile.write("Unique Motifs: "+ str(uniqueMotifs) + "\n")
outFile.write("Repeated Motifs: " + str(repeatedMotifs) + "\n")
		
