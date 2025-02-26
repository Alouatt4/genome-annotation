#!/bin/bash

# Lista de arquivos seq-fer
sequencias=(
    "fv_seq_vasa.fasta"
    "fv_seq_tudor.fasta"
    "fv_seq_tj.fasta"
    "fv_seq_lncov1.fasta"
    "fv_seq_egfr.fasta"
    "fv_seq_dpp.fasta"
    "fv_seq_ark.fasta"
)

# Loop para cada seq
for seq in "${sequencias[@]}"; do
    # Extrai nome base
    nome_base=$(basename "$seq" .fasta)
    
    outfile="result-0-${nome_base}"
    
    blastn -db db-SBIP/Scaptotrigona.bipunctata.LIB.2023.fa -query "$seq" -outfmt 0 -out "$outfile"
    
    echo "Processado: $seq -> $outfile"
done

echo "Todos os arquivos foram processados!"
