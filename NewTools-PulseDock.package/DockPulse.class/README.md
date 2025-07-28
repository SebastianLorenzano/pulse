When exploring the system, is useful to have a single entry point that will allow users to search for different component of the system.
Spotter provides such entry point and is usually available by pressing <meta+enter>.

Pulse is a remake of Spotter, a front-end to show the result of different processors that provide results. Those processors can be configured in different ways and will provide different access options.

The idea is to divide the old Spotter in 3 tabs:
•  Environment for classes, methods, packages
•  Windows for every open window in the image
•  Tools for menu items

Some known processors and options are (You can see most of the information needed in the help icon when you open the tool):

Classes processor:
•	Type #classes in the search bar
•	Press <meta+b>
Implementors processor:
•	Type #implementors in the search bar
•	Press <meta+m>

---

Right now Pulse pulls the first 25 results it gets, getting the first 3 via events so the user doesn't have to wait for the full search to be over to find the first results, which speeds the user experience.

Any time you open either a class, a method or a package (anything that is in the environment tab) it is stored as a HistoryEntry version of itself, which stores either its contents serialized to a string or in the case of the package it stores the package name and when its pulled it makes the search. This was done to evade hard references, and every HistoryEntry are stored in a memory circular logger that cleans itself from any nil entry or any entry with a nil content.

The UI works with a single lists whose context is defined by the page of the paginator that is opened at the moment: When you either change tabs or write, it sends a search (there is a service running every 50 milliseconds which is the one in charge of behaving differently depending on what part of the search is or even if it is or not searching at the moment, StPulse >> processSearch has all the logic and is the method called by the service's step) and there is an outside of service search done when changing tabs.

