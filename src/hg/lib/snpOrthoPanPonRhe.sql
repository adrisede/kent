# snpOrthoPanPonRhe.sql was originally generated by the autoSql program, which also 
# generated snpOrthoPanPonRhe.c and snpOrthoPanPonRhe.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Orthologous alleles in chimp, orangutan and rhesus macaque
CREATE TABLE snpOrthoPanRhePon (
    bin smallint not null,              # Bin number for browser speedup
    chrom varchar(255) not null,	# Chromosome
    chromStart int unsigned not null,	# Start position in chrom
    chromEnd int unsigned not null,	# End position in chrom
    name varchar(255) not null,	# Reference SNP identifier from dbSnp
    humanObserved varchar(255) not null,	# Observed alleles in human SNP
    humanAllele char(1) not null,	# Reference allele for human SNP
    humanStrand char(1) not null,	# Strand of human SNP annotation
    chimpChrom varchar(255) not null,	# Chimp chromosome to which the human SNP is mapped
    chimpStart int unsigned not null,	# Start position on chimpChrom
    chimpEnd int unsigned not null,	# End position on chimpChrom
    chimpAllele char(1) not null,	# Reference allele for chimp SNP
    chimpStrand char(1) not null,	# Strand of chimp SNP annotation
    orangChrom varchar(255) not null,	# Orang chromosome to which the human SNP is mapped
    orangStart int unsigned not null,	# Start position on orangChrom
    orangEnd int unsigned not null,	# End position on orangChrom
    orangAllele char(1) not null,	# Reference allele for orang SNP
    orangStrand char(1) not null,	# Strand of orang SNP annotation
    macaqueChrom varchar(255) not null,	# Macaque chromosome to which the human SNP is mapped
    macaqueStart int unsigned not null,	# Start position on macaqueChrom
    macaqueEnd int unsigned not null,	# End position on macaqueChrom
    macaqueAllele char(1) not null,	# Reference allele for macaque SNP
    macaqueStrand char(1) not null,	# Strand of macaque SNP annotation
              #Indices
    INDEX chrom (chrom,bin),
    INDEX name  (name)
);
