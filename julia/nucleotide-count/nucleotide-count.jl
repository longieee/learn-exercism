"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    occurence = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for n in strand
        haskey(occurence, n) || throw(DomainError(strand, "Invalid nucleotide encountered!"))
        occurence[n] += 1
    end
    return occurence
end
