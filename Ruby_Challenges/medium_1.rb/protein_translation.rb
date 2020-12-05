# Protein Translation
class Translation
  AMINO_ACIDS = {
    'AUG' => 'Methionine',
    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine',
    'UUA' => 'Leucine',
    'UUG' => 'Leucine',
    'UCU' => 'Serine',
    'UCC' => 'Serine',
    'UCA' => 'Serine',
    'UCG' => 'Serine',
    'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',
    'UGU' => 'Cysteine',
    'UGC' => 'Cysteine',
    'UGG' => 'Tryptophan',
    'UAA' => 'STOP',
    'UAG' => 'STOP',
    'UGA' => 'STOP'
  }

  def self.of_codon(codon)
    AMINO_ACIDS[codon]
  end

  def self.of_rna(strand)
    codons = []
    first = 0
    second = 2
    until codons.length == (strand.length / 3)
      codons << strand[first..second]
      first += 3
      second += 3
    end

    amino_acids = []
    codons.each do |codon|
      raise InvalidCodonError.new if of_codon(codon) == nil
      break if of_codon(codon) == 'STOP'
      amino_acids << of_codon(codon)
    end
    amino_acids
  end
end

class InvalidCodonError < StandardError
end
