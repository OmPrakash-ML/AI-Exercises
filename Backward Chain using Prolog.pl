% Facts
is_a(dog, mammal).
is_a(mammal, animal).
is_a(cat, mammal).

% Rules
is_a(X, animal) :- is_a(X, mammal).
is_a(X, mammal) :- is_a(X, dog).

% Backward chaining 
backward_chain(Goal) :-
    (is_a(dog, mammal), Goal = is_a(dog, mammal));
    (is_a(mammal, animal), Goal = is_a(mammal, animal));
    (is_a(cat, mammal), Goal = is_a(cat, mammal));
    (Goal = is_a(X, animal), backward_chain(is_a(X, mammal)));
    (Goal = is_a(X, mammal), backward_chain(is_a(X, dog))).









