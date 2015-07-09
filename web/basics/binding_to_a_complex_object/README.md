# Binding to a Complex Object

Ports https://github.com/PolymerLabs/polymer-snippets/blob/bcd7951a63bb178e8752da2939a37dc955c42b1a/snippets/basics/binding-to-a-complex-object.html

Shows data binding to a complex property.
Use an element property in a template using **double mustaches** (`{{}}`), and
use the **dot** operator ('.') to access child properties:

    <template>
      <div>{{person.name.first}} {{person.name.last}}.
        ...
      </div>
    </template>
