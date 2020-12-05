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
    AMINO_ACIDS.fetch(codon) { raise InvalidCodonError }
  end

  def self.of_rna(strand)
    codons = strand.scan(/.{3}/)
    proteins = codons.map { |codon| of_codon(codon) }
    proteins[0...proteins.index('STOP')]
  end
end

class InvalidCodonError < StandardError; end
