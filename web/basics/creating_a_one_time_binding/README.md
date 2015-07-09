# Creating a One Time Binding

Ports https://github.com/PolymerLabs/polymer-snippets/blob/f5651613ea5db9c2e50a2f4df8f27c64c07755db/snippets/basics/creating-a-one-time-binding.html

Shows simple use of **one-time data binding** in a Polymer element.
**Note: This feature is experimental**
Use **double square brackets** (`[[ ]]`) instead of double mustaches (`{{ }}`)
to set up a one-time binding. The binding becomes inactive after Polymer sets
the inital value for the bound property.
A one-time binding can potentially boost performance because you avoid the
overhead of setting up property observation.
Read the
[official documentation for one-time bindings](http://www.polymer-project.org/docs/polymer/binding-types.html#one-time-bindings).
