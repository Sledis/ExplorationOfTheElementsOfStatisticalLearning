function SetupRNG(seed)
%SETUPRNG Basic function for setting up randomness.
arguments
    seed {mustBeInteger} = 1
end
s = RandStream("threefry",'Seed',seed);
RandStream.setGlobalStream(s);
end

