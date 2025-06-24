This class is a collection to store history of the usage of StPulse.

It stores the entries in a OrderedCollection and makes it circular. Every time it is pulled, if either the entry or the content of the entry is nil, it is removed from the list.

WeakOrderedCollection is not used due that the item that is used is not the original entry, and as such it doesn't have any other reference to it (It is also done this way to evade making hard references to entries)