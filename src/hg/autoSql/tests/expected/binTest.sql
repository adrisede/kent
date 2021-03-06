# binTest.sql was originally generated by the autoSql program, which also 
# generated binTest.c and binTest.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#A table with non-genomic data
CREATE TABLE nonGenomic (
    key int unsigned not null,	# Private key
    name varchar(255) not null,	# A name in any format
    address longblob not null,	# Address in free format
              #Indices
    PRIMARY KEY(key)
);

#A table that already has chrom and bin
CREATE TABLE alreadyBinned (
    bin int unsigned not null,	# Browser speedup thing
    chrom varchar(255) not null,	# CHromosome
    start int not null,	# Start 0-based
    end int not null,	# End - non-inclusive
    name varchar(255) not null,	# What we are normally called
    id int unsigned not null,	# What they use to look us up in database
              #Indices
    INDEX (chrom,bin)
);

#A table that already chrom but needs bin
CREATE TABLE needBin (
    bin int unsigned not null,	# Bin number for browser speedup
    chrom varchar(255) not null,	# Chromosome
    start int not null,	# Start 0-based
    end int not null,	# End - non-inclusive
    name varchar(255) not null,	# What we are normally called
    id int unsigned not null,	# What they use to look us up in database
              #Indices
    INDEX (chrom,bin)
);
