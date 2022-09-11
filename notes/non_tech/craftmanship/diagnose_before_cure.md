# Diagnose before cure

When solving problems in a software system, make sure you're attacking them from the right angle. This is true in general, but particularly so for problems meeting your non-functional requirements, like throughput and scalability. Bottlenecks in your performance characteristics may not be where you think they are. Your hands may be itching to tune that one really complicated database operation, but if your most pressing problem is synchronization for a System.out.println call that was accidentally left in, than tuning that query may be an utter waste of time.

Ref: https://essentials.xebia.com/diagnose-before-cure/