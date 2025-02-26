#!/bin/bash

sequences=(
	"mqua-yellow-e_yellow-g_yellow-g2.fasta"
	"mqua-mrjp-like_yellow-e3_yellow-h.fasta"
	)

for seq in "${sequences[@]}";
	do
	nome_base = $(basename "$seq" .fasta)
	outfile = "result-0-${nome_base}"
	
	blastn -db ../db/Scaptotrigona.bipunctata.LIB.2023.fa -query "$seq" -outfmt 0 -out "$outfile"
	echo "Processing file: $seq -> $outfile"
done

echo "All files have been processed!"

#end
