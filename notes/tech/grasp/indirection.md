# Indirection

The indirection pattern supports low coupling and reuses potential between two elements by assigning the responsibility of mediation between them to an intermediate object. An example of this is the introduction of a controller component for mediation between data (model) and its representation (view) in the model-view-controller pattern. This ensures that coupling between them remains low.

Problem: Where to assign responsibility, to avoid direct coupling between two (or more) things? How to de-couple objects so that low coupling is supported and reuse potential remains higher?
Solution: Assign the responsibility to an intermediate object to mediate between other components or services so that they are not directly coupled.
The intermediary creates an indirection between the other components.

Ref: https://en.wikipedia.org/wiki/GRASP_(object-oriented_design)#Indirection
