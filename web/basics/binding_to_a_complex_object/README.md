# Binding to a Complex Object

Shows data binding to a complex property.
Use an element property in a template using **double mustaches** (`{{}}`), and
use the **dot** operator ('.') to access child properties:

    <template>
      <div>{{person.name.first}} {{person.name.last}}.
        ...
      </div>
    </template>
